<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	
	<title>/views/board/boardList.jsp</title>
	
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
<div class="container col-xs-12 col-sm-6">
	<h3>[ 회사 목록 보기 ]</h3>
	
	<div class="indexTag">
		<a href="companyInsertForm.do">새 글 작성하기</a>
		<a href="${pageContext.request.contextPath }/home.do">처음으로 가기</a>
	</div><br />

	<table class="table table-striped">
		<colgroup>
			<%-- <col class="col-xs-1"/>
			<col class="col-xs-3"/>
			<col class="col-xs-3"/>
			<col class="col-xs-2"/>
			<col class="col-xs-3"/> --%>
		</colgroup>

		<thead>
			<tr>
				<th>No</th>
				<th>회사명</th>
				<th>주소</th>
				<th>CEO명</th>
				<th>ceo전화</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="tmp" items="${list }">
                <tr>
					<td>${tmp.companyNo }</td>
					<td><a href="detail.do?companyNo=${tmp.companyNo }">${tmp.companyName }</a></td>
					<td>${tmp.companyAddr }</td>
					<td>${tmp.companyCeo }</td>
					<td>${tmp.ceoPhone }</td>					
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>
