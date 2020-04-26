<%@page import="ecart.Helper"%>
<%@page errorPage="errorpage.jsp" %>
<%@include file="db.jsp" %>
<%@include file="header.jsp" %>
<c:choose>
<c:when test="${empty sessionScope.id}">
	<jsp:forward page="first.jsp"></jsp:forward>
</c:when>
<c:otherwise>
	<c:choose>
		<c:when test="${empty id }">
			<c:redirect url="first.jsp"></c:redirect>
		</c:when>
		<c:otherwise>
		<html>
			<head>
				<title></title>
				<style>
					a{
						text-decoration:none;
					}
					body{
						margin-top:60px;
						background-image:url(".jpg");
						background-repeat:no-repeat;
						background-size:100% 100%;
						background-color: lightgrey;
					}
					#image{
						max-width:300px;
						max-height:300px;
						margin-top:25px;
						margin-left:auto;
						margin-right:auto;
						display:block;
					}
					.image{
						width:auto;
					}
					.zoom{
						width: 0px;
						position: absolute;
						top: 50%;
						left: 50%;
						transform: translate(-50%,-50%);
						transition: width 0.8s linear 0s;
					}
					.image:hover + .zoom{
						width:300px;
					}
					#button{
						height:50px;
						width:200px;
						margin-right:0;
						font-size: 20px;
						margin-left:15px;
					}
					
				</style>
				<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.6.3/css/all.css'>
			</head>
			<script src="header.js"></script>
			<body>
				<c:forEach var="list" items="${list }">
					<div style="float:left;height:100%;width:39%;background-color:white;border:1px solid">
						<div style="float:left;height:100%;width:15%;background-color:whitesmoke"></div>
						<div style="float:left;height:auto;width:441px;background-color:white">
							<img id="image" class="image img-fluid" src="${list.image }">
							<img class="zoom img-fluid" src="${list.image }">
							<hr>
							<div style="float:bottom;height:auto;width:100%;background-color: white">
								<table>
									<tr>
										<td><form method="post" action="comparecheck.jsp?name=${list.name }&price=${list.price }&image=${list.image }">
												<input type="hidden" name="specifications" value="${list.specifications }">
												<input type="submit" style="background-color: green;color:white;font-weight:700;cursor: pointer" id="button" value="Add to Compare">
											</form>
										</td>
										<td><form method="post" action="OperateServlet?name=${list.name }&price=${list.price }&image=${list.image }&operate=AddToWishlist">
												<input type="submit" style="background-color: red;color:white;font-weight:700;cursor: pointer" id="button" value="Add to Wishlist">
											</form>
										</td>
									</tr>
								</table>
								<c:choose>
									<c:when test="${list.quantity le 0 }"> 
										<table align="center">
											<tr>
												<td><h1>Coming Soon</h1></td>
												<td><button style="background-color: #ff6600;height:50px;width:200px"><b><a style="color:white" href="#">NOTIFY ME</a></b></button></td>
											</tr>
										</table>
									</c:when>
									<c:otherwise>
										<table>
											<tr>
												<td><button style="background-color: orange" id="button"><b><a style="color:white" href="OperateServlet?name=${list.name }&price=${list.price }&image=${list.image }&operate=AddToCart"><i style="color: white;margin-right: 10px" class='fas fa-shopping-cart'></i>Add To Cart</a></b></button></td>
												<td><button style="background-color: #ff6600" id="button"><b><a style="color:white" href="BuyNowServlet"><i style="color: white;margin-right: 10px" class='fas fa-bolt'></i>Buy Now</a></b></button></td>
											</tr>
										</table>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<div style="float:left;height:100%;width:60%;background-color:white;border:1px solid">
						<h2 style="margin-bottom:0;margin-left:20px">${list.name }</h2><br>
						<h2 style="margin-left:25px">Rs.${list.price }</h2><br>
						<p style="margin-left:25px">${list.details }</p><br>
						<div style="float:left;height:auto;width:100%;background-color:white">
							<div style="float:left;width:170px;background-color: white">
								<h3 style="margin-left:25px">Easy Payment Options</h3>
							</div>
							<div style="float:left;width:70%">
								<ul>
									<li>No Cost EMI</li>
									<li>Cash on Delivery</li>
									<li>Net Banking & Credit/ Debit/ ATM card</li>
								</ul>
							</div>
							<div style="float:left;width:170px;background-color:white">
								<h3 style="margin-left:25px">Highlights</h3>
							</div>
							<div style="float:left;width:70%">
								<p style="margin-left:20px">${list.specifications }</p>
							</div>
						</div>
					</div>
				</c:forEach>
			<%@include file="footer.jsp" %>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
			<c:if test="${not empty param.msg }">
				<script>
					$(document).ready(function(){
						alert('${param.msg }');
					});
				</script>
			</c:if>
		</c:otherwise>
	</c:choose>
</c:otherwise>
</c:choose>
	</body>
</html>