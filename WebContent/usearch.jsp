<%@page import="ecart.Helper"%>
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
		<meta charset="ISO-8859-1">
		<title>E-CART</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
		<style>
			a{
				text-decoration:none;
				color: grey;
			}
			body{
				margin-top:54px;
				background-color:lightgrey;
				background-image:url(".jpg");
				background-repeat:no-repeat;
				background-size:100% 100%;
			}
			h2 a{
				color:black;
			}
			img:hover{
				transform:scale(1.03);
			}
			h4 {
			    margin: 0;
				padding: 0;
				white-space: nowrap;
				overflow: hidden;
				text-overflow: ellipsis;
			}
		</style>
	</head>
	<body>
		<div id="blur" class="container-fluid">
			<div class="row">
				<div class="col-lg d-none d-lg-block"></div>
				<div class="col-lg-9">
					<c:forEach var="list" items="${list }">
						<div class="row bg-white p-4 mb-2">
							<div class="col-lg-3 mb-5 col-4 text-center">
								<a target="_blank" href="OperateServlet?name=${list.name }&operate=UshowProduct"><img style="max-height: 200px;max-width: 200px;" class="img-fluid mx-auto d-inline-block" src="${list.image }"></a>
							</div>
							<div class="col-lg-6 col-8">
								<h4 class="h4 ml-3"><a class="text-dark" target="_blank" href="OperateServlet?name=${list.name }&operate=UshowProduct">${list.name }</a></h4>
								<div class="d-none d-block d-lg-none ml-3"><h4 class="h4">Rs.${list.price }</h4></div>
								<a target="_blank" href="OperateServlet?name=${list.name }&operate=UshowProduct"><p class="lead">${list.specifications }</p></a>
							</div>
							<div class="col-lg-3 col-sm-0 d-none d-lg-block">
								<h4 class="h4">Rs.${list.price }</h4><br>
								<form method="post" action="OperateServlet?name=${list.name }&price=${list.price }&image=${list.image }&search=${param.search }&operate=AddToCompare">
									<input type="hidden" name="specifications" value="${list.specifications }">
									<input type="submit" style="font-weight: 700" class="btn btn-success btn-sm" value="Add To Compare">
								</form>
								<a href="OperateServlet?name=${list.name }&price=${list.price }&image=${list.image }&search=${param.search }&operate=AddToWishlist"><button class="btn btn-sm btn-danger mb-2"><b>Add To Wishlist</b></button><br></a>
								<h5>Offers</h5>
								<ul>
									<li>No Cost EMI</li>
									<li>Special Price</li>
								</ul>
							</div>
						</div>
					</c:forEach>
				</div>
				<div class="col-lg d-none d-lg-block"></div>
			</div>
			<%@include file="footer.jsp" %>
		</div>
		<c:if test="${not empty param.msg }">
			<script>
				$(document).ready(function(){
					alert('${param.msg }');
				});
			</script>
		</c:if>
		<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="header.js"></script>
	</body>
</html>
</c:otherwise>
</c:choose>