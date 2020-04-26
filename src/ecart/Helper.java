package ecart;

import java.io.*;
import java.util.*;

import com.google.gson.JsonArray;

import java.sql.*;

public class Helper 
{
	Connection con;
	public Connection getCon() throws ClassNotFoundException,SQLException
	{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecart", "root", "123456");
		return con;
	}
	
	public String cartCheck(String id,String name,String price,String image) throws ClassNotFoundException, SQLException
	{
		String msg="Product Already Added to Cart..!!";
		con=getCon();
		String qr="select * from cart where id=? and name=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1, id);
		ps.setString(2, name);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			con.close();
			return msg;
		}
		else
		{	
			con.close();
			return null;
		}
	}
	
	public String addToCart(String id,String name,String price,String image) throws ClassNotFoundException, SQLException
	{
		String msg="Product Added to Cart..!!";
		con=getCon();
		String qr="insert into cart(id,name,price,image) values(?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1,id);
		ps.setString(2,name);
		ps.setString(3,price);
		ps.setString(4,image);
		ps.executeUpdate();
		con.close();
		return msg;
	}
	
	public String removeFromCart(String id,String name) throws ClassNotFoundException, SQLException
	{
		String msg="Product Removed From Cart..!!";
		con=getCon();
		String qr="delete from cart where name=? and id=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1,name);
		ps.setString(2,id);
		ps.executeUpdate();
		con.close();
		return msg;
	}
	
	public String removeFromWishlist(String id, String name) throws ClassNotFoundException, SQLException
	{
		String msg="Product Removed From Wishlist..!!";
		con=getCon();
		String qr="delete from wishlist where name=? and id=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1,name);
		ps.setString(2,id);
		ps.executeUpdate();
		con.close();
		return msg;
	}
	
	public String wishlistCheck(String id, String name) throws ClassNotFoundException, SQLException
	{
		con=getCon();
		String msg="Product Already Added to Wishlist..!!";
		String qr="select * from wishlist where id=? and name=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1,id);
		ps.setString(2,name);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			con.close();
			return msg;
		}
		else
		{	
			con.close();
			return null;
		}
	}
	
	public String addToWishlist(String id, String name, String price, String image) throws ClassNotFoundException, SQLException
	{
		con=getCon();
		String msg="Product Added to Wishlist..!!";
		String qr="insert into wishlist(id,name,price,image) values(?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1,id);
		ps.setString(2,name);
		ps.setString(3,price);
		ps.setString(4,image);
		ps.executeUpdate();
		con.close();
		return msg;
	}
	
	public String compareCheck(String id, String name, String price, String image, String specifications) throws ClassNotFoundException, SQLException
	{
		con=getCon();
		String msg="Product Already Added to Compare..!!";
		String qr="select * from compare where id=? and name=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1,id);
		ps.setString(2,name);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			con.close();
			return msg;
		}
		else
		{	
			con.close();
			return null;
		}
	}
	
	public String addToCompare(String id, String name, String price, String image, String specifications) throws ClassNotFoundException, SQLException
	{
		con=getCon();
		String msg="Product Added to Compare..!!";
		String qr="insert into compare(id,name,price,image,specifications) values(?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1,id);
		ps.setString(2,name);
		ps.setString(3,price);
		ps.setString(4, image);
		ps.setString(5,specifications);
		ps.executeUpdate();
		con.close();
		return msg;
	}
	
	public List<Product> search(String search) throws ClassNotFoundException, SQLException
	{
		con=getCon();
		List<Product> list=new ArrayList<Product>();
		String qr="select * from product where name like ? or price like ? or brand like ? or category like ? or type like ? or specifications like ?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1, "%"+search+"%");
		ps.setString(2, "%"+search+"%");
		ps.setString(3, "%"+search+"%");
		ps.setString(4, "%"+search+"%");
		ps.setString(5, "%"+search+"%");
		ps.setString(6, "%"+search+"%");
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			do
			{
				Product p=new Product();
				p.setName(rs.getString("name"));
				p.setPrice(Double.parseDouble(rs.getString("price")));
				p.setBrand(rs.getString("brand"));
				p.setCategory(rs.getString("category"));
				p.setImage(rs.getString("image"));
				p.setSpecifications(rs.getString("specifications"));
				p.setDetails(rs.getString("details"));
				p.setQuantity(Double.parseDouble(rs.getString("quantity")));
				list.add(p);
			}while(rs.next());
		}
		con.close();
		return list;
	}
	
	public List<Product> showProduct(String name) throws ClassNotFoundException, SQLException
	{
		con=getCon();
		List<Product> list=new ArrayList<Product>();
		String qr="select * from product where name=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1, name);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			do
			{
				Product p=new Product();
				p.setName(rs.getString("name"));
				p.setPrice(Double.parseDouble(rs.getString("price")));
				p.setBrand(rs.getString("brand"));
				p.setCategory(rs.getString("category"));
				p.setImage(rs.getString("image"));
				p.setSpecifications(rs.getString("specifications"));
				p.setDetails(rs.getString("details"));
				p.setQuantity(Double.parseDouble(rs.getString("quantity")));
				list.add(p);
			}while(rs.next());
		}
		con.close();
		return list;
	}
	
	public List<Product> cart(String id) throws ClassNotFoundException, SQLException
	{
		Double amount=0.0,price;
		con=getCon();
		List<Product> list=new ArrayList<Product>();
		String qr="select * from cart where id=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1,id);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			do
			{
				Product p=new Product();
				p.setName(rs.getString("name"));
				p.setPrice(Double.parseDouble(rs.getString("price")));
				p.setImage(rs.getString("image"));
				p.setQuantity(Double.parseDouble(rs.getString("qty")));
				price=Double.parseDouble(rs.getString("price"));
				amount=amount=price;
				list.add(p);
			}while(rs.next());
		}
		con.close();
		return list;
	}
	
	public int getElementsOfCart(String id) throws ClassNotFoundException, SQLException
	{
		con=getCon();
		int i=0;
		String qr="select count(*) from cart where id=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1, id);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			do
			{
				i=rs.getInt(1);
			}while(rs.next());
		}
		con.close();
		return i;
	}
	
	public double getAmountFromCart(String id) throws ClassNotFoundException, SQLException
	{
		con=getCon();
		double amount=0;
		String qr="select price from cart where id=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1, id);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			do
			{
				String price=rs.getString("price");
				double p=Double.parseDouble(price);
				amount=amount+p;
			}while(rs.next());
		}
		con.close();
		return amount;
	}
	
	public List<Product> Wishlist(String id) throws ClassNotFoundException, SQLException
	{
		con=getCon();
		List<Product> list=new ArrayList<Product>();
		String qr="select * from wishlist where id=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1,id);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			do
			{
				Product p=new Product();
				p.setName(rs.getString("name"));
				p.setPrice(Double.parseDouble(rs.getString("price")));
				p.setImage(rs.getString("image"));
				list.add(p);
			}while(rs.next());
		}
		con.close();
		return list;
	}
	
	public List<User> uprofile(String id) throws ClassNotFoundException, SQLException
	{
		con=getCon();
		List<User> list=new ArrayList<User>();
		String qr="select * from user where id=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1, id);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			do
			{
				User u=new User();
				u.setFname(rs.getString("fname"));
				u.setLname(rs.getString("lname"));
				u.setGender(rs.getString("gender"));
				u.setEmail(rs.getString("email"));
				u.setContact(rs.getString("contact"));
				list.add(u);
			}while(rs.next());
		}
		con.close();
		return list;
	}
	
	public String updateDetails(String id, String fname, String lname, String gender, String email, String contact) throws ClassNotFoundException, SQLException
	{
		con=getCon();
		String msg="Details Updated Successfully..!!";
		String qr="update user set fname=?,lname=?,gender=?,email=?,contact=? where id=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1,fname);
		ps.setString(2,lname);
		ps.setString(3,gender);
		ps.setString(4,email);
		ps.setString(5,contact);
		ps.setString(6, id);
		ps.executeUpdate();
		con.close();
		return msg;
	}
	
	public List<User> address(String id) throws ClassNotFoundException, SQLException
	{
		con=getCon();
		List<User> list=new ArrayList<User>();
		String qr="select * from user where id=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1, id);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			do
			{
				User u=new User();
				u.setPincode(rs.getString("pincode"));
				u.setLocality(rs.getString("locality"));
				u.setAddress(rs.getString("address"));
				u.setCity(rs.getString("city"));
				u.setState(rs.getString("state"));
				u.setLandmark(rs.getString("landmark"));
				u.setAlternatecontact(rs.getString("alternatecontact"));
				u.setAddresstype(rs.getString("addresstype"));
				list.add(u);
			}while(rs.next());
		}
		con.close();
		return list;
	}
	
	public String updateAddress(String id, String pincode, String locality, String address, String city, String state, String landmark, String alternatecontact, String addresstype) throws ClassNotFoundException, SQLException
	{
		con=getCon();
		String msg="Address Updated Successfully..!!";
		String qr="update user set pincode=?,locality=?,address=?,city=?,state=?,landmark=?,alternatecontact=?,addresstype=? where id=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1,pincode);
		ps.setString(2,locality);
		ps.setString(3,address);
		ps.setString(4,city);
		ps.setString(5,state);
		ps.setString(6,landmark);
		ps.setString(7,alternatecontact);
		ps.setString(8,addresstype);
		ps.setString(9, id);
		ps.executeUpdate();
		con.close();
		return msg;
	}
	
	public List<User> contact(String id) throws ClassNotFoundException, SQLException
	{
		con=getCon();
		List<User> list=new ArrayList<User>();
		String qr="select * from user where id=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1, id);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			do
			{
				User u=new User();
				u.setContact(rs.getString("contact"));
				list.add(u);
			}while(rs.next());
		}
		con.close();
		return list;
	}
	
	public String updateContact(String id, String contact) throws ClassNotFoundException, SQLException
	{
		con=getCon();
		String msg="Contact Updated Successfully..!!";
		String qr="update user set contact=? where id=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1,contact);
		ps.setString(2, id);
		ps.executeUpdate();
		con.close();
		return msg;
	}
	
	public String updatePassword(String id, String newPassword) throws ClassNotFoundException, SQLException
	{
		con=getCon();
		String msg="Password Updated Successfully..!!";
		String qr="update user set password=? where id=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1, newPassword);
		ps.setString(2, id);
		ps.executeUpdate();
		con.close();
		return msg;
	}
	
	public String checkPassword(String id, String password) throws ClassNotFoundException, SQLException
	{
		String msg="Your Password is Incorrect..!!";
		con=getCon();
		String qr="select * from user where id=? and password=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1, id);
		ps.setString(2, password);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			con.close();
			return null;
		}
		else
		{
			con.close();
			return msg;
		}
	}
	
	public List<Product> display(String dcategory) throws ClassNotFoundException, SQLException
	{
		con=getCon();
		List<Product> list=new ArrayList<Product>();
		String display="display";
		String qr="select * from product where category=? and display=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1, dcategory);
		ps.setString(2, display);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			do
			{
				Product p=new Product();
				p.setName(rs.getString("name"));
				p.setPrice(Double.parseDouble(rs.getString("price")));
				p.setBrand(rs.getString("brand"));
				p.setCategory(rs.getString("category"));
				p.setQuantity(Double.parseDouble(rs.getString("quantity")));
				p.setImage(rs.getString("image"));
				list.add(p);
			}while(rs.next());
		}
		con.close();
		return list;
	}
	
	public List<User> editAddress(String id) throws ClassNotFoundException, SQLException
	{
		con=getCon();
		List<User> list=new ArrayList<User>();
		String qr="select * from user where id=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1, id);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			do
			{
				User u=new User();
				u.setPincode(rs.getString("pincode"));
				u.setLocality(rs.getString("locality"));
				u.setAddress(rs.getString("address"));
				u.setCity(rs.getString("city"));
				u.setState(rs.getString("state"));
				u.setLandmark(rs.getString("landmark"));
				u.setAlternatecontact(rs.getString("alternatecontact"));
				u.setAddresstype(rs.getString("addresstype"));
				list.add(u);
			}while(rs.next());
		}
		con.close();
		return list;
	}
	
	public String addProduct(String name, String price, String brand, String category,double quantity, String image, String type, String display, String details, String specifications ) throws ClassNotFoundException, SQLException
	{
		con=getCon();
		String msg="Product Added Successfully..!!";
		String qr="insert into product(name,price,brand,category,quantity,image,type,display,details,specifications) values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1,name);
		ps.setString(2,price);
		ps.setString(3,brand);
		ps.setString(4,category);
		ps.setDouble(5,quantity);
		ps.setString(6,image);
		ps.setString(7,type);
		ps.setString(8,display);
		ps.setString(9,details);
		ps.setString(10,specifications);
		ps.executeUpdate();
		con.close();
		return msg;
	}
	
	public String delete(String name) throws ClassNotFoundException, SQLException
	{
		con=getCon();
		String msg="Product Deleted Successfully..!!";
		String qr="delete from product where name=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1, name);
		ps.executeUpdate();
		con.close();
		return msg;
	}
	
	public String signup(String id, String password) throws ClassNotFoundException, SQLException
	{
		con=getCon();
		String msg="SignUp Successful..!!";
		String qr="insert into user(id,password) values(?,?)";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1, id);
		ps.setString(2, password);
		ps.executeUpdate();
		con.close();
		return msg;
	}
	
	public String addToDisplay(String name) throws ClassNotFoundException, SQLException
	{
		con=getCon();
		String msg="Product Added To Display..!!";
		String display="display";
		String qr="update product set display=? where name=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1, display);
		ps.setString(2,name);
		ps.executeUpdate();
		con.close();
		return msg;
	}
	
	public String removeFromDisplay(String name) throws ClassNotFoundException, SQLException
	{
		con=getCon();
		String msg="Product Removed From Display..!!";
		String display="hide";
		String qr="update product set display=? where name=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1, display);
		ps.setString(2,name);
		ps.executeUpdate();
		con.close();
		return msg;
	}
	
	public List<Product> admin() throws ClassNotFoundException, SQLException
	{
		con=getCon();
		List<Product> list=new ArrayList<Product>();
		String qr="select * from product";
		PreparedStatement ps=con.prepareStatement(qr);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			do
			{
				Product p=new Product();
				p.setName(rs.getString("name"));
				p.setPrice(Double.parseDouble(rs.getString("price")));
				p.setBrand(rs.getString("brand"));
				p.setCategory(rs.getString("category"));
				p.setQuantity(Double.parseDouble(rs.getString("quantity")));
				p.setDisplay(rs.getString("display"));
				p.setType(rs.getString("type"));
				list.add(p);
			}while(rs.next());
		}
		con.close();
		return list;
	}
	
	public JsonArray sort() throws ClassNotFoundException, SQLException
	{
		JsonArray ary=new JsonArray();
		LinkedHashSet<String> hash=new LinkedHashSet<String>();
		con=getCon();
		String qr="select * from product";
		PreparedStatement ps=con.prepareStatement(qr);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			do
			{
				String name=rs.getString("name");
				String brand=rs.getString("brand");
				String category=rs.getString("category");
				hash.add(category);
				hash.add(name);
				hash.add(brand);
			}while(rs.next());
			for(Object o : hash)
			{
				String value=(String)o;
				ary.add(value.toLowerCase());
			}
		}
		con.close();
		return ary;
	}
	
	public List<Product> Update(String name) throws ClassNotFoundException, SQLException
	{
		List<Product> list=new ArrayList<Product>();
		con=getCon();
		String qr="select * from product where name=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1, name);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			do
			{
				Product p=new Product();
				p.setName(rs.getString("name"));
				p.setPrice(Double.parseDouble(rs.getString("price")));
				p.setBrand(rs.getString("brand"));
				p.setCategory(rs.getString("category"));
				p.setQuantity(Double.parseDouble(rs.getString("quantity")));
				p.setImage(rs.getString("image"));
				p.setType(rs.getString("type"));
				p.setDetails(rs.getString("details"));
				p.setSpecifications(rs.getString("specifications"));
				p.setDisplay(rs.getString("display"));
				list.add(p);
			}while(rs.next());
		}
		con.close();
		return list;
	}
	
	public String UpdateProduct(String name, String price, String brand, String category,double quantity, String image, String type, String display, String details, String specifications) throws ClassNotFoundException, SQLException
	{
		String msg="Product Updated Successfully..!!";
		con=getCon();
		String qr="update product set price=?, brand=?, category=?, quantity=?, image=?, type=?, details=?, specifications=?, display=? where name=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1, price);
		ps.setString(2, brand);
		ps.setString(3, category);
		ps.setDouble(4, quantity);
		ps.setString(5, image);
		ps.setString(6, type);
		ps.setString(7, details);
		ps.setString(8, specifications);
		ps.setString(9, display);
		ps.setString(10, name);
		ps.executeUpdate();
		con.close();
		return msg;
	}
}
