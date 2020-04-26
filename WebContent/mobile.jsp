<%@page errorPage="errorpage.jsp" %>
<%@include file="db.jsp" %>
<html>
	<head>
		<title>Insert title here</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
		<style>
			p{
				margin: 0;
				padding: 0;
				white-space: nowrap;
				overflow: hidden;
				text-overflow: ellipsis;
				width:150px;
			}
			label{
				font-size: 20px;
				margin: 0;
				padding: 0;
			}
			a{
				color:black;
				text-decoration: none;
			}
			body{
				
			}
			#img:hover{
				transform:scale(1.03);
			}
		</style>
	</head>
	<body>
		<div class="container-fluid">
			<div class="row p-3 text-center">
				<div id="img" class="col-lg-2 col-6 col-md-3 col-sm-4">
					<c:set var="list1" value="${list[0] }"></c:set>
					<div class="row">
						<div class="col-12">
							<c:choose>
								<c:when test="${empty sessionScope.id }">
										<a target="_blank" href="OperateServlet1?name=${list1.name }&operate=ShowProduct"><img style="max-height: 200px; max-width: 200px" class="img-fluid" src="${list1.image }"></a>
								</c:when>
								<c:otherwise>
										<a target="_blank" href="OperateServlet?name=${list1.name }&operate=UshowProduct"><img style="max-height: 200px; max-width: 200px" class="img-fluid" src="${list1.image }"></a>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="col-12">
							<c:choose>
								<c:when test="${empty sessionScope.id }">
									<p><a target="_blank" href="OperateServlet1?name=${list1.name }&operate=ShowProduct">${list1.name }</a><br><label><b>${list1.price }</b></label></p><br>
								</c:when>
								<c:otherwise>
									<p><a target="_blank" href="OperateServlet?name=${list1.name }&operate=UshowProduct">${list1.name }</a><br><label><b>${list1.price }</b></label></p><br>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
				<div id="img" class="col-lg-2 col-6 col-md-3 col-sm-4">
					<c:set var="list1" value="${list[1] }"></c:set>
					<div class="row">
						<div class="col-12">
							<c:choose>
								<c:when test="${empty sessionScope.id }">
										<a target="_blank" href="OperateServlet1?name=${list1.name }&operate=ShowProduct"><img style="max-height: 200px; max-width: 200px" class="img-fluid" src="${list1.image }"></a>
								</c:when>
								<c:otherwise>
										<a target="_blank" href="OperateServlet?name=${list1.name }&operate=UshowProduct"><img style="max-height: 200px; max-width: 200px" class="img-fluid" src="${list1.image }"></a>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="col-12">
							<c:choose>
								<c:when test="${empty sessionScope.id }">
									<p><a target="_blank" href="OperateServlet1?name=${list1.name }&operate=ShowProduct">${list1.name }</a><br><label><b>${list1.price }</b></label></p><br>
								</c:when>
								<c:otherwise>
									<p><a target="_blank" href="OperateServlet?name=${list1.name }&operate=UshowProduct">${list1.name }</a><br><label><b>${list1.price }</b></label></p><br>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
				<div id="img" class="col-lg-2 col-6 col-md-3 col-sm-4">
					<c:set var="list1" value="${list[2] }"></c:set>
					<div class="row">
						<div class="col-12">
							<c:choose>
								<c:when test="${empty sessionScope.id }">
										<a target="_blank" href="OperateServlet1?name=${list1.name }&operate=ShowProduct"><img style="max-height: 200px; max-width: 200px" class="img-fluid" src="${list1.image }"></a>
								</c:when>
								<c:otherwise>
										<a target="_blank" href="OperateServlet?name=${list1.name }&operate=UshowProduct"><img style="max-height: 200px; max-width: 200px" class="img-fluid" src="${list1.image }"></a>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="col-12">
							<c:choose>
								<c:when test="${empty sessionScope.id }">
									<p><a target="_blank" href="OperateServlet1?name=${list1.name }&operate=ShowProduct">${list1.name }</a><br><label><b>${list1.price }</b></label></p><br>
								</c:when>
								<c:otherwise>
									<p><a target="_blank" href="OperateServlet?name=${list1.name }&operate=UshowProduct">${list1.name }</a><br><label><b>${list1.price }</b></label></p><br>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
				<div id="img" class="col-lg-2 col-6 col-md-3 col-sm-4">
					<c:set var="list1" value="${list[3] }"></c:set>
					<div class="row">
						<div class="col-12">
							<c:choose>
								<c:when test="${empty sessionScope.id }">
										<a target="_blank" href="OperateServlet1?name=${list1.name }&operate=ShowProduct"><img style="max-height: 200px; max-width: 200px" class="img-fluid" src="${list1.image }"></a>
								</c:when>
								<c:otherwise>
										<a target="_blank" href="OperateServlet?name=${list1.name }&operate=UshowProduct"><img style="max-height: 200px; max-width: 200px" class="img-fluid" src="${list1.image }"></a>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="col-12">
							<c:choose>
								<c:when test="${empty sessionScope.id }">
									<p><a target="_blank" href="OperateServlet1?name=${list1.name }&operate=ShowProduct">${list1.name }</a><br><label><b>${list1.price }</b></label></p><br>
								</c:when>
								<c:otherwise>
									<p><a target="_blank" href="OperateServlet?name=${list1.name }&operate=UshowProduct">${list1.name }</a><br><label><b>${list1.price }</b></label></p><br>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
				<div id="img" class="col-lg-2 col-6 col-md-3 col-sm-4 d-none d-md-none d-lg-block d-sm-block">
					<c:set var="list1" value="${list[4] }"></c:set>
					<div class="row">
						<div class="col-12">
							<c:choose>
								<c:when test="${empty sessionScope.id }">
										<a target="_blank" href="OperateServlet1?name=${list1.name }&operate=ShowProduct"><img style="max-height: 200px; max-width: 200px" class="img-fluid" src="${list1.image }"></a>
								</c:when>
								<c:otherwise>
										<a target="_blank" href="OperateServlet?name=${list1.name }&operate=UshowProduct"><img style="max-height: 200px; max-width: 200px" class="img-fluid" src="${list1.image }"></a>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="col-12">
							<c:choose>
								<c:when test="${empty sessionScope.id }">
									<p><a target="_blank" href="OperateServlet1?name=${list1.name }&operate=ShowProduct">${list1.name }</a><br><label><b>${list1.price }</b></label></p><br>
								</c:when>
								<c:otherwise>
									<p><a target="_blank" href="OperateServlet?name=${list1.name }&operate=UshowProduct">${list1.name }</a><br><label><b>${list1.price }</b></label></p><br>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
				<div id="img" class="col-lg-2 col-6 col-md-3 col-sm-4 d-none d-md-none d-lg-block d-sm-block">
					<c:set var="list1" value="${list[5] }"></c:set>
					<div class="row">
						<div class="col-12">
							<c:choose>
								<c:when test="${empty sessionScope.id }">
										<a target="_blank" href="OperateServlet1?name=${list1.name }&operate=ShowProduct"><img style="max-height: 200px; max-width: 200px" class="img-fluid" src="${list1.image }"></a>
								</c:when>
								<c:otherwise>
										<a target="_blank" href="OperateServlet?name=${list1.name }&operate=UshowProduct"><img style="max-height: 200px; max-width: 200px" class="img-fluid" src="${list1.image }"></a>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="col-12">
							<c:choose>
								<c:when test="${empty sessionScope.id }">
									<p><a target="_blank" href="OperateServlet1?name=${list1.name }&operate=ShowProduct">${list1.name }</a><br><label><b>${list1.price }</b></label></p><br>
								</c:when>
								<c:otherwise>
									<p><a target="_blank" href="OperateServlet?name=${list1.name }&operate=UshowProduct">${list1.name }</a><br><label><b>${list1.price }</b></label></p><br>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</body>
</html>