<%@page errorPage="errorpage.jsp" %>
<%@include file="db.jsp" %>
<c:choose>
<c:when test="${empty sessionScope.id}">
	<jsp:forward page="first.jsp"></jsp:forward>
</c:when>
<c:otherwise>
<html>
	<head>
		<title>My Cart</title>
		<style>
			a{
				text-decoration:none;
			}
			body{
				margin-top:65px;
				margin-left:60px;
				background-image:url(".jpg");
				background-repeat:no-repeat;
				background-size:100% 100%;
				background-color: lightgrey;
			}
			#input{
				margin-top:20px;
				margin-left:30px;
				margin-right:30px;
				height:50px;
				width:300px;
				font-size: 20px;
			}
			#qty{
				width: 50px;
			}
			#price{
				font-size: 25px;
				border:none;
			}
		</style>
	</head>
	<body>
		<div style="position:fixed;width:100%;height:auto;background-color:blue;top:0;left:0">
			<div style="float:left;width:60%;height:50px;background-color:blue">
				<form action="usearch.jsp">
					<a href="uhome.jsp" style="text-align:center;color:white;font-size:25px;margin-left:85px"><b><i>E-CART</i></b></a>
					<input type="search" name="search" style="height:40px;width:500px;margin-top:5px;margin-left:15px" placeholder="Search for products,brand and more" required="required">
					<input type="submit" value="search" style="height:40px;width:100px;margin-top:5px">
				</form>
			</div>
			<div style="float:right;width:40%;height:50px;background-color:blue">
				<p style="margin-top:10px;text-align:right">
					<a style="font-size:20px;margin-right:100px;color:white" href="uprofile.jsp">My Account</a>
				</p>
			</div>	
		</div>
		<div style="float:left;width:800px;height:auto;min-height:180px;background-color:lightgrey;margin:2px;margin-right:20px">
			<div style="float:left;width:800px;height:50px;background-color:white;margin:2px;margin-right:20px;margin-bottom:0;border:1px solid">
				<h2 style="margin-left:25px">My Cart</h2>
			</div>
			<c:forEach var="list" items="${list }">
			<div style="float:left;width:800px;height:auto;min-height:180px;background-color:white;margin:2px;border:1px solid grey">
				<div style="float:left;width:200px;height:auto;min-height:180px;background-color:white;margin-right:0px">
					<center><a  target="_blank" href="OperateServlet?name=${list.name }&operate=UshowProduct"><img src="${list.image }" style="width:auto;max-width:130px;height:auto;max-height:130px;margin:20px"></a></center><br>
				</div>
				<div style="float:left;background-color:white;height:auto;min-height:180px;width:434px;margin-right:0px;margin-left:0px">
					<h2 style="margin-bottom:0;margin-left:20px"><a target="_blank" href="OperateServlet?name=${list.name }&operate=UshowProduct">${list.name }</a></h2><br>
					<label style="margin-left:25px;font-size: 25px"><b>Rs.</b></label><input id="price" type="number" readonly="readonly" value="${list.price }"><br><br>
					<button style="background-color: red;margin-left:25px;margin-bottom:30px"><b><a style="color:white" href="OperateServlet?name=${list.name }&operate=RemoveFromCart">Remove from Cart</a></b></button>
				</div>
			</div>
			</c:forEach>
				<div style="float:left;width:800px;height:90px;background-color:white;margin:2px;border:1px solid grey">
				<c:choose>
					<c:when test="${param.i gt 0 }">
						<button style="float:left" id="input"><a style="color:black" onclick="history.back()"><< CONTINUE SHOPPING</a></button>
						<button style="float:right;background-color:#ff6600" id="input"><a style="color:white" href="#">PLACE ORDER</a></button>
					</c:when>
					<c:otherwise>
						<label style="font-size:65px"><b>Cart is Empty</b></label>
						<button style="float:right" id="input"><a style="color:black" href="uhome.jsp">ADD PRODUCTS TO CART >></a></button>
					</c:otherwise>
				</c:choose>
				</div>
		</div>
			<div style="position:fixed;left:880px;width:450px;height:auto;min-height:180px;background-color:lightgrey;margin:2px">
				<div style="float:left;width:450px;height:50px;background-color:white;margin:1px;border:1px solid grey">
					<h2 style="margin-left:20px;color:grey">PRICE DETAILS</h2>
				</div>
				<div style="float:left;width:450px;height:auto;min-height:180px;background-color:white;margin:1px;border:1px solid grey">
					<table style="font-size:20px;margin:20px">
						<tr>
							<td>Price(${param.i } items)</td><td width="150px"></td><td>Rs.${param.amount }</td>
						</tr>
						<tr>
							<td>Delivery Charges</td><td></td><td>Rs.${param.delivery }</td>
						</tr>
					</table><hr>
					<table style="font-size:20px;margin:20px">
						<tr>
							<td>Amount Payable</td><td width="150px"></td><td>Rs.${param.famount }</td>
						</tr>
					</table>
				</div>
			</div>
			<c:if test="${not empty param.msg }">
				<script>
					alert('${param.msg }');
				</script>
			</c:if>
	</body>
</html>
</c:otherwise>
</c:choose>