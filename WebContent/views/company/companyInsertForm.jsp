<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	
	<title>views/company/companyInsertForm.jsp</title>
	
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
</head>

<body>
<div class="container">
	<div class="col-xs-4 col-xs-offset-4">
		<form id="companyInsertForm" action="companyInsert.do" method="post">			
			<br/><br/>
			<h3 style="text-align:center;">[ 회사 등록 화면 ]</h3><br/>
			
			<table>
				<thead>
					<tr>
						<!-- <th width="40%"></th>
						<th width="40%"></th>
						<th width="20%"></th> -->
					</tr>							
				</thead>
				
				<tbody>
					<tr>
						<td><label for="companyName">회사이름</label></td>
						<td colspan="2">
							<input type="text" class="form-control" id="companyName" name="companyName" />
						</td>
					</tr>

					<tr>
						<td><label for="companyAddr">회사주소</label></td>
						<td colspan="2">
							<input type="text" class="form-control" id="companyAddr" name="companyAddr" />
						</td>
					</tr>						

					<tr>
						<td><label for="companyCeo">대표이름</label></td>
						<td colspan="2">
							<input type="text" class="form-control" id="companyCeo" name="companyCeo"/>
						</td>
					</tr>
					
					<tr>
						<td><label for="ceoPhone">전화번호</label></td>
						<td colspan="2">
							<input type="text" class="form-control" id="ceoPhone" name="ceoPhone"/>
						</td>
					</tr>

					<tr>
						<td colspan="3" style="text-align:center;">
							<button type="submit" class="btn btn-primary" id="saveBtn">
								<i class="glyphicon glyphicon-save"></i>등록
							</button>&nbsp;&nbsp;&nbsp;
							<button type="reset" class="btn btn-warning" id="cancelBtn">
								<i class="glyphicon glyphicon-remove"></i>취소
							</button>
						</td>
					</tr>
				</tbody>
			</table>			
		</form>
	</div>
</div>
</body>
</html>
