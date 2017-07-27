<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>views/company/companyUpdateForm.jsp</title>
</head>

<body>
	<h3>회사 정보 수정 페이지입니다.</h3>
	<form id="companyUpdateForm" action="companyUpdate.do" method="post">
		<input type="hidden" name="companyNo" value="${dto.companyNo }"/>
		
		<label for="companyNo">회사번호</label>		
		<input type="text" id="companyNo" value="${dto.companyNo }" disabled="disabled"/>
		<br />
		<label for="companyName">회사이름</label>		
		<input type="text" id="companyName" name="companyName" value="${dto.companyName }"/>
		<br />
		<label for="companyAddr">회사주소</label>
		<input type="text" id="companyAddr" name="companyAddr" value="${dto.companyAddr }"/>
		<br />
		<label for="companyCeo">회사대표</label>
		<input type="text" id="companyCeo" name="companyCeo" value="${dto.companyCeo }"/>
		<br />
		<label for="ceoPhone">대표전화</label>
		<input type="text" id="ceoPhone" name="ceoPhone" value="${dto.ceoPhone }"/>
		<br />

		<br /><br />		
		<button type="submit">수정하기</button>
	</form>
</body>
</html>
