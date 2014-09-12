<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" xmlns:c="http://java.sun.com/jsp/jstl/core">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<%-- <script data-main="/resources/js/main" src="${pageContext.request.contextPath}/resources/js/util.js"></script> --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/lib/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/lib/bootstrap/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
<script data-main="/resources/js/main" src="${pageContext.request.contextPath}/resources/assets/lib/jquery/jquery-2.1.0.min.js"></script>
<script data-main="/resources/js/main" src="${pageContext.request.contextPath}/resources/assets/lib/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div>
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
	    <div class="container">
	        <div class="navbar-header">
	        	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		        </button>
		       	<a class="navbar-brand" href="#">Project Name</a>
	        </div>
	        <div class="collapse navbar-collapse">
	            <p class="navbar-text pull-right">
	
	            </p>
	            <ul class="nav navbar-nav">
	                <li><a href="#">Home</a></li>
	                <li><a href="#">About</a></li>
	                <li><a href="#">Contact</a></li>
	            </ul>
	        </div> <!--/.nav-collapse -->
	    </div>
    </div>
</div>
<div>
    <div id="sidebar-left" class="navbar navbar-default" role="navigation">
	        <div class="navbar-header">
		       	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		        </button>
		       	<!-- <a class="navbar-brand" href="#">Project Name</a> -->
	        </div>
	        <div class="collapse navbar-collapse">
	            <ul class="nav navbar-nav">
	                <li><a href="#">Home</a></li>
	                <li><a href="#">About</a></li>
	                <li><a href="#">Contact</a></li>
	            </ul>
	        </div> <!--/.nav-collapse -->
    </div>
</div>
<div>
    <div id="sidebar-right" class="navbar navbar-default" role="navigation">
	        <div class="navbar-header">
		       	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		        </button>
		       	<!-- <a class="navbar-brand" href="#">Project Name</a> -->
	        </div>
	        <div class="collapse navbar-collapse">
	            <ul class="nav navbar-nav">
	                <li><a href="#">Home</a></li>
	                <li><a href="#">About</a></li>
	                <li><a href="#">Contact</a></li>
	            </ul>
	        </div> <!--/.nav-collapse -->
    </div>
</div>
<div>
    <div class="navbar navbar-default navbar-fixed-bottom" role="navigation">
	    <div class="container">
	        <div class="navbar-header">
	        	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		        </button>
		       	<a class="navbar-brand" href="#">Project Name</a>
	        </div>
	        <div class="collapse navbar-collapse">
	            <ul class="nav navbar-nav">
	                <li><a href="#">Home</a></li>
	                <li><a href="#">About</a></li>
	                <li><a href="#">Contact</a></li>
	            </ul>
	        </div> <!--/.nav-collapse -->
	    </div>
    </div>
</div>
<div class="container">
	<div class="page-header">
		<h2>ABCD</h2>
	</div>
	<div class="jumbotron col-md-9">
		<h3>Title</h3>
		<h3><c:out value="abcd"/></h3>
		<p>Welcome to the home</p>
		<p>
			<a class="btn btn-primary btn-lg" href="http://spring.io">Learn more about Spring</a>
		</p>
	</div>
	<div class="col-md-3">
		<h3>Title</h3>
		<p>Welcome to the home</p>
		<p>
			<a class="btn btn-primary btn-lg" href="http://spring.io">Learn more about Spring</a>
		</p>
	</div>
	<div class="row">
		<div class="col-md-9">
			<div id="message" class="alert alert-info">message</div>
		</div>
	</div>
	
</div>
</body>
</html>