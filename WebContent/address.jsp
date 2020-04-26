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
		<title>My Address</title>
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
			li a{
				color:grey;
				font-size: 18px;
			}
			a:hover{
				color:blue;
			}
			ul h3{
				text-align: left;
			}
			h2 a{
				font-size: 20px;
				margin-left:30px;
				color:grey;
			}
			textarea {
				resize: none;
			}
		</style>
	</head>
	<script src="header.js"></script>
	<body>
		<%@include file="sideBar.jsp" %>
		<c:forEach var="list" items="${list }">
		<div style="float:left;background-color:white;width:66%;height:100%;margin:10px;margin-right:5%">
		<c:choose>
			<c:when test="${list.pincode eq null }">
				<form method="post" action="OperateServlet?operate=UpdateAddress">
				<h1 style="margin-left:30px">Manage Addresses</h1>
				<input type="text" required="required" placeholder="Pincode" id="input" name="pincode"> <input type="text" required="required" placeholder="Locality" id="input" name="locality"><br><br>
				<textarea style="margin-left:30px;font-size:20px" rows="5" cols="56" placeholder="Address (Area and Street)" required="required" name="address"></textarea><br><br>
				<input type="text" required="required" placeholder="City/District/Town" id="input" name="city"><input type="text" required="required" placeholder="State" id="input" name="state"><br><br>
				<input type="text" placeholder="Landmark (Optional)" id="input" name="landmark"><input type="text" placeholder="Alternate Phone (Optional)" id="input" name="alternatecontact"><br><br>
				<input type="text" required="required" placeholder="Address Type (Home/Work)" id="input" name="addresstype"><br><br>
				<input type="submit" style="background-color:blue;color:white" id="input" value="UPDATE">
			</form>
			</c:when>
			<c:otherwise>
				<form method="post" action="">
					<h1 style="margin-left:30px">Manage Addresses</h1>
					<input type="text" readonly="readonly" placeholder="Pincode" id="input" name="pincode" value="${list.pincode }"> <input type="text" readonly="readonly" placeholder="Locality" id="input" name="locality" value="${list.locality }"><br><br>
					<textarea style="margin-left:30px;font-size:20px" rows="5" cols="56" placeholder="Address (Area and Street)" readonly="readonly" name="address">${list.address }</textarea><br><br>
					<input type="text" readonly="readonly" placeholder="City/District/Town" id="input" name="city" value="${list.city }"><input type="text" readonly="readonly" placeholder="State" id="input" name="state" value="${list.state }"><br><br>
					<input type="text" readonly="readonly" placeholder="Landmark (Optional)" id="input" name="landmark" value="${list.landmark }"><input type="text" readonly="readonly" placeholder="Alternate Phone (Optional)" id="input" name="alternatecontact" value="${list.alternatecontact }"><br><br>
					<input type="text" readonly="readonly" placeholder="Address Type (Home/Work)" id="input" name="addresstype" value="${list.addresstype }"><br><br>
					<button style="background-color:blue;color:white" id="input"><a style="color:white" href="OperateServlet?operate=EditAddress">EDIT Address</a></button>
				</form>
			</c:otherwise>
		</c:choose>
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