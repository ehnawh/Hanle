<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" session="false"%>
<div id="sidebar-top" class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
        	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#sidebar-top .navbar-collapse">
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	        </button>
	       	<a class="navbar-brand" href="/">Project Name</a>
        </div>
        <div class="collapse navbar-collapse">
            <p class="navbar-text pull-right">v0.1</p>
            <ul class="nav navbar-nav">
                <li class="dropdown">
                	<a id="dropdownMenu" href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="false">Home <span class="caret"></span></a>
                	<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
                		<li class="dropdown-header">Home</li>
                		<li><a href="/">Welcome</a></li>
                		<li class="divider"></li>
                		<li><a href="/main">메인</a></li>
                	</ul>
                </li>
                <li class="dropdown">
                	<a id="dropdownMenu1" href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">About <span class="caret"></span></a>
                	<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                		<li class="dropdown-header">B</li>
                		<li><a href="#">하하</a></li>
                		<li><a href="#">호호</a></li>
                	</ul>
                </li>
                <li class="dropdown">
                	<a href="#" data-toggle="dropdown" class="dropdown-toggle" data-hover="dropdown">Contact <span class="caret"></span></a>
                	<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu2">
                		<li class="dropdown-header">Contact</li>
                		<li><a href="#">하하</a></li>
                		<li><a href="#">호호</a></li>
                	</ul>
                </li>
                <li>
                	<a href="/board">Boards</a>
                </li>
            </ul>
            <form class="navbar-form navbar-left" role="search">
            	<div class="form-group">
            		<input type="text" class="form-control" placeholder="검색어"/>
            		<button type="submit" class="btn btn-default">찾기</button>
            	</div>
            </form>
            <div class="navbar-form navbar-right btn-group">
            	<button type="button" class="btn btn-sm btn-primary">로그인</button>
        		<button type="button" class="btn btn-sm btn-info">회원가입</button>
        		<button type="button" class="btn btn-sm btn-warning">아이디·비밀번호 찾기</button>
            </div>
        </div>
    </div>
</div>