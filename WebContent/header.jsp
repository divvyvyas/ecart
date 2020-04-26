<%@page import="com.google.gson.JsonArray"%>
<html>
	<head>
		<title>E-CART</title>
		<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.6.3/css/all.css'>
		<style>
			#bb h3{
				margin-left: 20px;
				text-align: left;
			}
			a{
				text-decoration: none;
			}
			h3{
				text-align:center;
			}
			h3 a{
				color:black;
			}
			#bb{
				position: relative;
				visibility: hidden;
				background-color: white;
				width:18%;
				float:right;
				margin-right: 75px;
				margin-top: 4spx;
				z-index: 2;
			}
			h3 a:hover{
				color:blue;
			}
			i{
				margin-right: 15px;
				color: blue;
			}
			#bb h4 a{
				color: black;
			}
		</style>
	</head>
<%
	JsonArray search=(JsonArray)session.getAttribute("sort");
%>
	<body>
		<header>
			<div id="head" style="position:fixed;width:100%;height:54px;background-color:blue;top:0;left:0; z-index: 2">
				<div style="float:left;width:80%;height:54px;background-color: blackss">
					<form method="post" action="OperateServlet">
						<a href="uhome.jsp" style="text-align:center;color:white;font-size:25px;margin-left:85px;margin-top: 7px;font-style: italic;"><b>E-CART</b></a>
						<input type="hidden" name="operate" value="Usearch">
						<input type="search" id="search" name="search" style="height:40px;width:500px;margin-top:7px;margin-left:15px" placeholder="Search for products,brand and more" required="required">
						<input type="submit" value="search" style="height:40px;width:100px;margin-top:7px">
					</form>
				</div>
				<div style="float: right;width: 20%;height:54px;background-color:blue">
					<div style="float:right;width: 50%;height:50px;background-color: blue">
						<p style="margin-top:13px;text-align:right">
							<a style="font-size:20px;margin-left:20px;margin-right:40px;color:white" href="OperateServlet?operate=Cart"><b><i style="color: white;margin-right: 10px" class='fas fa-shopping-cart'></i>Cart</b></a>
						</p>
					</div>
					<div id="aa" style="float:right;width: 50%;height:54px;background-color: blue" onmouseover="show()" onmouseout="hide()">
						<p style="margin-top:13px;text-align:right;color:white;margin-right:20px;font-size:20px;cursor:pointer">
							<b>My Account</b>
						</p>
					</div>
				</div>
				<div id="bb" onmouseover="show()" onmouseout="hide()">
					<h4><a href="OperateServlet?operate=Uprofile"><i class='fas fa-user'></i>Profile Information</a></h4><hr>
					<h4><a href="OperateServlet?operate=Address"><i class='fas fa-map-marker-alt'></i>Manage Addresses</a></h4><hr>
					<h4><a href="OperateServlet?operate=Contact"><i class='fas fa-phone'></i>Change Mobile no.</a></h4><hr>
					<h4><a href="changepassword.jsp"><i class='fas fa-lock'></i>Change Password</a></h3><hr>
					<h4><a href="OperateServlet?operate=Wishlist"><i class='fas fa-heart'></i>MY WISHLIST</a></h4><hr>
					<h4><a href="OperateServlet?operate=Logout"><i class='fas fa-power-off'></i>LOGOUT</a></h4>
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