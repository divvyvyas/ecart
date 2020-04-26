<%@page errorPage="errorpage.jsp" %>
<%@include file="db.jsp" %>
<c:choose>
<c:when test="${empty sessionScope.id}">
	<jsp:forward page="first.jsp"></jsp:forward>
</c:when>
<c:otherwise>
<html>
	<head>
		<title>My Wishlist</title>
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
			h3 li a{
				color:grey;
				font-size: 18px;
			}
			a:hover{
				color:blue;
			}
			h2 a{
				color:grey;
				font-size: 20px;
				margin-left:30px;
			}
			ul h3{
				text-align: left;
			}
		</style>
	</head>
	<script src="header.js"></script>
	<body>
		<%@include file="header.jsp" %>
		<%@include file="sideBar.jsp" %>
		<div style="float:left;background-color:white;width:66%;height:auto;margin:10px;margin-right:5%">
			<h1 style="margin-left:30px">My Wishlist</h1>
		</div>
		<c:forEach var="list" items="${list }">
			<div style="float:right;width:875px;height:auto;min-height:180px;background-color:white;margin:2px;border:1px solid grey;margin-right:74px">	
				<div style="float:left;width:200px;height:auto;min-height:180px;background-color:white;margin-right:0px">
					<center><a  target="_blank" href="OperateServlet?name=${list.name }&operate=UshowProduct"><img src="${list.image }" style="width:auto;max-width:130px;height:auto;max-height:130px;margin:20px"></a></center><br>
				</div>
				<div style="float:left;background-color: white;height:auto;min-height:180px;width:434px;margin-right:0px;margin-left:0px">
					<h2 style="margin-bottom:0;margin-left: 25px"><a style="margin-left: 0;" target="_blank" href="OperateServlet?name=${list.name }&operate=UshowProduct">${list.name }</a></h2>
					<h2 style="margin-left:25px">Rs.${list.price }</h2>
					<button style="background-color: red;margin-left:25px"><b><a style="color:white" href="OperateServlet?name=${list.name }&operate=RemoveFromWishlist">Remove from Wishlist</a></b></button>
				</div>
			</div>
		</c:forEach>
	<%@include file="footer.jsp" %>
	<c:if test="${not empty param.msg }">
		<script>
			alert('${param.msg}');
		</script>
	</c:if>
	</body>
</html>
</c:otherwise>
</c:choose>