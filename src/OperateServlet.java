import java.sql.*;
import java.util.List;
import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ecart.Helper;
import ecart.Product;
import ecart.User;

@WebServlet("/OperateServlet")
public class OperateServlet extends HttpServlet
{
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out=response.getWriter();
		Helper hp=new Helper();
		String ch=request.getParameter("operate");
		HttpSession session=request.getSession();
		String id=null;
		id=(String)session.getAttribute("id");
		String name,msg,price,image,search=null,check,specifications, contact, password;
		List<User> user;
		List<Product> list;
		RequestDispatcher rd;
		
		try
		{
			switch(ch)
			{
			case "AddToCart":
				name=request.getParameter("name");
				price=request.getParameter("price");
				image=request.getParameter("image");
					check=hp.cartCheck(id, name,price,image);
					if(check==null)
					{
						msg=hp.addToCart(id,name,price,image);
						response.sendRedirect("OperateServlet?name="+name+"&msg="+msg+"&operate=UshowProduct");
					}
					else
					{
						msg=check;
						response.sendRedirect("OperateServlet?name="+name+"&msg="+msg+"&operate=UshowProduct");
					}
			break;
			
			case "RemoveFromCart":
				name=request.getParameter("name");
				msg=hp.removeFromCart(id, name);
				response.sendRedirect("OperateServlet?msg="+msg+"&operate=Cart");
			break;
			
			case "RemoveFromWishlist":
				name=request.getParameter("name");
				msg=hp.removeFromWishlist(id, name);
				response.sendRedirect("OperateServlet?msg="+msg+"&operate=Wishlist");
			break;
			
			case "AddToWishlist":
				name=request.getParameter("name");
				price=request.getParameter("price");
				image=request.getParameter("image");
				search=request.getParameter("search");
				check=hp.wishlistCheck(id, name);
				if(check==null)
				{
					msg=hp.addToWishlist(id, name, price, image);
					if(search==null)
						response.sendRedirect("OperateServlet?name="+name+"&msg="+msg+"&operate=UshowProduct");
					else
						response.sendRedirect("OperateServlet?search="+search+"&msg="+msg+"&operate=Usearch");
				}
				else
				{
					msg=check;
					if(search==null)
						response.sendRedirect("OperateServlet?name="+name+"&msg="+msg+"&operate=UshowProduct");
					else
						response.sendRedirect("OperateServlet?search="+search+"&msg="+msg+"&operate=Usearch");
				}
			break;
			
			case "AddToCompare":
				name=request.getParameter("name");
				price=request.getParameter("price");
				image=request.getParameter("image");
				search=request.getParameter("search");
				specifications=request.getParameter("specifications");
				check=hp.compareCheck(id, name, price, image, specifications);
				if(check==null)
				{
					msg=hp.addToCompare(id, name, price, image, specifications);
					if(search==null)
						response.sendRedirect("OperateServlet?name="+name+"&msg="+msg+"operate=UshowProduct");
					else
						response.sendRedirect("OperateServlet?search="+search+"&msg="+msg+"&operate=Usearch");
				}
				else
				{
					msg=check;
					if(search==null)
						response.sendRedirect("OperateServlet?name="+name+"&msg="+msg+"operate=UshowProduct");
					else
						response.sendRedirect("OperateServlet?search="+search+"&msg="+msg+"&operate=Usearch");
				}
			break;
			
			case "Usearch":
				search=request.getParameter("search");
				list=hp.search(search);
				request.setAttribute("list", list);
				rd=request.getRequestDispatcher("usearch.jsp?search="+search);
				rd.include(request, response);
			break;
			
			case "UshowProduct":
				name=request.getParameter("name");
				list=hp.showProduct(name);
				request.setAttribute("list", list);
				rd=request.getRequestDispatcher("ushowproduct.jsp?name="+name);
				rd.include(request, response);
			break;
			
			case "Cart":
				double delivery=0.0;
				list=hp.cart(id);
				double famount=0.0;
				double amount=hp.getAmountFromCart(id);
				famount=amount;
				if(amount<15000&&amount!=0)
				{
					delivery=100;
					famount=amount+delivery;
				}
				int i=hp.getElementsOfCart(id);
				request.setAttribute("list", list);
				rd=request.getRequestDispatcher("cart.jsp?i="+i+"&amount="+amount+"&delivery="+delivery+"&famount="+famount);
				rd.include(request, response);
			break;
			
			case "Wishlist":
				list=hp.Wishlist(id);
				request.setAttribute("list", list);
				rd=request.getRequestDispatcher("wishlist.jsp");
				rd.include(request, response);
			break;
			
			case "Uprofile":
				user=hp.uprofile(id);
				request.setAttribute("list", user);
				rd=request.getRequestDispatcher("uprofile.jsp");
				rd.include(request, response);
			break;
			
			case "EditDetails":
				user=hp.uprofile(id);
				request.setAttribute("list", user);
				rd=request.getRequestDispatcher("edetails1.jsp");
				rd.include(request, response);
			break;
			
			case "UpdateDetails":
				String fname=request.getParameter("fname");
				String lname=request.getParameter("lname");
				String gender=request.getParameter("gender");
				String email=request.getParameter("email");
				contact=request.getParameter("contact");
				msg=hp.updateDetails(id, fname, lname, gender, email, contact);
				response.sendRedirect("OperateServlet?operate=Uprofile&msg="+msg);
			break;
			
			case "Address":
				user=hp.address(id);
				request.setAttribute("list", user);
				rd=request.getRequestDispatcher("address.jsp");
				rd.include(request, response);
			break;
			
			case "UpdateAddress":
				String pincode=request.getParameter("pincode");
				String locality=request.getParameter("locality");
				String address=request.getParameter("address");
				String city=request.getParameter("city");
				String state=request.getParameter("state");
				String landmark=request.getParameter("landmark");
				String alternatecontact=request.getParameter("alternatecontact");
				String addresstype=request.getParameter("addresstype");
				msg=hp.updateAddress(id, pincode, locality, address, city, state, landmark, alternatecontact, addresstype);
				response.sendRedirect("OperateServlet?operate=Address&msg="+msg);
			break;
			
			case "Contact":
				user=hp.contact(id);
				request.setAttribute("list", user);
				rd=request.getRequestDispatcher("changecontact.jsp");
				rd.include(request, response);
			break;
			
			case "UpdateContact":
				contact=request.getParameter("contact");
				msg=hp.updateContact(id, contact);
				response.sendRedirect("OperateServlet?operate=Contact&msg="+msg);
			break;
			
			case "ChangePassword":
				password=request.getParameter("password");
				String newPassword=request.getParameter("newpassword");
				check=hp.checkPassword(id, password);
				if(check==null)
				{
					msg=hp.updatePassword(id, newPassword);
					response.sendRedirect("changepassword.jsp?msg="+msg);
				}
				else
				{
					msg=check;
					response.sendRedirect("changepassword.jsp?msg="+msg);
				}
			break;
			
			case "EditAddress":
				user=hp.editAddress(id);
				request.setAttribute("list", user);
				rd=request.getRequestDispatcher("editaddress1.jsp");
				rd.include(request, response);
			break;
			
			case "Logout":
				session.invalidate();
				response.sendRedirect("first.jsp");
			break;
			}
		}
		catch (Exception e) 
		{
			out.println(e);
		}
	}
}