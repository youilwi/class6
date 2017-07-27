<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

</head>
<body>

<header  id="header">
	<div class="shell">
		<div class="header-inner">
			<div class="header-cnt">
				<h1 id=""><a href="#">Simple</a></h1> <!-- id에 logo를 추가하여 이미지를 더할 수 있다. -->
				<span class="desktop" style="font-size: 17px; color: #cecece;">
					<c:forEach var="tmp" items="${info }">
						${tmp }<br/>
					</c:forEach>
				</span>
			</div>
			
			<div class="slider-holder">
				<div class="flexslider">
					<ul class="slides">
						<li><img src="${pageContext.request.contextPath }/resource/images/11.jpg" alt="" /></li>
						<li><img src="${pageContext.request.contextPath }/resource/images/22.jpg" alt="" /></li>
						<li><img src="${pageContext.request.contextPath }/resource/images/33.jpg" alt="" /></li>
						<li><img src="${pageContext.request.contextPath }/resource/images/44.jpg" alt="" /></li>
						<li><img src="${pageContext.request.contextPath }/resource/images/55.jpg" alt="" /></li>
					</ul>
				</div>
			</div>
			<div class="cl">&nbsp;</div>
		</div>
		<div class="cl">&nbsp;</div>
	</div>
</header>
</body>
</html>
