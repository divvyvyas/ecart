<html>
	<head>
		<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.6.3/css/all.css'>
		<style>
			#sideBar h3 a{
				color:grey;
				font-size: 18px;
			}
			#sideBar a:hover{
				color: blue;
			}
			a{
				text-decoration: none;
			}
			#sideBar h3{
				text-align: left;
				margin-left: 25px;
			}
			i{
				margin-right: 15px;
				color: blue;
			}
			#sideBar h2 a{
				color: grey;
				font-size: 20px;
				margin-left: 25px;
			}
		</style>
	</head>
	<body>
		<div id="sideBar" style="float:left;background-color:lightgrey;width:22%;height:auto;margin:10px;margin-left:5%">
			<div style="float:left;height:95px;width:100%;background-color:white;margin-bottom:20px">
				<h1 align="center">Hello, ${sessionScope.id }</h1>
			</div>
			<div style="float:left;height:60px;width:100%;background-color:white;border-bottom:2px solid lightgrey">
				<h2><a href="myorders.jsp"><i class='fas fa-file-alt'></i>MY ORDERS</a></h2>
			</div>
			<div style="float:left;height:auto;width:100%;background-color:white;border-bottom:2px solid lightgrey">
				<h2 style="text-align:center;color:blue">ACCOUNT SETTINGS</h2>
				
				<h3><a href="OperateServlet?operate=Uprofile"><i class='fas fa-user'></i>Profile Information</a></h3>
				<h3><a href="OperateServlet?operate=Address"><i class='fas fa-map-marker-alt'></i>Manage Addresses</a></h3>
				<h3><a href="OperateServlet?operate=Contact"><i class='fas fa-phone'></i>Change Mobile no.</a></h3>
				<h3><a href="changepassword.jsp"><i class='fas fa-lock'></i>Change Password</a></h3>
				
			</div>
			<div style="float:left;height:60px;width:100%;background-color:white;border-bottom:2px solid lightgrey">
				<h2><a href="OperateServlet?operate=Wishlist"><i class='fas fa-heart'></i>MY WISHLIST</a></h2>
			</div>
			<div style="float:left;height:60px;width:100%;background-color:white">
				<h2><a href="OperateServlet?operate=Logout"><i class='fas fa-power-off'></i>LOGOUT</a></h2>
			</div>
		</div>
	</body>
</html>