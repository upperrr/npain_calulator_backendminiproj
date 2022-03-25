<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en" style="height: 90%;">

<head>
<!-- Latest compiled and minified CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<meta charset="UTF-8">

<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
<meta http-equiv="Content-Security-Policy"
	content="upgrade-insecure-requests">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="apple-touch-icon" type="image/png"
	href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png" />
<meta name="apple-mobile-web-app-title" content="CodePen">

<link rel="shortcut icon" type="image/x-icon"
	href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico" />

<link rel="mask-icon" type="image/x-icon"
	href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg"
	color="#111" />
	
<title>No N'Pain No Gain</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

<script
	src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-1b93190375e9ccc259df3a57c1abc0e64599724ae30d7ea4c6877eb615f89387.js"></script>

<script
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script id="rendered-js">
</script>



<script src="${path}/resources/js/main.js"></script>
<link rel="stylesheet" type="text/css" href="${path}/resources/css/main.css">


<style>
body {
	background-color: black;
}

#main-content {
	margin: 5vh 13vw;
	text-align: center;
}

#btn {
	padding: 3vh 1vw;
	display: inline-block;
}

#login {
	margin-right: 15vw;
	width: 15vw !important;
	height: 5vh;
	display: inline;
}

#join {
	margin-left: 15vw;
	width: 15vw !important;
	height: 5vh;
	display: inline;
}

#logoImg {
	width: 70vw;
}
</style>

</head>
<body>
	<nav id="i-navi" class="navbar navbar-expand-sm bg-primary navbar-dark">
		<div class="container-fluid">
			<ul class="navbar-nav">
				<!-- a 태그를 이용해 각각의 파일을 링크로 만들고, target 값으로 연결 -->
				<li class="nav-item"><a class="nav-link active" href="index"
					target="content" id="homeNav">HOME</a></li>
				<!-- <li class="nav-item">
                    <a class="nav-link" href="about.html" target="content" id="aboutNav">ABOUT</a>
                </li> -->
                
                <c:choose>
				<c:when test="${empty id}">
				<li class="nav-item"><a class="nav-link" href="/loginForm"
					target="" id="experienceNav">LOGIN</a></li>
				
				<li class="nav-item"><a class="nav-link" href="/joinForm"
					target="content" id="educationNav">JOIN</a></li>
				</c:when>					
				<c:otherwise>
				 <li class="nav-item">
                    <a class="nav-link" href="logout" target="content" id="aboutNav" >LOGOUT</a>
                </li> 
                </c:otherwise>
                </c:choose>
			</ul>
		</div>
	</nav>
	<div id="container">
		<div id="main-content">
			<div id="btn">
				<button id="login" class="button-signup">LOGIN</button>

				<button id="join" class="button-signup">JOIN</button>
			</div>
			<img id="logo_img" src="${path}/resources/src/logo1.gif">
		</div>
	</div>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script>
        $("#login").click(
            function() {
                location.href="loginForm"
            }
        )
        $("#join").click(
            function() {
                location.href="joinForm"
            }
        )
    </script>
</body>
</html>