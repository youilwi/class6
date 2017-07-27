<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	
	<title>/views/login/login_form.jsp</title>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resource/css/bootstrap.css"/>
	<script src="${pageContext.request.contextPath }/resource/js/jquery-3.2.0.js"></script>
	<script src="${pageContext.request.contextPath }/resource/js/bootstrap.js"></script>
</head>

<body>
<div class="col-xs-6 col-xs-offset-3">
	<div class="row">
		<div class="col-xs-10">
			<br/>
			<h3 style="text-align:center;">[ 로그-인 화면 ]</h3><br/>

			<form action="login.do?url=${param.url }" method="post" 
				  id="loginForm" class="form-horizontal">
				  
				<div class="form-group">
					<label for="userId" class="col-xs-3 col-xs-offset-1 control-label">아이디</label>
					<div class="col-xs-6">
						<input type="text" class="form-control" id="userId" name="userId"/>
					</div>
				</div>

				<div class="form-group">
					<label for="userPwd" class="col-xs-3 col-xs-offset-1 control-label">비밀번호</label>
					<div class="col-xs-6">
						<input type="password" class="form-control" id="userPwd" name="userPwd"/>
					</div>
				</div>

				<div class="form-group">
					<div class="col-xs-6 col-xs-offset-4">
						<label>
							<input type="checkbox" id="checkboxId" name="checkboxId" />아이디 저장
						</label>
					</div>
				</div>

				<div class="form-group">
					<div style="text-align: center;">
						<button type="submit" class="btn btn-primary">로그ㅡ인</button>						
					</div>
				</div>
			</form>

			<h4 style="text-align: center;">
				<a href="${pageContext.request.contextPath }">홈으로 돌아가기 </a>
			</h4>
		</div>
	</div>
</div>
</body>
</html>
