<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
	</head>
	<body ng-app="myApp" ng-init="number=50">
		<div id="root"></div>
		<script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>
		<script crossorigin src="https://unpkg.com/react@16/umd/react.production.min.js"></script>
		<script crossorigin src="https://unpkg.com/react-dom@16/umd/react-dom.production.min.js"></script>
		<script>
	var myApp=angular.module("myApp", []);
	myApp.controller("firstController", function($scope){
		$scope.color="red";
		$scope.fn=function(){
			return "color is "+$scope.color;
		};
	});
	myApp.run(function($rootScope){
		$rootScope.value="hello";
	});
</script>
<script type="text/jsx">
			class NameForm extends React.Component {
				render() {
					return (
						<div>
							<form>
								Name:
								<input type="text" ng-model="color"/>
								<span ng-bind="color"></span>
								<input type="submit" value="Submit" />
							</form>
						</div>
					);
				}
			}
			ReactDOM.render(<NameForm/>, document.getElementById('root'));
		</script>
	</body>
</html>