<%@page errorPage="errorpage.jsp" %>
<%@include file="db.jsp" %>
<%@include file="ls.jsp" %>
<%@include file="head.jsp" %>

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
								<a target="_blank" href="OperateServlet1?name=${list.name }&operate=ShowProduct"><img style="max-height: 200px;max-width: 200px;" class="img-fluid mx-auto d-inline-block" src="${list.image }"></a>
							</div>
							<div class="col-lg-6 col-8">
								<h4 class="h4 ml-3"><a class="text-dark" target="_blank" href="OperateServlet1?name=${list.name }&operate=ShowProduct">${list.name }</a></h4>
								<div class="d-none d-block d-lg-none ml-3"><h4 class="h4">Rs.${list.price }</h4></div>
								<a target="_blank" href="OperateServlet1?name=${list.name }&operate=ShowProduct"><p class="lead">${list.specifications }</p></a>
							</div>
							<div class="col-lg-3 col-sm-0 d-none d-lg-block">
								<h4 class="h4">Rs.${list.price }</h4><br>
								<button onclick="loginFirst()" class="btn btn-sm btn-success mb-2"><b>Add To Compare</b></button><br>
								<button onclick="loginFirst()" class="btn btn-sm btn-danger mb-2"><b>Add To Wishlist</b></button><br>
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
		<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="head.js"></script>
	</body>
</html>