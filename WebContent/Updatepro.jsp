<%@include file="db.jsp" %>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>ADD PRODUCT</title>
	</head>
	<body ng-app="myApp">
		<c:forEach var="list" items="${list }">
			<a href="Showpro.jsp">BACK</a>
			<div id="div" ng-controller="FirstController">
				<h1 align="center">ADD NEW PRODUCT</h1>
				<form action="OperateServlet1">
					<input type="hidden" name="operate" value="UpdateProcuct">
					<table align="center" border=2px solid>
						<tr>
							<td>NAME</td>
							<td><input type='text' name='name' value="${list.name }" readonly="readonly"></td>
						</tr>
						<tr>
							<td>PRICE</td>
							<td><input type='number' name='price' value="${list.price }" required="required"></td>
						</tr>
						<tr>
							<td>BRAND</td>
							<td>
								<brand/>
							</td>
						</tr>
						<tr>
							<td>CATEGORY</td>
							<td>
								<category/>
							</td>
						</tr>
						<tr>
							<td>QUANTITY</td>
							<td><input type="number" value="${list.quantity }" name='quantity' required="required"></td>
						</tr>
						<tr>
							<td>IMAGE</td>
							<td><input type="file" value="${list.image }" name='image'></td>
						</tr>
						<tr>
						<tr>
							<td>TYPE</td>
							<td><input type="text" value="${list.type }" name='type'></td>
						</tr>
						<tr>
							<td>Details</td>
							<td><textarea rows="18" cols="120" placeholder="DETAILS" name='details' >${list.details }</textarea></td>
						</tr>
						<tr>
							<td>Specifications</td>
							<td><textarea rows="18" cols="120" placeholder="SPECIFICATIONS" name='specifications' >${list.specifications }</textarea></td>
						</tr>
						<tr>
							<td>DISPLAY</td>
							<td><input type="text" required="required" name='display' value="${list.display }" placeholder="display/hide"></td>
						</tr>
							<td></td>
							<td><input style="width: 20%" type="submit"></td>
						</tr>
					</table>
				</form>
			</div>
			<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
			<script src="angular.js"></script>
		</c:forEach>
	</body>
</html>