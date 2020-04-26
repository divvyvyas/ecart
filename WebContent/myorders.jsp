<%@page errorPage="errorpage.jsp" %>
<%@include file="db.jsp" %>

<c:choose>
<c:when test="${empty sessionScope.id}">
	<jsp:forward page="first.jsp"></jsp:forward>
</c:when>
<c:otherwise>
<html>
	<head>
		<title>My Orders</title>
		<style>
			h3 li a{
				color:grey;
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
			#input{
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
		<%@include file="header.jsp" %>
		<%@include file="sideBar.jsp" %>
		<div style="float:left;background-color:white;width:66%;height:auto;margin:10px;margin-right:5%">
			<form method="post" action="">
				
			</form>
		</div>
		<%@include file="footer.jsp" %>
</c:otherwise>
</c:choose>
		<script src="header.js"></script>
	</body>
</html>