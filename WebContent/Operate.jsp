<%@page errorPage="errorpage.jsp" %>
<%@include file="db.jsp" %>
<%
	String ch=request.getParameter("n");
%>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>SHOW PRODUCTS</title>
		<style>
			#td1{
				width:300px;
			}
			#td{
				width:140px;
			}
			input{
				margin-bottom:40px;
				height:40px;
				margin-right:10px;
			}
			tr{
				
				height:40px;
			}
		</style>
	</head>
	<body>
		<div style="position:absolute;top:30%">
			<ul>
				<li><a href="Showpro.jsp">PRODUCTS</a></li>
				<li><a href="">USERS</a></li>
				<li><a href="Logout.jsp">LOGOUT</a></li>
				<li><a href="Addpro.jsp">ADD PRODUCT</a></li>
			</ul>
		</div>
		<div style="position:absolute;left:15%">
		<h1 align="center">PRODUCT LIST</h1>
		
			<form action="Operate.jsp" method="post">
				<input type="submit" name="n" value="Home">
				<input type="submit" name="n" value="Mobile">
				<input type="submit" name="n" value="Laptop">
				<input type="submit" name="n" value="Refrigerator">
				<input type="submit" name="n" value="AC">
				<input type="submit" name="n" value="Washing Machine">
				<input type="submit" name="n" value="Watch">
				<input type="submit" name="n" value="Smart Band">
				<input type="submit" name="n" value="Tv">
				<input type="submit" name="n" value="Hand Bags">
				<input type="submit" name="n" value="">
			</form>
		
		<table border=2px solid align="center">
			<tr>
				<th>Sno.</th>
				<th>NAME</th>
				<th>PRICE</th>
				<th>BRAND</th>
				<th>CATEGORY</th>
				<th>QUANTITY</th>
				<th>DISPLAY</th>
				<th>OPERATIONS</th>
			</tr>
		<%
		switch(ch)
		{
		case "Home":
			response.sendRedirect("Showpro.jsp");
		break;
		default :
			int i=0;
			String qr="select * from product where category=?";
			PreparedStatement ps=con.prepareStatement(qr);
			ps.setString(1, ch);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				do
				{
					String name=rs.getString("name");
					String price=rs.getString("price");
					String brand=rs.getString("brand");
					String category=rs.getString("category");
					String quantity=rs.getString("quantity");
					String display=rs.getString("display");
					String type=rs.getString("type");
			%>
				<tr>
					<% i++; %>
					<td><%= i %></td>
					<td id="td1"><a href="showfeature.jsp?&name=<%=name%>"><%= name %></a></td>
					<td id="td"><%= price %></td>
					<td id="td"><%= brand %></td>
					<td id="td"><%= category %></td>
					<td><%= quantity %></td>
					<%
						if(display.equals("display"))
						{
					%>
						<td style="font-size: 20px;background-color:green"><%= display %></td>
					<% 
						}
						else
						{
					%>
						<td style="font-size: 20px;background-color:red"><%= display %></td>
					<%
						}
					%>
					<td id="td">
						<table border=2px solid>
							<tr>
								<td><button><a href="Del.jsp?name=<%=name%>&category=<%=category %>">DELETE</a></td></button>
								<td><button><a href="Updatepro.jsp?name=<%=name%>&price=<%=price%>&brand=<%=brand%>&category=<%=category%>&quantity=<%=quantity%>&type=<%=type %>">UPDATE</a></td></button>
								<td><button><a href="Addimagepro.jsp?name=<%=name%>">ADD IMAGE</a></td></button>
								<td><button><a href="specificationspro.jsp?&name=<%=name%>">ADD SPECIFICATIONS</a></td></button>
								<td><button><a href="adddetailspro.jsp?&name=<%=name%>">ADD DETAILS</a></td></button>
								<td><button><a href="addtodisplay.jsp?&name=<%=name%>">ADD TO DISPLAY</a></td></button>
								<td><button><a href="removefromdisplay.jsp?&name=<%=name%>">REMOVE FROM DISPLAY</a></td></button>
							</tr>
						</table>
					</td>
				</tr>
			<%
				}while(rs.next());
			}
			else
				out.println("NO RECORD FOUND");
		break;
		}
		%>
		</table>
		</div>
	</body>
</html>