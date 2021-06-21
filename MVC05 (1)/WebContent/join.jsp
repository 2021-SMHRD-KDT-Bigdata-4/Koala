<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>로그인 / 회원가입 폼 템플릿</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="style.css">
<script type="text/javascript">
	function loginFn() {
		var user_id = $("#user_id").val();
		var password = $("#password").val();
		$.ajax({
			url : "ajaxlogin.do",
			type : "post",
			data : {
				"user_id" : user_id,
				"password" : password
			},
			success : function(data) {
				//alert(data);
				if (data == "NO") {
					alert("회원인증에 실패했습니다.");
				} else {
					alert("회원인증에 성공했습니다.");
					location.href = "test01.jsp"; // 메인화면으로...
				}
			},
			error : function() {
				alert("error");
			}
		});

	}
	function joinFN() {
		var formData = $("#register").serialize();
		$.ajax({
			url : "ajaxjoinmember.do",
			type : "post",
			data : formData,
			success : function(data) {
				//alert(data);
				if (data == "NO") {
					alert("회원가입에 실패했습니다.");
				} else {
					alert("회원가입에 성공했습니다.");
					location.href = "test01.jsp"; // 메인화면으로...
				}
			},
			error : function() {
				alert("error");
			}

		});

	}
</script>
</head>
<body>
	<div class="wrap">
		<div class="form-wrap">
			<div class="button-wrap">
				<div id="btn"></div>
				<button type="button" class="togglebtn" onclick="login()">로그인
				</button>
				<button type="button" class="togglebtn" onclick="register()">회원가입</button>
			</div>
			<div class="social-icons"></div>

			<form id="login" class="input-group" method="post">
				<input id="user_id" type="text" class="input-field" placeholder="id"
					required> <input id="password" type="password"
					class="input-field" placeholder="Password" required> <input
					type="checkbox" class="checkbox"> <span>RememberPassword</span>
				<button class="submit" onclick="loginFn()">로그인</button>
			</form>

			<form id="register" class="input-group" method="post">
				<input type="text" class="input-field" id="user_id" name="user_id"
					placeholder="user_id" required> <input type="text"
					class="input-field" id="user_name" name="user_name"
					placeholder="user_name" required> <input type="password"
					class="input-field" id="password" name="password"
					placeholder="password" required> <input type="checkbox"
					class="checkbox"><span>Terms and conditions</span>



				<button class="submit" onclick="joinFN()">회원가입</button>
			</form>
		</div>
	</div>
	<script>
		var x = document.getElementById("login");
		var y = document.getElementById("register");
		var z = document.getElementById("btn");

		function login() {
			x.style.left = "50px";
			y.style.left = "450px";
			z.style.left = "0";
		}

		function register() {
			x.style.left = "-400px";
			y.style.left = "50px";
			z.style.left = "110px";
		}
	</script>
</body>
</html>