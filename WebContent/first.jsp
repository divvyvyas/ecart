<%@page errorPage="errorpage.jsp" %>
<%@include file="db.jsp" %>
<%@include file="ls.jsp" %>
<%@include file="head.jsp" %>
<html>
	<head>
		<title>E-CART</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
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
		</style>
	</head>
	
	<body>
		<div class="container-fluid" id="blur">
			<div id="mobile"></div>
			<div id="watch"></div>
			<div id="laptop"></div>
			<div id="tv"></div>
			<div id="wash"></div>
			<div id="refrigerator"></div>
			<%@include file="footer.jsp" %>
		</div>
		<c:if test="${not empty param.msg }">
			<script>
				alert('${param.msg }');
			</script>
		</c:if>
		<script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>
		<script crossorigin src="https://unpkg.com/react@16/umd/react.production.min.js"></script>
		<script crossorigin src="https://unpkg.com/react-dom@16/umd/react-dom.production.min.js"></script>
		<script type="text/jsx" src="first.jsx"></script>
	</body>
</html>