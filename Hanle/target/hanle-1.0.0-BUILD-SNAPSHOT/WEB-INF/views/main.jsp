<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" session="false"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<%-- <script data-main="/resources/js/main" src="${pageContext.request.contextPath}/resources/js/util.js"></script> --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/lib/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/lib/bootstrap/css/bootstrap-theme.min.css">
<script data-main="/resources/js/main" src="${pageContext.request.contextPath}/resources/assets/lib/jquery/jquery-2.1.0.min.js"></script>
<script data-main="/resources/js/main" src="${pageContext.request.contextPath}/resources/assets/lib/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	container
	<div class="jumbotron col-md-9">
		<h3>Yummy</h3>
		<p>Welcome tothe home of all things Noodle</p>
		<p>
			<a class="btn btn-primary btn-large" href="http://spring.io">Learn more about Spring</a>
			<a th:if="${basket.size &gt; 0 }" class="btn btn-primary btn-large" th:href="@{/showBasket}">Look in your basket</a>
		</p>
	</div>
	<div class="row">
		<div class="col-md-9">
			<div id="message" class="alert alert-info">
				Select from the menu. Currently your basket contains <em th:text="${basket.size}">SOME</em> truly
                scrumptious item(s).
			</div>
		</div>
	</div>
	
</div>
</body>
</html>