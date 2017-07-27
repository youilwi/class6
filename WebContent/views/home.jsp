<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>

	<title>/views/main.jsp</title>

	<link rel="stylesheet" href="${pageContext.request.contextPath }/resource/css/bootstrap.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resource/css/style.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resource/css/flexslider.css"/>
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Ubuntu:400,500,700"/>
	
	<script src="${pageContext.request.contextPath }/resource/js/jquery-3.2.0.js"></script>
	<script src="${pageContext.request.contextPath }/resource/js/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath }/resource/js/jquery-1.8.0.min.js"></script>
	<script src="${pageContext.request.contextPath }/resource/js/jquery.flexslider-min.js"></script>
	<script src="${pageContext.request.contextPath }/resource/js/functions.js"></script>
</head>

<body>
<div class="container">	
	<%@ include file="include/navbar.jsp" %>
	<%@ include file="include/header.jsp" %>

	<div id="wrapper"> <!-- main -->
		<div class="main">
			<span class="shadow-top"></span> <!-- shell -->
			<div class="shell">
				<div class="container"> <!-- testimonial -->
					<section class="testimonial">
						<h2>Responsive CSS Template with jQuery Slider</h2>
						<p><strong>“</strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras molestie condimentum consequat. Nam leo libero, scelerisque tincidunt commodo id, hendrerit vitae orci. <span class="mobile">Suspendisse eget nibh turpis. Sed at accumsan neque. Praesent purus eros, egestas eu tempus ut, mollis et libero"</span></p>
					</section>
					<!-- testimonial -->

					<section class="blog"><!-- content -->
						<div class="content">
							<img src="${pageContext.request.contextPath }/resource/images/i-img.png" alt=""  class="alignleft"/>
							<div class="cnt">
								<h3>We Guarantee Commitment &amp; Quality</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras molestie condimentum consequat. Nam leo libero, scelerisque tincidunt commodo id, hendrerit vitae orci. Suspendisse eget nibh turpis. Sed at accumsan neque. Praesent purus eros, egestas eu temp</p>
								<ul>
									<li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit</a></li>
									<li><a href="#">Cras molestie condimentum consequat. </a></li>
									<li><a href="#">Nam leo libero, scelerisque tincidunt commodo id</a></li>
									<li><a href="#">Dae molestie condimentum consequat dolor</a></li>
								</ul>
							</div>
						</div><!-- end of content -->
						
						<aside class="sidebar"><!-- sidebar -->
							<!-- widget -->
							<div class="widget">
								<h3>Latest Blog Posts</h3>
								<ul>
									<li>
										<div class="img-holder">
											<a href="#"><img src="${pageContext.request.contextPath }/resource/images/post-img.png" alt="" /></a>
										</div>
										
										<p>
											<a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
												<em class="mobile"> idunt commodo id, hendrerit vitae orci. 
												Suspendisse eget nibh turpis. Sed at accumsan neque praesent purus</em>
												<span>02.02.2012</span>
											</a>											
										</p>
									</li>
									<li>
										<div class="img-holder">
											<a href="#"><img src="${pageContext.request.contextPath }/resource/images/post-img2.png" alt="" /></a>
										</div>
										<p>
											<a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
												<em class="mobile"> idunt commodo id, hendrerit vitae orci. 
												Suspendisse eget nibh turpis. Sed at accumsan neque praesent purus </em>
												<span>01.02.2012</span>
											</a>
										</p>
									</li>
									<li>
										<div class="img-holder">
											<a href="#">
												<img src="${pageContext.request.contextPath }/resource/images/post-img3.png" alt="" />
											</a>
										</div>
										<p>
											<a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
												<em class="mobile"> idunt commodo id, hendrerit vitae orci. Suspendisse eget nibh turpis. Sed at accumsan neque praesent purus </em> 
												<span>30.01.2012</span>
											</a>
										</p>
									</li>
								</ul>
								<div class="cl">&nbsp;</div>
							</div>
							<a href="#" class="view">View All</a> <!-- end of widget -->
						</aside> <!-- end of sidebar -->
						<div class="cl">&nbsp;</div>
					</section>	
					
					<!-- cols -->
					<section class="cols">
						<div class="col">
							<h3>Tableless Construction</h3>
							<img src="${pageContext.request.contextPath }/resource/images/cols-img.png" alt="" class="alignleft"/>
							<div class="col-cnt">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras molestie condimentum conse am leo libero, samet dor.</p>
							</div>
							<a href="#" class="view">View More</a>
						</div>
						<div class="col">
							<h3>We’re Hiring</h3>
							<img src="${pageContext.request.contextPath }/resource/images/cols-img2.png" alt="" class="alignleft"/>
							<div class="col-cnt">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras molestie condimentum conse am leo libero, samet dor.</p>
							</div>
							<a href="#" class="view">View More</a>
						</div>
						<div class="col">
							<h3>Our Partners</h3>
							<img src="${pageContext.request.contextPath }/resource/images/cols-img3.png" alt="" class="alignleft"/>
							<div class="col-cnt">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras molestie condimentum conse am leo libero, samet dor.</p>
							</div>
							<a href="#" class="view">View More</a>
						</div>
						<div class="cl">&nbsp;</div>
					</section><!-- end of cols -->
				</div><!-- end of shell -->
			</div><!-- end of container -->
		</div><!-- end of main -->
	</div><!-- footer-push -->
	<div id="footer-push"></div><!-- end of footer-push -->
	<!-- end of wrapper -->
	
	<%@ include file="include/footer.jsp" %>
</div>
</body>
</html>
