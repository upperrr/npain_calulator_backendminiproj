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

<link rel="apple-touch-icon" type="image/png"
	href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png" />
<meta name="apple-mobile-web-app-title" content="CodePen">

<link rel="shortcut icon" type="image/x-icon"
	href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico" />

<link rel="mask-icon" type="image/x-icon"
	href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg"
	color="#111" />


<title>No 엔빵! No Gain!</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">



<link rel="stylesheet" type="text/css"
	href="${path}/resources/css/npain.css">
	
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<script>
    window.console = window.console || function (t) { };
  </script>



<script>
    if (document.location.search.match(/type=embed/gi)) {
      window.parent.postMessage("resize", "*");
    }
  </script>


</head>

<body translate="no">
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
				<li class="nav-item"><a class="nav-link" href="loginform"
					target="" id="experienceNav">LOGIN</a></li>
				
				<li class="nav-item"><a class="nav-link" href="joinform"
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
	<div id="loading" style='display: none;'>
		<img id="loadingimage"
			src="https://mir-s3-cdn-cf.behance.net/project_modules/disp/92dd64103940413.5f5810f5dfef5.gif"><br>
		<img id="loadingimage2" src="${path}/resources/src/ing_logo.gif">
	</div>
	<div id="container">
		<div id="main-content">

			<div id='howmany' class="block-signup is-active">
				<button class="button-signup">
					<span>HOW MANY PEOPLE?</span>
				</button>

				<div class="block-inner">
					<form id="count_people" action="count">
						<br>
						<br>
						<br>
						<br> <label id="login_label" style="text-align: center;"><img
							src="${path}/resources/src/how many.svg" width="234px"
							height="51px" type="image / svg + xml"
							codebase="http://www.adobe.com / svg / viewer / install " /></label> <input
							id="numberofpeople" type='number' step='1' class="form-text">
						<button type="submit" id="button">GO!</button>
					</form>
				</div>
				
			</div>
	<h1>${totalPeople }</h1>
			<div id="npain_place" style='display: none;'
				class="block-signup is-active">
				<button class="button-signup">
					<span>Who are you?</span>
				</button>
				<div class="block-inner">
					<form id="go_npain" action="count">

						<div id="input_place">
						
							


							<!-- jQuery numberofpeople -->
						</div>
						<button type="submit" id="button">확인</button>
					</form>
				</div>
			</div>


			<div id="circle_logo">
				<div>
					<img src="${path}/resources/src/circle_logo.svg" height="100vh"
						type="image / svg + xml"
						codebase="http://www.adobe.com / svg / viewer / install " />
				</div>
			</div>
			<div id="result_place" style='display: none;' class="result_place">
				<div id="parent_amount">
					<div id="total_amount"></div>
					<div id="needto_devide_amount"></div>
					<img src="${path}/resources/src/likethis.svg" width="234px"
						height="51px" type="image / svg + xml"
						codebase="http://www.adobe.com / svg / viewer / install " />
				</div>


				<table id="result">
					<tbody></tbody>
				</table>



			</div>



		</div>
	</div>
	<div id="share" style="bottom: 0px; text-align: center;">
		<a id="kakao-link-btn" href="javascript:kakaoShare()"> <img
			src="https://developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png" />
		</a>
		<h4>애들한테알려주세요:P</h4>
	</div>

	<!-- kakao sdk -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	
	<script>
    $(function() {		
		$('#count_people').submit(function (e) {			
			e.preventDefault();
   	    	$('#howmany').css('display', 'none');
			$('#npain_place').css('display', 'block');
			console.log($('#numberofpeople').val());
   	        let totalPeople = $('#numberofpeople').val();
   	        let input = `
   	        	<select style='width:45%; margin-right:5%;' class='form-select'>
					<c:forEach var="mem" items="${memArr }">
						<option>${mem}</option>
					</c:forEach>
				</select>
   	                <input id='numberofpeople' type='number' style='width:45%;'  class='form-text' placeholder='금액 입력:)' step='1'>
   	                <br/>`
					//	<input id='count_name' type='text' style='width:40%; margin-right:5%;' class='form-text' placeholder='이름 입력! '>
   	        for (let i = 0; i < totalPeople; i++) {
   	          $('#input_place').append(input);
   	        }
		})
    })
    

   </script>
	
	<script type="text/javascript">
  // SDK JavaScript 
  Kakao.init('JAVASCRIPT_KEY');

  // SDK 
  console.log(Kakao.isInitialized());

  function numberFormat(number) {
   return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

  function kakaoShare() {
    Kakao.Link.sendDefault({
      objectType: 'feed',
      content: {
        title: '카카오공유하기 시 타이틀',
        description: '카카오공유하기 시 설명',
        imageUrl: '카카오공유하기 시 썸네일 이미지 경로',
        link: {
          mobileWebUrl: '카카오공유하기 시 클릭 후 이동 경로',
          webUrl: '카카오공유하기 시 클릭 후 이동 경로',
        },
      },
      buttons: [
        {
          title: '웹으로 보기',
          link: {
            mobileWebUrl: '카카오공유하기 시 클릭 후 이동 경로',
            webUrl: '카카오공유하기 시 클릭 후 이동 경로',
          },
        },
      ],
      
      installTalk: true,
    })
  }
</script>



	<script
		src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-1b93190375e9ccc259df3a57c1abc0e64599724ae30d7ea4c6877eb615f89387.js"></script>

	

	<!-- funtion npain -->


	<script id="rendered-js">
    $('.button-signup').on('click', function () {
      $('.block-signup').
        toggleClass('is-active');
    });

    // (changer).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    

    $('#go_npain').submit(
      function (e) {
        e.preventDefault();
        // $('#result_place').css('display', 'block');
        $('#npain_place').css('display', 'none');
        // console.log(e);
        let lengthOfdataimported = e.target.length;
        let LengthOfExcludingLastSummit = e.target.length - 1;

        let arrayOfpeople = []
        for (let i = 0; i < LengthOfExcludingLastSummit; i++) {
          let objectOfNameAndMoney = {};
          if (i % 2 == 0) {
            // console.log(e.target[i].value);
            objectOfNameAndMoney.name = e.target[i].value;
            objectOfNameAndMoney.payed_money = e.target[i + 1].value;
            arrayOfpeople.push(objectOfNameAndMoney);
          }
        }
        console.log(arrayOfpeople);
        
        
        
        // npain algorithm
        let sub_total_amount = 0;
        for (let i = 0; i < arrayOfpeople.length; i++) {
          sub_total_amount += +arrayOfpeople[i].payed_money;
        }
        let needto_devide_amount = sub_total_amount / arrayOfpeople.length;
        $("#total_amount").append('<button type="submit" disabled class="result_btn2">총금액 : ' + sub_total_amount + ' 원</button>')
        $("#needto_devide_amount").append('<button type="submit" disabled class="result_btn2">각 : ' + needto_devide_amount + ' 원 씩</button>')


        for (let i = 0; i < arrayOfpeople.length; i++) {
          if (needto_devide_amount - arrayOfpeople[i].payed_money < 0) {
            arrayOfpeople[i].personality = 'moneyTaker';
            arrayOfpeople[i].trade_amount = needto_devide_amount - arrayOfpeople[i].payed_money;
          } else if (needto_devide_amount - arrayOfpeople[i].payed_money > 0) {
            arrayOfpeople[i].personality = 'moneyGiver';
            arrayOfpeople[i].trade_amount = needto_devide_amount - arrayOfpeople[i].payed_money;
          } else {
            arrayOfpeople[i].personality = 'unflavored';
            arrayOfpeople[i].trade_amount = 0;
          }
        }
        let takerName;
        for (let i = 0; i < arrayOfpeople.length; i++) {


          if (arrayOfpeople[i].personality === 'moneyTaker') {
            takerName = arrayOfpeople[i].name;
            console.log(takerName);
          }
       
       let temp="";
       $('#result>tbody').append("<tr>");
       temp = '<td style="width:250px"><button type="submit" disabled class="result_btn">'+arrayOfpeople[i].name+'</button>은/는</td>';
       $('#result>tbody').append(temp);
       if (arrayOfpeople[i].trade_amount > 0) {
    	   temp = '<td style="width:250px"><button type="submit" disabled class="result_btn">' + takerName + '</button>에게</td>';
    	   
       }else { 
    	   temp = '<td style="width:250px"></td>';
       }
       $('#result>tbody').append(temp);
       if(arrayOfpeople[i].trade_amount < 0) {
    	   temp = '<td style="width:250px"><button type="submit" disabled class="result_btn2">받을돈</button></td>'
    		temp+='<td><button type="submit" disabled class="result_btn">'+arrayOfpeople[i].trade_amount*-1+'원</button></td>';
       } else {
    	   temp = '<td style="width:250px"><button type="submit" disabled class="result_btn2">줄돈</button></td>'
    		temp+='<td><button type="submit" disabled class="result_btn">'+arrayOfpeople[i].trade_amount+'원</button></td>';
       }
       $('#result>tbody').append(temp);
   	  
       $('#result>tbody').append("</tr>");
        }
        // 3second loading window
        setTimeout(() => {
          $('#loading').css('display', 'none');
          $('#result_place').css('display', 'block');
        }, 4000);
        $('#loading').css('display', 'block');
      }
    ) 

    $("#circle_logo").click(
            function() {
                location.href="index"
            }
        )


  </script>


</body>


</html>