<html>
	<head>
		<title>Insert title here</title>
		<style>
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
				display: none;
				background-color: white;
				width:18%;
				float:right;
				margin-right: 75px;
				margin-top: 4spx;
			}
			h3 a:hover{
				color:blue;
			}
		</style>
	</head>
	<body>
		<header>
			<div style="position:fixed;width:100%;height:54px;background-color:blue;top:0;left:0">
				<div style="float:left;width:60%;height:54px;background-color:blue">
					<form action="OperateServlet">
						<a href="uhome.jsp" style="text-align:center;color:white;font-size:25px;margin-left:85px;margin-top: 7px"><b><i>E-CART</i></b></a>
						<input type="hidden" name="operate" value="Usearch">
						<input type="search" name="search" style="height:40px;width:500px;margin-top:7px;margin-left:15px" placeholder="Search for products,brand and more" required="required">
						<input type="submit" value="search" style="height:40px;width:100px;margin-top:7px">
					</form>
				</div>
				<div style="float:left;width:40%;height:54px;background-color:blue">
					<div style="float:right;width:25%;height:50px;background-color:blue">
						<p style="margin-top:13px;text-align:right">
							<a style="font-size:20px;margin-left:20px;margin-right:70px;color:white" href="#"><b>Logout</b></a>
						</p>
					</div>
					<div id="aa" style="float:right;width:25%;height:54px;background-color:blue" onmouseover="show()" onmouseout="hide()">
						<p style="margin-top:13px;text-align:right;color:white;margin-right:20px;font-size:20px;cursor:pointer">
							<b>Admin Menu</b>
						</p>
					</div>
				</div>
				<div id="bb" onmouseover="show()" onmouseout="hide()">
					<h3><a href="#">Show Product's</a></h3><hr>
					<h3><a href="#">Show user's</a></h3><hr>
					<h3><a href="#">Add Product</a></h3><hr>
					<h3><a href="#">Search Product by Category</a></h3><hr>
					<h3><a href="#">MY WISHLIST</a></h3><hr>
					<h3><a href="#">LOGOUT</a></h3>
				</div>
			</div>
		</header>
		<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script>
			function show()
			{
				$("#bb").show();
			}
			function hide()
			{
				$("#bb").hide();
			}
		</script>
	</body>
</html>