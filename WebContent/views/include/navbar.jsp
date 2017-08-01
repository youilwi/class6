<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>

</head>
<body>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">인테리어 집닥</a>
		</div>
		
		<ul class="nav navbar-nav">
			<li class="active"><a href="${pageContext.request.contextPath }/home.do">Home</a></li>
			
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">회사안내
				<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">회사 소개</a></li>
					<li><a href="#">갤러리 상품 홍보</a></li>
				</ul>
			</li>
			
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">소식/이벤트
				<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">공지사항 조회</a></li>
					<li><a href="#">질의/응답 게시판 조회</a></li>
					<li><a href="#">이벤트 소식 조회</a></li>
				</ul>
			</li>
			
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">회원 페이지
				<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="${pageContext.request.contextPath }/member/memberUpdateForm.do">내 정보 수정</a></li>
					<li><a href="${pageContext.request.contextPath }/member/memberDeleteForm.do">회원 탈퇴</a></li>
					<li><a href="#">마일리지 확인</a></li>
				</ul>
			</li>

			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">회사 페이지
				<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="${pageContext.request.contextPath }/company/companyUpdateForm.do">회사 정보 수정</a></li>
					<li><a href="${pageContext.request.contextPath }/company/companyList.do">회사 리스트 보기</a></li>
				</ul>
			</li>

			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">관리 자페이지
				<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">게시판 관리</a></li>
					<li><a href="#">회원/회사 관리</a></li>
				</ul>
			</li>
		</ul>
	    
		<c:choose>
			<c:when test="${empty id }">
				<li style="color: white; padding-top:5px; text-align: right;">
					<a href="users/login/loginForm.do?url=${pageContext.request.contextPath }">로그 인</a>
				</li>
				<li style="color: white; text-align: right;">
					<a href="users/join/memberInsertForm.do">회원 가입</a>
				</li>
			</c:when>
					
			<c:otherwise>
				<li style="color: white; padding-top:5px; text-align: right;">
					<strong><a href="users/login/private/info.do">${id } 님</a></strong> 반갑습니다.~
				</li>
				<li style="color: white; text-align: right;">
					<a href="users/login/logout.do">로그 아웃</a>
				</li>
			</c:otherwise>
		</c:choose>	   
	</div>
</nav>
</body>
</html>
