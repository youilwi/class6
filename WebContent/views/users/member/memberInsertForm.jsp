<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	
	<title>views/users/join/memberInsertForm.jsp</title>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resource/css/bootstrap.css"/>
	<script src="${pageContext.request.contextPath }/resource/js/jquery-3.2.0.js"></script>
	<script src="${pageContext.request.contextPath }/resource/js/bootstrap.js"></script>
	<style>
		body{
			padding-top:10px;
		}
		th, td{
			padding: 5px;
		}
	</style>
	<script>
		function searchCompanyName(){
			window.open("searchCompany.jsp", "소속회사 찾기", 
					"width=500, height=400, top=300, left=300");
		}
	</script>
</head>

<body>
<div class="container">
	<div class="col-xs-4 col-xs-offset-4 mainContents">
		<form id="memberInsertForm" action="memberInsert.do" method="post">
		
			<div class="row"><br/><br/>
				<h3 style="text-align:center;">[ 회원가입 화면 ]</h3><br/>
				
				<table>
					<thead>
						<tr>
							<th width="20%"></th>
							<th width="60%"></th>
							<th width="20%"></th>
						</tr>							
					</thead>
					
					<tbody>
						<tr>
							<td><label for="userId">아이디</label></td>
							<td>
								<input type="text" class="form-control" id="userId" name="userId" />
							</td>
							<td><button>확인</button></td>
						</tr>
						
						<tr>
							<td><label for="userPwd">비밀번호</label></td>
							<td colspan="2">
								<input type="password" class="form-control" id="userPwd" name="userPwd" />
							</td>
						</tr>
						
						<tr>
							<td><label for="userPwd2">비밀번호</label></td>
							<td colspan="2">
								<input type="password" class="form-control" id="userPwd2" name="userPwd2" />
							</td>
						</tr>
						
						<tr>
							<td><label for="userName">이름</label></td>
							<td colspan="2">
								<input type="text" class="form-control" id="userName" name="userName" />
							</td>
						</tr>
						
						<tr>
							<td><label for="userLevel">등급</label></td>
							<td colspan="2">
								<input type="text" class="form-control" id="userLevel" name="userLevel" readonly />
							</td>
						</tr>					

						<tr>
							<td><label for="userEmail">이메일</label></td>
							<td colspan="2">
								<input type="text" class="form-control" id="userEmail" name="userEmail"/>
							</td>
						</tr>
						
						<tr>
							<td><label for="userPhone">전화번호</label></td>
							<td colspan="2">
								<input type="text" class="form-control" id="userPhone" name="userPhone"/>
							</td>
						</tr>
						
						<tr>
							<td><label>회사정보</label></td>
							<td>
								<input type="text" class="form-control" id="companyNo" name="companyNo" readonly/>
								<input type="text" class="form-control" id="companyName" name="companyName" readonly/>
							</td>
							<td>
								<button type="button" class="btn btn-primary" onclick="javascript:searchCompanyName()" >소속<br/>회사찾기</button>
							</td>
						</tr>
						
						<tr>
							<td colspan="3" style="text-align:center;">
								<button type="submit" class="btn btn-primary" id="saveBtn">
									<i class="glyphicon glyphicon-save"></i>&nbsp;회원가입
								</button>&nbsp;&nbsp;&nbsp;
								<button type="reset" class="btn btn-warning" id="cancelBtn">
									<i class="glyphicon glyphicon-remove"></i>&nbsp;취소
								</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</form>
	</div>
</div>
</body>
</html>
