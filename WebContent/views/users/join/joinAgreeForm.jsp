<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	
	<title>/views/join/agree.jsp</title>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resource/css/bootstrap.css"/>
	<script src="${pageContext.request.contextPath }/resource/js/jquery-3.2.0.js"></script>
	<script src="${pageContext.request.contextPath }/resource/js/bootstrap.js"></script>
</head>

<body>
<div class="container">
	<div class="col-xs-6 col-sm-6 col-sm-offset-1 col-md-6 col-md-offset-2 col-lg-6 col-lg-offset-3">
		<div class="terms">
			<h5>회원가입 <em>회원 가입을 하기 전에 회원약관을 읽어보시기 바랍니다.</em></h5>
			<textarea cols="80" rows="10" readonly="readonly">

[회원약관]

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem at, nam laudantium magni officiis cumque quam quae possimus saepe nihil minima repellendus minus hic sit mollitia delectus, provident quos alias.
	              
	        </textarea>
			<div>
				<input id="termsAgree" name="termsAgree" type="checkbox" class="input_check">약관에 동의합니다.
			</div>
		</div> 

		<div class="terms">
			<h5>개인정보 수집 및 이용에 대한 안내</h5>
			<textarea cols="80" rows="10" readonly="readonly">

[개인정보의 수집 및 이용목적]

가. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis quo aliquid obcaecati pariatur atque earum, eligendi sequi, dignissimos nisi suscipit quibusdam, rem praesentium cum. Libero doloribus dolor fuga illum impedit.

나. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et ullam obcaecati assumenda culpa, deserunt libero quaerat voluptatum, rerum porro temporibus qui cumque excepturi eaque, quidem fugiat explicabo eligendi ipsa vel.

다. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur quisquam quaerat, doloribus architecto autem, nisi. Et sapiente sunt quam incidunt in reprehenderit consequatur reiciendis iure rem, officiis expedita ipsam eveniet.
          
            </textarea>
			<div>
				<input id="termsAgree2" name="termsAgree" type="checkbox" class="input_check">이용에 동의합니다.
			</div>
		</div>

		<div class="row">
			<input id="AllAgree" type="checkbox" class="input_check">모두 동의
		</div>	

		<div class="row">
			<button class="btn btn-success" id="joinBtn">회원가입하러 가기</button>
			<button class="btn btn-danger" onclick="location.href='home.html' ">회원가입하러 안가</button>
		</div>		
	</div>
</div>
<script>
	// 회원가입 버튼을 눌렀을때 두가지다 동의 되었나 체크후
	// 다 동의 되었으면 회원가입하는 창 하나 더 만들어서 거기로 이동
	// 다 동의 되어있지 않으면 알림창 하나 띄운후에 아무 동작 안하도록

	$(document).ready(function(){ //최상단 체크박스 클릭
	    $("#AllAgree").click(function(){ //클릭되었으면
	        if($("#AllAgree").prop("checked")){
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
	            $("input[name=termsAgree]").prop("checked",true);	            
	        }else{	//클릭이 안되있으면
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
	            $("input[name=termsAgree]").prop("checked",false);
	        }
	    })
	})

	$("#joinBtn").click(function () {
        if($("#termsAgree").prop("checked") && $("#termsAgree2").prop("checked")) {
        	location.replace("UsersJoinForm.do");
            return true;
        } else {
            alert("회원 약관과 개인정보 수집 및 이용목적에 대해 모두 동의해 주세요.");
            return false;
        }
    });
</script>

</body>
</html>
