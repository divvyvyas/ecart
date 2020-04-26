<!doctype html>
<%@page import="ecart.Helper"%>
<%@page import="com.google.gson.JsonArray"%>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>jQuery UI Autocomplete - Default functionality</title>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
  src="https://code.jquery.com/ui/1.12.0/jquery-ui.min.js"
  integrity="sha256-eGE6blurk5sHj+rmkfsGYeKyZx3M4bG+ZlFyA7Kns7E="
  crossorigin="anonymous"></script>
	<script>
	/*$(document).ready(function() {
		$(function() {
		    $("#tags").autocomplete({
				source: function(request, response) {
					$.ajax({
						url: "demo.jsp",
						type: "GET",
						data: {
						    list: request.list
						},
						dataType: "json",
						success: function(data) {
						    response(data);
						}
					});
				}
		    });
		});
	});*/
	$( function() {
	    var availableTags = [
	      "ActionScript",
	      "AppleScript",
	      "Asp",
	      "BASIC",
	      "C",
	      "C++",
	      "Clojure",
	      "COBOL",
	      "ColdFusion",
	      "Erlang",
	      "Fortran",
	      "Groovy",
	      "Haskell",
	      "Java",
	      "JavaScript",
	      "Lisp",
	      "Perl",
	      "PHP",
	      "Python",
	      "Ruby",
	      "Scala",
	      "Scheme"
	    ];
	    
	/*    $( "#tags" ).autocomplete({
	      source: availableTags
	    });
	  } );*/
	
	</script>
</head>
<body>
<%
	Helper hp=new Helper();
	JsonArray ary=new JsonArray();
	ary.add("hello");
	ary.add("world");
	ary.add("held");
	ary.add("hello");
	JsonArray search=hp.sort();
%>
 
<div class="ui-widget">
  <label for="tags">Tags: </label>
  <input onkeyup="test1()" id="tags">
  <div id="div1">hello</div>
</div>
 
 <script>
 $( "#tags" ).autocomplete({
	      source: <%=search %>
	    });
 </script>
</body>
</html>