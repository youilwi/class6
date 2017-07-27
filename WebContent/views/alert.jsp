<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	
	<title>/views/users/alert.jsp</title>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resource/css/bootstrap.css"/>
	<script src="${pageContext.request.contextPath }/resource/js/jquery-3.2.0.js"></script>
	<script src="${pageContext.request.contextPath }/resource/js/bootstrap.js"></script>
</head>

<body>
<div class="container">
	<h3>알림</h3>
	
	<div class="alert alert-success">
		${msg }
		<a class="alert-link" href="${url }">확인</a>
	</div>
</div>
</body>
</html>
