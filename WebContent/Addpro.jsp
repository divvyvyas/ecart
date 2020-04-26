<%@page errorPage="errorpage.jsp" %>
<html>
	<head>
		<title>ADD PRODUCT</title>
		<style>
			input{
				width: 100%;
			}
			textarea {
				resize: none;
			}
			select {
				width: 100%;
			}
			#div{
				float: right;
				height: auto;
				width: 80%;
			}
		</style>
		
	</head>
	<body ng-app="myApp">
		<a href="Showpro.jsp">BACK</a>
		<div id="div" ng-controller="FirstController">
			<h1 align="center">ADD NEW PRODUCT</h1>
			<form action="OperateServlet1">
				<input type="hidden" name="operate" value="AddProduct">
				<table align="center" border=2px solid>
					<tr>
						<td>NAME</td>
						<td><input type='text' name='name' required="required"></td>
					</tr>
					<tr>
						<td>PRICE</td>
						<td><input type='number' name='price' required="required"></td>
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
						<td><input type="number" name='quantity' required="required"></td>
					</tr>
					<tr>
						<td>IMAGE</td>
						<td><input type="file" name='image'></td>
					</tr>
					<tr>
					<tr>
						<td>TYPE</td>
						<td><input type="text" name='type'></td>
					</tr>
					<tr>
						<td>Details</td>
						<td><textarea rows="18" cols="120" placeholder="DETAILS" name='details' >
						</textarea></td>
					</tr>
					<tr>
						<td>Specifications</td>
						<td><textarea rows="18" cols="120" placeholder="SPECIFICATIONS" name='specifications' >
						</textarea></td>
					</tr>
					<tr>
						<td>DISPLAY</td>
						<td><input type="text" required="required" name='display' value="hide" placeholder="display/hide"></td>
					</tr>
						<td></td>
						<td><input style="width: 20%" type="submit"></td>
					</tr>
				</table>
			</form>
		</div>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
		<script src="angular.js"></script>
	</body>
</html>