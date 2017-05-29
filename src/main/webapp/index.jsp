<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring 4 MVC - HelloWorld Index Page</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>
<script>
	$(document).ready(function(){
		$("#button1").click(function(){
			$.ajax({url: "button", data: {'button':'button1'}, success: function(result){
		        $("#div1").html(result);
		    }});
	    });
		$("#button2").click(function(){
			$.ajax({url: "button", data: {'button':'button2'}, success: function(result){
		        $("#div1").html(result);
		    }});
	    });
		$("#button3").click(function(){
			$.ajax({url: "button", data: {'button':'button3'}, success: function(result){
		        $("#div1").html(result);
		    }});
	    });
	});
</script>
</head>
<body>
	<center>
		<h2>Hello World</h2>
		<h3>
			<a href="hello">Click Here</a>
		</h3>
		<input type="button" value="button1" id="button1"> 
		<input	type="button" value="button2" id="button2"> 
		<input type="button" value="button3" id="button3"> 
	    <br/> <br/>
		<div id="div1"></div>
	</center>
</body>
</html>