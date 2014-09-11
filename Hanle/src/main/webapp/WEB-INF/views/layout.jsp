<!DOCTYPE html>
<html lang="ko" xmlns="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/assets/lib/bootstrap/css/bootstrap.min.css"/>
<link rel="stylesheet" href="/resources/assets/lib/bootstrap/css/bootstrap-theme.min.css"/>
<script data-main="/resources/js/main" src="/resources/assets/lib/jquery/jquery-2.1.0.min.js"></script>
<script data-main="/resources/js/main" src="/resources/assets/lib/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div th:fragment="head">
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
<div th:fragment="left">
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
<div th:fragment="right">
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
<div th:fragment="bottom">
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
<div th:fragment="left2">
    <div class="well navbar-left col-md-3">
        <ul class="nav navbar-brand">
            <li class="nav-header">Navigation could go here</li>
            <li><a href="http://www.gopivotal.com/">Pivotal, Inc</a></li>
            <li><a href="http://www.springsource.org/spring-xd">Spring XD</a></li>
            <li><a href="http://spring.io">Spring</a></li>
        </ul>
    </div>
</div>

<div th:fragment="foot">
    <footer>
        <p>&copy; Yummy Noodle Bar 2013</p>
    </footer>
</div>
</body>
</html>