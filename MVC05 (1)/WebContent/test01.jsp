<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Rainbow Bootstrap 4.0 Theme by templatemo</title>
<!--
Rainbow Theme
http://www.templatemo.com/tm-485-rainbow
-->
<!-- load stylesheets -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
<!-- Google web font "Open Sans" -->
<link rel="stylesheet"
	href="font-awesome-4.5.0/css/font-awesome.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Bootstrap style -->
<link rel="stylesheet" href="css/templatemo-style.css">
<!-- Templatemo style -->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
<script type="text/javascript">
	function btnWrite() {
		$("#bc").css("display", "none");
		$("#bf").css("display", "block");
		$("#resetBtn").trigger("click"); // => 강제로 resetBtn 버튼에 클릭이벤트를 발생하게 해준다.

	}
	function logoutFn() {
		$.ajax({
			url : "ajaxlogout.do",
			type : "get",
			success : function() {
				location.href = "test01.jsp";
			},
			error : function() {
				alert("error");
			}
		});
	}
	function joinMemberfn() {
		$.ajax({
			url : "ajaxjoinmember.do",
			type : "get",
			success : function() {
				location.href = "test01.jsp";
			},
			error : function() {
				alert("error");
			}
		});
	}
	function loginFN() {
		location.href = "<c:url value='/join.jsp'/>";// 게시판 글쓰기로

	}
	function mypageFN() {
		location.href = "<c:url value='/join.jsp'/>";// 게시판 글쓰기로

	}
</script>
</head>

