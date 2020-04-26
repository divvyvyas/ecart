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
			span{
				color:red;
			}
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
			.input{
				margin-left:30px;
				height:50px;
				width:300px;
				font-size: 20px;
			}
			li a{
				color:grey;
				font-size: 18px;
			}
			a:hover{
				color:blue;
			}
			h2 a{
				color:grey;
			}
			ul h3{
				text-align: left;
			}
			h2 a{
				font-size: 20px;
				margin-left:30px;
			}
		</style>
	</head>
	<body>
		<%@include file="sideBar.jsp" %>
		<div style="float:left;background-color:white;width:66%;height:100%;margin:10px;margin-right:5%">
			<form method="post" action="OperateServlet?operate=ChangePassword">
				<h1 style="margin-left:30px">Password Details</h1>
				<label style="margin-left:30px;font-size:22px"><b>Enter Current Password</b></label><input type="text" required="required" placeholder="Enter Current Password" name="password" class="input"><br><br>
				<label style="margin-left:30px;font-size:22px"><b>Enter New Password</b></label><input type="text" style="margin-left:65px" required="required" placeholder="Enter New Password" class="input"><br><br>
				<label style="margin-left:30px;font-size:22px"><b>Re-Enter New Password</b></label><input type="text" style="margin-left:30px" required="required" placeholder="Re-Enter New Password" class="input" name="newpassword"><br><br>
				<input type="submit" style="background-color:blue;color:white" class="input" value="UPDATE">
			</form>
		</div>
		<script></script>
		<script src="header.js"></script>
		<c:if test="${not empty param.msg }">
		<script>
			alert('${param.msg}');
		</script>
	</c:if>
	</body>
</html>
</c:otherwise>
</c:choose>