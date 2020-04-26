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
	<script src="header.js"></script>
	<body ng-app="ngAnimate">
		<%@include file="sideBar.jsp" %>
		<c:forEach var="list" items="${list }">
			<div style="float:left;background-color:white;width:66%;height:100%;margin:10px;margin-right:5%" ng-coltroller="FirstController">
				<form method="post" name="myForm" action="OperateServlet?operate=UpdateContact">
					<h1 style="margin-left:30px">Contact Details</h1>
					<label style="margin-left:30px;font-size:22px"><b>OLD Mobile Number</b></label>
					<input type="number" style="margin-left:35px" readonly="readonly" placeholder="Mobile Number" class="input" name="ocontact" value="${list.contact }"><br><br>
					<label style="margin-left:30px;font-size:22px"><b>NEW Mobile Number</b></label>
					<input type="number" ng-model="contact" required="required" placeholder="Mobile Number" ng-minlength="10" ng-maxlength="10" class="input" name="contact">
					<span style="color: red;" ng-show="myForm.contact.$dirty && myForm.contact.$invalid">
						<span ng-show="myForm.contact.$error.required">This field is required.</span>
						<span ng-show="myForm.contact.$error.maxlength">Please Enter Correct Mobile Number.</span>
						<span ng-show="myForm.contact.$error.minlength">Please Enter Correct Mobile Number.</span>
					</span><br><br>
					<div style=" transition: all linear 0.5s;" ng-show="myForm.contact.$valid">
						<input type="submit" ng-disabled="myForm.contact.$invalid" style="background-color:blue;color:white" class="input" value="UPDATE">
					</div>
				</form>
			</div>
		</c:forEach>
		<c:if test="${not empty param.msg }">
			<script>
				alert('${param.msg}');
			</script>
		</c:if>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-animate.js"></script>
		<script src="angular.js"></script>
	</body>
</html>
</c:otherwise>
</c:choose>