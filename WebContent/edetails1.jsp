<%@page errorPage="errorpage.jsp" %>
<%@include file="db.jsp" %>
<%@include file="header.jsp" %>
<c:choose>
<c:when test="${empty sessionScope.id}">
	<jsp:forward page="first.jsp"></jsp:forward>
</c:when>
<c:otherwise>
<html>
	<head>
		<title>My Profile</title>
		<style>
			a{
				text-decoration:none;
			}
			body{
				margin-top:50px;
				background-image:url(".jpg");
				background-repeat:no-repeat;
				background-size:100% 100%;
				background-color: lightgrey;
			}
			#input{
				margin-left:30px;
				height:50px;
				width:300px;
				font-size: 20px;
			}
			ul h3{
				text-align: left;
			}
		</style>
	</head>
	<body>
		<%@include file="sideBar.jsp" %>
		<c:forEach var="list" items="${list }">
		<div style="float:left;background-color:white;width:66%;height:100%;margin:10px;margin-right:5%">
			<form method="post" action="OperateServlet">
				<input type="hidden" name="operate" value="UpdateDetails">
				<h1 style="margin-left:30px">Personal Information</h1>
				<input type="text" required="required" placeholder="First Name" id="input" name="fname" value="${list.fname }"><input type="text" required="required" placeholder="Last Name" value="${list.lname }" id="input" name="lname">
				<h2 style="margin-left:30px">Your Gender</h2>
					<input type="radio" style="margin-left:30px" name="gender" value=Male><label style="font-size:20px">Male</label>
					<input type="radio" name="gender" value=Female><label style="font-size:20px">Female</label><br><br>
				<h2 style="margin-left:30px">Email Address</h2>
				<input type="email" required="required" placeholder="Email Address" id="input" name="email" value="${list.email }"><br><br>
				<h2 style="margin-left:30px">Mobile Number</h2>
				<input type="number" required="required" placeholder="Mobile Number" id="input" name="contact" value="${list.contact }"><br><br>
				<input type="submit" style="background-color:blue;color:white" id="input" value="UPDATE">
			</form>
		</div>
		</c:forEach>
	</body>
</html>
</c:otherwise>
</c:choose>