<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	
	<title>views/users/join/memberList.jsp</title>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resource/css/bootstrap.css"/>
	<script src="${pageContext.request.contextPath }/resource/js/jquery-3.2.0.js"></script>
	<script src="${pageContext.request.contextPath }/resource/js/bootstrap.js"></script>
	<style>
		.indexTag a{
			font-size: 20px;
			margin-right: 10%;
		}
	</style>
</head>

<body>
<div class="container col-xs-12">
	<h3>[ 화원 목록 보기 ]</h3>
	
	<div class="indexTag">
		<a href="memberInsertForm.do">회원 등록하기</a>
		<a href="${pageContext.request.contextPath }/home.do">처음으로 가기</a>
	</div><br />

	<table class="table table-striped">
		<thead>
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>비밀번호</th>
				<th>등급</th>
				<th>이메일</th>
				<th>핸드폰</th>
				<th>회사번호</th>
				<th>회사이름</th>
				<th>등록일</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="tmp" items="${list }">
                <tr>
					<td>${tmp.userId }</td>
					<td>${tmp.userName }</td>
					<td>${tmp.userPwd }</td>
					<td>${tmp.userLevel }</td>
					<td>${tmp.userEmail }</td>
					<td>${tmp.userPhone }</td>
					<td>${tmp.companyNo }</td>
					<td>${tmp.companyName }</td>
					<td>${tmp.regDate }</td>			
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>
