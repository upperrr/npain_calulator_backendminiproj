<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html lang="en" >

<head>

  <meta charset="UTF-8">
  
<link rel="apple-touch-icon" type="image/png" href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png" />
<meta name="apple-mobile-web-app-title" content="CodePen">

<link rel="shortcut icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico" />

<link rel="mask-icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111" />


  <title>N'pain - join</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
  
  
<style>
@charset "UTF-8";
@import url(https://fonts.googleapis.com/css?family=Cabin:400,700);
body {
  color: #ffffff;
  background-color: #1a1a1a;
  font-family: 'Cabin', sans-serif;
  letter-spacing: 0.04em;
}

p {
  margin: 0;
}
p.description {
  font-size: 14px;
  line-height: 20px;
}

button {
  overflow: hidden;
  display: block;
  width: auto;
  margin: 22px auto;
  font-family: 'Cabin', sans-serif;
  font-size: 18px;
  text-transform: uppercase;
  color: white;
  background-color: #F93738;
  padding: 12px 30px;
  font-weight: 700;
  border: none;
  -moz-transition: 0.2s;
  -o-transition: 0.2s;
  -webkit-transition: 0.2s;
  transition: 0.2s;
  -moz-border-radius: 4px;
  -webkit-border-radius: 4px;
  border-radius: 4px;
  -moz-box-shadow: #930405 0 4px 0;
  -webkit-box-shadow: #930405 0 4px 0;
  box-shadow: #930405 0 4px 0;
}
button:before {
  content: '';
  width: 0;
  height: 0;
  background-color: rgba(255, 255, 255, 0.2);
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  margin: auto;
  -moz-border-radius: 100%;
  -webkit-border-radius: 100%;
  border-radius: 100%;
  -moz-transition: 0s;
  -o-transition: 0s;
  -webkit-transition: 0s;
  transition: 0s;
}
button:hover {
  background-color: #f82324;
}
button:hover:before {
  width: 200px;
  height: 200px;
  opacity: 0;
  -moz-transition: 0.5s;
  -o-transition: 0.5s;
  -webkit-transition: 0.5s;
  transition: 0.5s;
}
button:focus {
  outline: none;
}
button:active {
  margin: 24px auto 20px;
  -moz-box-shadow: #930405 0 2px 0;
  -webkit-box-shadow: #930405 0 2px 0;
  box-shadow: #930405 0 2px 0;
}
button.button-signup {
  z-index: 1;
  position: absolute;
  top: -32px;
  right: 0;
  left: 0;
  margin: 0 auto;
  width: 40%;
}
button.button-signup:active {
  margin-top: 4px;
}
button.button-signup:after {
  opacity: 0;
  content: '×';
  font-size: 72px;
  line-height: 54px;
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  margin: auto;
  -moz-transition: 0;
  -o-transition: 0;
  -webkit-transition: 0;
  transition: 0;
}
button.button-signup span {
  -moz-transition: ease-out 0.2s 0.2s;
  -o-transition: ease-out 0.2s 0.2s;
  -webkit-transition: ease-out 0.2s;
  /* -webkit-transition-delay: 0.2s; */
  transition: ease-out 0.2s 0.2s;
}
.is-active button.button-signup {
  -moz-border-radius: 100%;
  -webkit-border-radius: 100%;
  border-radius: 100%;
  width: 64px;
  height: 64px;
}
.is-active button.button-signup span {
  opacity: 0;
  -moz-transition: 0s;
  -o-transition: 0s;
  -webkit-transition: 0s;
  transition: 0s;
}
.is-active button.button-signup:before {
  opacity: 0;
}
.is-active button.button-signup:after {
  opacity: 1;
  -moz-transition: ease-out 0.2s 0.2s;
  -o-transition: ease-out 0.2s 0.2s;
  -webkit-transition: ease-out 0.2s;
  /* -webkit-transition-delay: 0.2s; */
  transition: ease-out 0.2s 0.2s;
}

.block-inner {
  position: relative;
  top: 50%;
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -webkit-transform: translateY(-50%);
  transform: translateY(-50%);
}

.block-signup {
  padding: 0 24px;
  background-color: #AE2627;
  width: 80%;
  height: 0;
  max-width: 500px;
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  margin: auto;
  -moz-border-radius: 8px;
  -webkit-border-radius: 8px;
  border-radius: 8px;
  -moz-transition: ease-out 0.3s;
  -o-transition: ease-out 0.3s;
  -webkit-transition: ease-out 0.3s;
  transition: ease-out 0.3s;
  -moz-box-shadow: #841d1e 0 6px 0;
  -webkit-box-shadow: #841d1e 0 6px 0;
  box-shadow: #841d1e 0 6px 0;
}
.block-signup .block-inner {
  opacity: 0;
  margin-top: 24px;
  -moz-transition: ease-out 0.2s;
  -o-transition: ease-out 0.2s;
  -webkit-transition: ease-out 0.2s;
  transition: ease-out 0.2s;
}
.block-signup .block-inner form {
  display: none;
}
.block-signup.is-active {
  height: 50%;
  padding: 24px;
}
.block-signup.is-active .block-inner {
  opacity: 1;
  margin-top: 0;
  -moz-transition: ease-out 0.2s 0.3s;
  -o-transition: ease-out 0.2s 0.3s;
  -webkit-transition: ease-out 0.2s;
  /* -webkit-transition-delay: 0.3s; */
  transition: ease-out 0.2s 0.3s;
}
.block-signup.is-active .block-inner form {
  display: block;
}

form {
  width: 100%;
  margin: 0 auto;
  max-width: 400px;
}

label {
  position: relative;
  font-size: 18px;
  font-weight: 700;
  display: block;
  margin-bottom: 12px;
  text-transform: uppercase;
}

input:not([type="reset"]) {
  color: #000000;
  font-size: 18px;
  padding: 12px;
  margin-bottom: 18px;
  border: none;
  width: calc(100% - 24px);
  font-weight: 500;
  -moz-border-radius: 4px;
  -webkit-border-radius: 4px;
  border-radius: 4px;
  -moz-transition: ease-out 0.2s;
  -o-transition: ease-out 0.2s;
  -webkit-transition: ease-out 0.2s;
  transition: ease-out 0.2s;
}
input:not([type="reset"]):focus {
  outline: none;
  background-color: #FFFFE5;
  -moz-box-shadow: rgba(0, 0, 0, 0.2) 0 6px 6px;
  -webkit-box-shadow: rgba(0, 0, 0, 0.2) 0 6px 6px;
  box-shadow: rgba(0, 0, 0, 0.2) 0 6px 6px;
}

input[type="reset"] {
  overflow: hidden;
  display: block;
  width: auto;
  margin: 22px auto;
  font-family: 'Cabin', sans-serif;
  font-size: 18px;
  text-transform: uppercase;
  color: white;
  background-color: #F93738;
  padding: 12px 30px;
  font-weight: 700;
  border: none;
  -moz-transition: 0.2s;
  -o-transition: 0.2s;
  -webkit-transition: 0.2s;
  transition: 0.2s;
  -moz-border-radius: 4px;
  -webkit-border-radius: 4px;
  border-radius: 4px;
  -moz-box-shadow: #930405 0 4px 0;
  -webkit-box-shadow: #930405 0 4px 0;
  box-shadow: #930405 0 4px 0;
}
input[type="reset"]:before {
  content: '';
  width: 0;
  height: 0;
  background-color: rgba(255, 255, 255, 0.2);
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  margin: auto;
  -moz-border-radius: 100%;
  -webkit-border-radius: 100%;
  border-radius: 100%;
  -moz-transition: 0s;
  -o-transition: 0s;
  -webkit-transition: 0s;
  transition: 0s;
}
input[type="reset"]:hover {
  background-color: #f82324;
}
input[type="reset"]:hover:before {
  width: 200px;
  height: 200px;
  opacity: 0;
  -moz-transition: 0.5s;
  -o-transition: 0.5s;
  -webkit-transition: 0.5s;
  transition: 0.5s;
}
input[type="reset"]:focus {
  outline: none;
}
input[type="reset"]:active {
  margin: 24px auto 20px;
  -moz-box-shadow: #930405 0 2px 0;
  -webkit-box-shadow: #930405 0 2px 0;
  box-shadow: #930405 0 2px 0;
}

.form-action {
  position: relative;
  min-height: 70px;
  margin: 0 auto;
}
.form-action input {
  position: absolute;
  top: 0;
}
.form-action input:active {
  top: 2px;
}
</style>

  <script>
  window.console = window.console || function(t) {};
</script>

  
  
  <script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>

<!-- 함수구현코드 -->
<style>
  .container {width: 400px;}
  h2 {text-align: center;}
  th {
      width: 100px;
      text-align: left;
  }
</style>



</head>

<body translate="no" >
  <div class="block-signup is-active">
  <button class="button-signup"><span>join</span></button>
  <div class="block-inner">
    <form id="form" method="post" action="/join">
      <br><br><br><br><br><br>
      <label id="join_label" style="text-align: center;"><img src="${path}/resources/src/join.svg" width="234px"
        height="51px" type="image / svg + xml" codebase="http://www.adobe.com / svg / viewer / install " /></label>
        NAME<input type='text' id='name' name='name' autocomplete="off" placeholder="이름을 입력해주세용 :)" onfocus="this.placeholder='이름을 입력해주세용 XD'"
        onblur="this.placeholder='이름을 입력해주세용 :P'" />
        ID<input type='text' id='id' name='id' autocomplete="off" placeholder="아이디를 입력해주세용 :)" onfocus="this.placeholder='아이디를 입력해주세용 XD'"
        onblur="this.placeholder='아이디를 입력해주세용 :P'" />
        PASSWORD<input type='password' name='password1' id='password1'autocomplete="off" placeholder="비밀번호를 입력해주세용 :)" onfocus="this.placeholder='비밀번호를 입력해주세용 XD'"
        onblur="this.placeholder='비밀번호를 입력해주세용 :P'"/>
        CONFIRM PASSWORD<input type='password' name='password2' id='password2'autocomplete="off" placeholder="비밀번호확인을 입력해주세용 :)" onfocus="this.placeholder='비밀번호확인을 입력해주세용 XD'"
        onblur="this.placeholder='비밀번호확인을 입력해주세용 :P'"/>
        E-MAIL<input type='text' id='email'name='email' autocomplete="off" placeholder="이메일을 입력해주세용 :)" onfocus="this.placeholder='이메일을 입력해주세용 XD'"
        onblur="this.placeholder='이메일을 입력해주세용 :P'"/>
      
      
      <!-- <input type='submit'> -->
      <div class="form-action" value='회원가입'>
        <button type="submit" id="button">GO!</button>
        
        
      </div>
    </form>
  </div>
</div>
    <script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-1b93190375e9ccc259df3a57c1abc0e64599724ae30d7ea4c6877eb615f89387.js"></script>

  <!-- <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script> -->
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script>
  
 
    $(function() {
        $('#form').submit(function() {
            let name = $('#name').val()
            let id = $('#id').val()
            let password1 = $('#password1').val()
            let password2 = $('#password2').val()
            let email = $('#email').val()
            if(!name) {
                alert('이름을 입력하세요.');
                $('#name').focus();
                return false;
            } else if(!id) {
                alert('아이디를 입력하세요.');
                $('#id').focus();
                return false;
            } else if(!password1) {
                alert('비밀번호를 입력하세요.');
                $('#password1').focus();
                return false;
            } else if(password1!=password2) {
                alert('비밀번호와 비밀번호 확인이 다릅니다.');
                $('#password2').focus();
                return false;
            } else if(!email) {
                alert('이메일을 입력하세요.');
                $('#email').focus();
                return false;
            } else if(!email.includes('@')) {
                alert('이메일 형식이 옳바르지 않습니다.');
                $('#email').focus();
                return false;
            } 
      function goJoinForm() {
            location.href="/login";
       }  
        });
    });
</script>

<script  >
 //$('button').on('click', function () {
 //   location.href="/"
//});
//# sourceURL=pen.js
    </script>

      <script id="rendered-js" >
$('button').on('click', function () {
  $('.block-signup').
  toggleClass('is-active');
});
//# sourceURL=pen.js
    </script> 


</body>

</html>
 

