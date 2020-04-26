var myApp=angular.module("myApp", []);
myApp.controller("FirstController", function($scope){
	
	$scope.category=[
		"MOBILE",
		"LAPTOP",
		"REFRIGERATOR",
		"AC",
		"WASHING MACHINE",
		"WATCH",
		"SMART BAND",
		"TV",
		"HAND BAGS"
	];
});

myApp.directive("brand", function(){
	var content="<select name='brand'>";
	content += "<option value=''>SELECT</option>";
	content += "<option>SAMSUNG</option>";
	content += "<option>APPLE</option>";
	content += "<option>MOTOROLA</option>";
	content += "<option>DELL</option>";
	content += "<option>HP</option>";
	content += "<option>LENOVO</option>";
	content += "<option>ASUS</option>";
	content += "<option>XIAOMI</option>";
	content += "<option>HONOR</option>";
	content += "<option>VIVO</option>";
	content += "<option>OPPO</option>";
	content += "<option>MICROMAX</option>";
	content += "<option>PANASONIC</option>";
	content += "<option>NOKIA</option>";
	content += "<option>WHIRPOOL</option>";
	content += "<option>HAIER</option>";
	content += "<option>MARQ</option>";
	content += "<option>GODREJ</option>";
	content += "<option>LG</option>";
	content += "<option>REALME</option>";
	content += "<option>FASTRACK</option>";
	content += "<option>TITAN</option>";
	content += "<option>SONATA</option>";
	content += "</select>";
	
	return {
		template: content
	};
});

myApp.directive("category", function(){
	var content="<select name='category'>";
	content += "<option value=''>SELECT</option>";
	content += "<option>MOBILE</option>";
	content += "<option>LAPTOP</option>";
	content += "<option>REFRIGERATOR</option>";
	content += "<option>AC</option>";
	content += "<option>WASHING MACHINE</option>";
	content += "<option>WATCH</option>";
	content += "<option>SMART BAND</option>";
	content += "<option>TV</option>";
	content += "<option>HAND BAGS</option>";
	content += "</select>";
	
	return {
		template: content
	};
});