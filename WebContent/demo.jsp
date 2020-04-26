<%@page import="com.google.gson.*" %>
<%@page import="org.json.*" %>
<%@page errorPage="errorpage.jsp" %>
<%@include file="db.jsp" %>
<%
	String search="wat";
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
		//JSONObject obj=new JSONObject();
		JsonArray ary=new JsonArray();
		do
		{
			String name=rs.getString("name");
			ary.add(name);
		}while(rs.next());
		//obj.put("search", obj);
		//out.println(obj.toString());
		//out.println(obj);
		out.println(ary);
		//out.write(obj.toString());
		//out.flush();
	}
%>