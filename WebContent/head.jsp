<%@page import="com.google.gson.JsonArray"%>
<%@page import="ecart.*" %>
<html>
	<head>
		<title>E-CART</title>
		<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.6.3/css/all.css'>
	</head>

<%
	JsonArray search=(JsonArray)session.getAttribute("sort");
%>
	<body>
		<header>
			<div id="head" style="position: fixed;width:100%;height:auto;background-color:blue;top:0;left:0; z-index: 2">
				<div style="float:left;width:60%;height:54px;background-color:blue">
					<form method="post" action="OperateServlet1">
						<a href="first.jsp" style="text-align:center;color:white;font-size:25px;text-decoration:none;margin-left:85px"><b><i>E-CART</i></b></a>
						<input type="hidden" name="operate" value="Search">
						<input type="search" id="search" name="search" style="height:40px;width:500px;margin-top:7px;margin-left:15px" placeholder="Search for products,brand and more" required="required">
						<input type="submit" value="search" style="height:40px;width:100px;margin-top:7px">
					</form>
					<div style="background-color: white;width: 500px;margin-left: 200px;position: absolute" id="search"></div>
				</div>
				<div style="float:right;width:40%;height:54px;background-color:blue">
					<p style="margin-top:13px;text-align:right">
						<a style="font-size:20px;margin-right:40px;color:white;cursor:pointer" onclick="login()"><b>Login & Signup</b></a>
						<a style="font-size:20px;margin-right:70px;color:white;cursor:pointer" onclick="loginFirst()"><b><i style="color: white;margin-right: 10px" class='fas fa-shopping-cart'></i>Cart</b></a>
					</p>
				</div>
			</div>
		</header> 
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.min.js"></script>
		<script src="head.js"></script>
		<script>
			$( "#search" ).autocomplete({
		    	source: <%=search %>
		    });
		</script>
	</body>
</html>