<body class="tm-bg-img-content">

	<div class="tm-bg-img-header">
		<div class="container-fluid">

			<div id="top" class="tm-header-container">

				<!-- 1. Site Header -->
				<div class="row tm-site-header">
					<div
						class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 text-xs-center">

						<h1 class="tm-site-title">작은도서관</h1>
						<p class="tm-site-description">
							<c:if test="${sessionScope.userVO!=null}">
								<p style="font-size: 20px">
									${sessionScope.userVO.user_name}님 방문을 환영합니다.</p>

								<input type="button" value="로그아웃" onclick="logoutFn()"
									class="btn btn-info btn-sm">
							</c:if>
						</p>

					</div>
				</div>

				<!-- 2. Navigation -->
				<div class="row tm-navbar-row tm-navbar-row-absolute">
					<div class="tm-navbar-container">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">

							<nav class="navbar navbar-full">

								<div class="text-xs-center tm-navbar-rounded" id="tmNavbar">

									<ul class="nav navbar-nav">
										<li class="nav-item"><a class="nav-link" href="#top">Home</a>
										</li>
										<li class="nav-item"><a class="nav-link"
											href="#tm-section-1">About</a></li>
										<li class="nav-item"><a class="nav-link"
											href="#tm-section-3">Packages</a></li>
										<li class="nav-item"><a class="nav-link external"
											href="elements.html">Elements</a></li>
										<li class="nav-item"><a class="nav-link"
											onclick="mypageFN()">마이페이지</a></li>

										<c:if test="${sessionScope.userVO==null}">
											<li class="nav-item"><input type='button' value='로그인'
												class="btn btn-info" onclick="loginFN()" /></li>
										</c:if>




									</ul>

								</div>

							</nav>
						</div>
						<!-- col-xs-12 -->
					</div>
					<!-- tm-navbar-container -->
				</div>
				<!-- row -->

			</div>
			<!-- .tm-header-container -->

			<!-- 3. About -->
			<div class="row" id="tm-section-1">

				<div class="container">
					<section class="tm-2-col-img-text">

						<div
							class="col-xs-12 col-sm-12 col-md-12 col-lg-5 col-xl-5 tm-2-col-img">
							<i class="fa fa-5x fa-map-o"></i> <i class="fa fa-5x fa-rocket"></i>
						</div>

						<div
							class="col-xs-12 col-sm-12 col-md-12 col-lg-7 col-xl-7 tm-2-col-text">
							<h2 class="tm-2-col-text-title">Lorem ipsum dolor</h2>
							<p class="tm-2-col-text-description">Donec mattis ipsum in
								erat viverra commodo. Proin sapien lacus, euismod eget nisl in,
								elementum posuere massa. Curabitur a odio eros. Cras aliquam
								lectus erat, non semper est volutpat eget. Ut eget erat
								tincidunt.</p>
						</div>

					</section>

					<section class="tm-2-col-img-text" id="tm-section-2">

						<div
							class="col-xs-12 col-sm-12 col-md-12 col-lg-7 col-xl-7 tm-2-col-text">
							<h2 class="tm-2-col-text-title">Lorem ipsum dolor</h2>
							<p class="tm-2-col-text-description">Donec mattis ipsum in
								erat viverra commodo. Proin sapien lacus, euismod eget nisl in,
								elementum posuere massa. Curabitur a odio eros. Cras aliquam
								lectus erat, non semper est volutpat eget. Ut eget erat
								tincidunt.</p>
						</div>

					</section>
				</div>

			</div>
			<!-- About section, tm-section-1 & 2 -->

		</div>
		<!-- container-fluid -->
	</div>
	<!-- tm-bg-img-header -->

	<div class="container-fluid">

		<!-- Plan -->
		<div class="row tm-section" id="tm-section-3">

			<div
				class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 text-xs-center">
				<h2 class="tm-section-title">Select your plan</h2>
				<p class="tm-section-subtitle">Phasellus in magna elementum,
					tincidunt metus dictum, condimentum eros. Aenean ante erat, blandit
					quis mi sed, convallis luctus purus. Donec accumsan nulla sed odio.
				</p>
			</div>

			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">

				<div class="tm-plan-boxes-container">

					<div
						class="col-xs-12 col-sm-12 col-md-4 col-lg-4 col-xl-4 tm-table-col">

						<table class="tm-table-full-width">
							<thead>
								<tr class="tm-bg-green-1">
									<th class="tm-plan-table-header">Basic Pack</th>
								</tr>
							</thead>
							<tbody>
								<tr class="tm-bg-green-2">
									<td class="tm-plan-table-cell">10 email addresses</td>
								</tr>
								<tr class="tm-bg-green-3">
									<td class="tm-plan-table-cell">100 GB space</td>
								</tr>
								<tr class="tm-bg-green-1">
									<td class="tm-plan-table-cell">1,000 GB bandwidth</td>
								</tr>
								<tr class="tm-bg-green-2">
									<td class="tm-plan-table-cell">USD $10 per month</td>
								</tr>
								<tr class="tm-bg-green-3">
									<td
										class="tm-plan-table-cell tm-plan-table-cell-pad-small text-xs-center">
										<a href="#" class="tm-bg-green-1 tm-btn-rounded tm-btn-green">Buy</a>
									</td>
								</tr>
							</tbody>
						</table>

					</div>

					<div
						class="col-xs-12 col-sm-12 col-md-4 col-lg-4 col-xl-4 tm-table-col">

						<table class="tm-table-full-width">
							<thead>
								<tr class="tm-bg-blue-1">
									<th class="tm-plan-table-header">Professional Pack</th>
								</tr>
							</thead>
							<tbody>
								<tr class="tm-bg-blue-2">
									<td class="tm-plan-table-cell">20 email addresses</td>
								</tr>
								<tr class="tm-bg-blue-3">
									<td class="tm-plan-table-cell">200 GB space</td>
								</tr>
								<tr class="tm-bg-blue-1">
									<td class="tm-plan-table-cell">2,000 GB bandwidth</td>
								</tr>
								<tr class="tm-bg-blue-2">
									<td class="tm-plan-table-cell">USD $15 per month</td>
								</tr>
								<tr class="tm-bg-blue-3">
									<td
										class="tm-plan-table-cell tm-plan-table-cell-pad-small text-xs-center">
										<a href="#" class="tm-bg-blue-1 tm-btn-rounded tm-btn-blue">Buy</a>
									</td>
								</tr>
							</tbody>
						</table>

					</div>

					<div
						class="col-xs-12 col-sm-12 col-md-4 col-lg-4 col-xl-4 tm-table-col">

						<table class="tm-table-full-width">
							<thead>
								<tr class="tm-bg-gold-1">
									<th class="tm-plan-table-header">Gold Pack</th>
								</tr>
							</thead>
							<tbody>
								<tr class="tm-bg-gold-2">
									<td class="tm-plan-table-cell">30 email addresses</td>
								</tr>
								<tr class="tm-bg-gold-3">
									<td class="tm-plan-table-cell">300 GB space</td>
								</tr>
								<tr class="tm-bg-gold-1">
									<td class="tm-plan-table-cell">3,000 GB bandwidth</td>
								</tr>
								<tr class="tm-bg-gold-2">
									<td class="tm-plan-table-cell">USD $20 per month</td>
								</tr>
								<tr class="tm-bg-gold-3">
									<td
										class="tm-plan-table-cell tm-plan-table-cell-pad-small text-xs-center">
										<a href="#" class="tm-bg-gold-1 tm-btn-rounded tm-btn-gold">Buy</a>
									</td>
								</tr>
							</tbody>
						</table>

					</div>

				</div>
				<!-- tm-plan-boxes-container -->

			</div>
			<!-- .col-xs-12 -->

		</div>
		<!-- row -->

	</div>
	<!-- container-fluid -->

	<div class="tm-bg-img-content">
		<div class="container-fluid">
			<div class="row" id="tm-section-4">
				<div
					class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 text-xs-center">

					<h2 class="tm-section-title">Contact Us</h2>
					<p class="tm-section-subtitle tm-section-subtitle-contact">
						Phasellus in magna elementum, tincidunt metus dictum, condimentum
						eros. Aenean ante erat, blandit quis mi sed, convallis luctus
						purus. Donec accumsan nulla sed odio.</p>

				</div>
			</div>
		</div>
	</div>
	<!-- contact section header -->

	<div class="tm-bg-img-header tm-section-contact-form">
		<div class="container-fluid">
			<div class="row">

				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
					<form action="index.html" method="post" class="tm-contact-form">
						<div
							class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 tm-form-group-left">
							<input type="text" id="contact_name" name="contact_name"
								class="form-control" placeholder="Name" required />
						</div>
						<div
							class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 tm-form-group-right">
							<input type="email" id="contact_email" name="contact_email"
								class="form-control" placeholder="Email" required />
						</div>
						<div class="form-group">
							<input type="text" id="contact_subject" name="contact_subject"
								class="form-control" placeholder="Subject" required />
						</div>
						<div class="form-group">
							<textarea id="contact_message" name="contact_message"
								class="form-control" rows="6" placeholder="Message" required></textarea>
						</div>

						<button type="submit"
							class="btn tm-btn-brown-square pull-xs-right">Submit</button>
					</form>
				</div>
				<!-- col -->

			</div>

			<div class="row tm-footer">
				<div
					class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 text-xs-center">

					<div class="tm-social-icons-container">
						<a href="#" class="tm-social-icon-link-brown"><i
							class="fa fa-facebook tm-social-icon"></i></a> <a href="#"
							class="tm-social-icon-link-brown"><i
							class="fa fa-google-plus tm-social-icon"></i></a> <a href="#"
							class="tm-social-icon-link-brown"><i
							class="fa fa-twitter tm-social-icon"></i></a> <a href="#"
							class="tm-social-icon-link-brown"><i
							class="fa fa-behance tm-social-icon"></i></a> <a href="#"
							class="tm-social-icon-link-brown"><i
							class="fa fa-linkedin tm-social-icon"></i></a>
					</div>

				</div>

				<footer
					class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 text-xs-center">
					<p class="tm-copyright-text">Copyright &copy; 2016 Your Company</p>
				</footer>

			</div>
		</div>
	</div>
	<!-- tm-section-contact-form -->

	<!-- load JS files -->
	<script src="js/jquery-1.11.3.min.js"></script>
	<!-- jQuery (https://jquery.com/download/) -->
	<script src="js/jquery.singlePageNav.min.js"></script>
	<!-- Single Page Nav (https://github.com/ChrisWojcik/single-page-nav) -->

	<script>
		function prepareMenuForDesktop() {

			var navbarHeight = 0;

			// For screens greater than 767
			if ($(window).width() > 767) {

				// target at which the menu bar changes to sticky
				var target = $("#tm-section-1").offset().top - 100;

				// window scroll
				$(window).scroll(function() {

					if ($(this).scrollTop() > target) {
						$(".tm-navbar-row").addClass("sticky");
					} else {
						$(".tm-navbar-row").removeClass("sticky");
					}

				});

				navbarHeight = 56;
			}

			// Single Page Nav
			$('#tmNavbar').singlePageNav({
				'currentClass' : "active",
				offset : navbarHeight,
				'filter' : ':not(.external)'
			});
		}

		$(document).ready(function() {

			prepareMenuForDesktop();

			// On window resize, prepare menu
			$(window).resize(function() {
				prepareMenuForDesktop();

			});
		});
	</script>

</body>
</html>