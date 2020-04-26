<%@page errorPage="errorpage.jsp" %>
<%@include file="db.jsp" %>
<%@include file="ls.jsp" %>
<%@include file="head.jsp" %>
<html>
	<head>
		<title></title>
		<meta charset="utf-8">
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
				margin-top:25px;
				max-width:300px;
				max-height:300px;
				display:block;
				margin-left: auto;
				margin-right: auto;
			}
			.image{
				width:auto;
			}
			.zoom{
				width:0px;
				position:absolute;
				top:50%;
				left:50%;
				transform:translate(-50%,-50%);
				transition:width 0.8s linear 0s;
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
	</head>
	<body>
		<div id="blur" style="background-color: white" class="container">
			<!--<c:forEach var="list" items="${list }">
				<div class="row">
					<div class="col-md-4 p-lg-3">
						<div class="row">
							<div class="col-lg-12">
								<img id="image" class="image img-fluid" src="${list.image }">
								<img class="zoom img-fluid" src="${list.image }">	
							</div>
							<div class="col-lg-12 mt-4">
								<button onclick="loginFirst()" class="btn btn-success float-left ml-lg-4"><b>Add To Compare</b></button>
								<button onclick="loginFirst()" class="btn btn-danger float-right mr-lg-4"><b>Add To Wishlist</b></button><br><br>
								<div class="row">
									<div class="col-lg-12 d-none d-lg-block">
										<c:choose>
											<c:when test="${list.quantity le 0 }"> 
												<h2 class="h2 d-inline">Coming Soon</h2>
														<button style="background-color: #ff6600" class="btn text-white">NOTIFY ME</button>
													</tr>
												</table>
											</c:when>
											<c:otherwise>
												<button onclick="loginFirst()" style="background-color: orange" class="btn text-white float-left ml-lg-4"><i class='fas fa-shopping-cart'></i> <b>Add To Cart</b></button>
												<button onclick="loginFirst()" style="background-color: #ff6600" class="btn text-white float-right mr-lg-4"><i class='fas fa-bolt'></i> <b>Buy Now</b></button>
											</c:otherwise>
										</c:choose>
									</div>
									<div class="col-sm-12 d-lg-none d-sm-block">
										<div class="fixed-bottom">
											<c:choose>
												<c:when test="${list.quantity le 0 }"> 
													<h2 class="h2 d-inline">Coming Soon</h2>
													<button style="background-color: #ff6600" class="btn text-white">NOTIFY ME</button>
												</c:when>
												<c:otherwise>
													<button onclick="loginFirst()" style="background-color: orange" class="btn text-white float-left ml-lg-4 ml-3"><i class='fas fa-shopping-cart'></i> <b>Add To Cart</b></button>
													<button onclick="loginFirst()" style="background-color: #ff6600" class="btn text-white float-right mr-lg-4 mr-3"><i class='fas fa-bolt'></i> <b>Buy Now</b></button>
												</c:otherwise>
											</c:choose>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-8 p-4 pl-5">
						<h2 class="h2">${list.name }</h2><br>
						<h2 class="h2">Rs.${list.price }</h2><br>
						<p class="lead">${list.details }</p><br>
						<div class="row">
							<div class="col-lg-3">
								<p><h4 class="h5 d-inline">Easy Payment Options</h4></p>
							</div>
							<div class="col-lg-9">
								<p class="lead">
									<ul>
										<li>No Cost EMI</li>
										<li>Cash on Delivery</li>
										<li>Net Banking & Credit/ Debit/ ATM card</li>
									</ul><br>
								</p>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-3">
								<p><h4 class="h5 d-inline">Highlights</h4></p>
							</div>
							<div class="col-lg-9">
								<p class="lead">${list.specifications }</p>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>-->
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
										<td>
											<button onclick="loginFirst()" style="background-color: green;color:white;font-weight:700;cursor: pointer" id="button">Add to Compare</button>
										</td>
										<td>
											<button onclick="loginFirst()" style="background-color: red;color:white;font-weight:700;cursor: pointer" id="button">Add to Wishlist</button>
										</td>
									</tr>
								</table>
								<c:choose>
									<c:when test="${list.quantity le 0 }"> 
										<table align="center">
											<tr>
												<td><h1>Coming Soon</h1></td>
												<td><button onclick="loginFirst()" style="background-color: #ff6600;height:50px;width:200px"><b><a style="color:white" href="#">NOTIFY ME</a></b></button></td>
											</tr>
										</table>
									</c:when>
									<c:otherwise>
										<table>
											<tr>
												<td><button onclick="loginFirst()" style="background-color: orange" id="button"><b><a style="color:white"><i style="color: white;margin-right: 10px" class='fas fa-shopping-cart'></i>Add To Cart</a></b></button></td>
												<td><button onclick="loginFirst()" style="background-color: #ff6600" id="button"><b><a style="color:white"><i style="color: white;margin-right: 10px" class='fas fa-bolt'></i>Buy Now</a></b></button></td>
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
		</div>
		<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="head.js"></script>
	</body>
</html>