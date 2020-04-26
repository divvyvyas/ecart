<%@include file="db.jsp" %>
<%@page errorPage="errorpage.jsp" %>
<html>
	<head>
		<title>SHOW PRODUCTS</title>
		<style>
			body{
				width:150%;
				background-color: whitesmoke;
			}
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
			#dtd{
				font-size: 20px;
			}
		</style>
	</head>
	<body>
		<div style="position:absolute;top:30%">
			<ul>
				<li><a href="OperateServlet1?operate=Admin">PRODUCTS</a></li>
				<li><a href="">USERS</a></li>
				<li><a href="Logout.jsp">LOGOUT</a></li>
				<li><a href="Addpro.jsp">ADD PRODUCT</a></li>
			</ul>
		</div>
		<div style="position:absolute;left:15%">
		<h1 align="center">HOME</h1>
		
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
		</form>
		<table style="width:150%" border=2px solid align="center">
			<tr>
				<th>NAME</th>
				<th>PRICE</th>
				<th>BRAND</th>
				<th>CATEGORY</th>
				<th>QUANTITY</th>
				<th>DISPLAY</th>
				<th>OPERATIONS</th>
			</tr>
			<c:forEach var="list" items="${list }">
				<tr>
					<td id="td1"><a href="#">${list.name }</a></td>
					<td id="td">${list.price }</td>
					<td id="td">${list.brand }</td>
					<td id="td">${list.category }</td>
					<td id="td">${list.quantity }</td>
					<td id="dtd">${list.display }</td>
					<td id="td">
						<table border=2px solid>
							<tr>
								<td><a class="btn btn-danger" href="OperateServlet1?operate=Delete&name=${list.name }">DELETE</a></td>
								<td><a class="btn btn-success" href="OperateServlet1?operate=Update&name=${list.name }">UPDATE</a></td>
								<td><a class="btn btn-outline-success" href="OperateServlet1?operate=AddToDisplay&name=${list.name }">ADD TO DISPLAY</a></td>
								<td><a class="btn btn-outline-danger" href="OperateServlet1?operate=RemoveFromDisplay&name=${list.name }">REMOVE FROM DISPLAY</a></td>
							</tr>
						</table>
					</td>
				</tr>
			</c:forEach>
		</table>
		</div>
		<c:if test="${not empty param.msg }">
			<script>
				alert('${param.msg}');
			</script>
		</c:if>
	</body>
</html>