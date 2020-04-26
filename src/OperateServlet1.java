import java.util.*;
import java.sql.*;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import ecart.Helper;
import ecart.Product;

@WebServlet("/OperateServlet1")
public class OperateServlet1 extends HttpServlet 
{

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		Helper hp=new Helper();
		HttpSession session=request.getSession();
		String ch=request.getParameter("operate");
		String name,msg,price,image,search,check,specifications,dcategory, brand, category, quantity, type, display, details;
		List<Product> list;
		RequestDispatcher rd;
		
		try
		{
			switch(ch)
			{
			case "Search":
				search=request.getParameter("search");
				list=hp.search(search);
				request.setAttribute("list", list);
				rd=request.getRequestDispatcher("search.jsp?search="+search);
				rd.include(request, response);
			break;
			
			case "ShowProduct":
				name=request.getParameter("name");
				list=hp.showProduct(name);
				request.setAttribute("list", list);
				rd=request.getRequestDispatcher("showproduct.jsp?name="+name);
				rd.include(request, response);
			break;
			
			case "display":
				//session.setAttribute("sort", hp.sort());
				dcategory=request.getParameter("category");
				list=hp.display(dcategory);
				request.setAttribute("list", list);
				rd=request.getRequestDispatcher("mobile.jsp");
				rd.include(request, response);
			break;
			
			case "AddProduct":
				name=request.getParameter("name");
				price=request.getParameter("price");
				brand=request.getParameter("brand");
				category=request.getParameter("category");
				quantity=request.getParameter("quantity");
				image=request.getParameter("image");
				type=request.getParameter("type");
				display=request.getParameter("display");
				details=request.getParameter("details");
				specifications=request.getParameter("specifications");
				msg=hp.addProduct(name, price, brand, category, Double.parseDouble(quantity), image, type, display, details, specifications);
				response.sendRedirect("Showpro.jsp?&msg="+msg);
			break;
			
			case "Delete":
				name=request.getParameter("name");
				msg=hp.delete(name);
				response.sendRedirect("Showpro.jsp?&msg="+msg);
			break;
			
			case "SignUp":
				String id=request.getParameter("id");
				String password=request.getParameter("pass");
				msg=hp.signup(id, password);
				response.sendRedirect("first.jsp?&msg="+msg);
			break;
			
			case "AddToDisplay":
				name=request.getParameter("name");
				msg=hp.addToDisplay(name);
				response.sendRedirect("Showpro.jsp?&msg="+msg);
			break;
			
			case "RemoveFromDisplay":
				name=request.getParameter("name");
				msg=hp.removeFromDisplay(name);
				response.sendRedirect("Showpro.jsp?&msg="+msg);
			break;
			
			case "Admin":
				list=hp.admin();
				request.setAttribute("list", list);
				rd=request.getRequestDispatcher("Showpro.jsp");
				rd.include(request, response);
			break;
			
			case "Update":
				name=request.getParameter("name");
				list=hp.Update(name);
				request.setAttribute("list", list);
				rd=request.getRequestDispatcher("Updatepro.jsp");
				rd.include(request, response);
			break;
			
			case "UpdateProcuct":
				name=request.getParameter("name");
				price=request.getParameter("price");
				brand=request.getParameter("brand");
				category=request.getParameter("category");
				quantity=request.getParameter("quantity");
				image=request.getParameter("image");
				type=request.getParameter("type");
				display=request.getParameter("display");
				details=request.getParameter("details");
				specifications=request.getParameter("specifications");
				msg=hp.UpdateProduct(name, price, brand, category, Double.parseDouble(quantity), image, type, display, details, specifications);
				response.sendRedirect("OperateServlet1?operate=Admin&msg="+msg);
			break;
			}
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}

}
