<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="/ajax/booking/css/style1.css" type="text/css">
</head>
<body>
	 <body>
        <div id="wrap">
            <header class="d-flex justify-content-center align-items-center">
                <div class="display-4"> 통나무 팬션</div>
            </header>
            <nav class="main-menu bg-danger">
                <ul class="nav nav-fill">
                    <li class="nav-item"><a href="#" class="nav-link text-white">팬션소개</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-white">객실보기</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-white">예약안내</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-white">커뮤니티</a></li>
                </ul>
            </nav>
            <section class="contents">
                <article class="main-image bg-primary">
                    <img id = "bannerImage" alt = "팬션전경" src="http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner1.jpg">
                </article>
                <article class="main-contents bg-warning d-flex">
                    <div class="booking d-flex justify-content-center align-items-center">
                        <div class="display-4 text-white">
                            실시간<br>
                            예약하기
                        </div>
                    </div>
                    <div class="booking-confirm text-white">

                        <div class="mt-4" id="nonMemberInput">
                            <div class="d-flex">
                                <label class="col-3 text-center">이름 : </label>
                                <input type = "text" class="form-control col-6" id="nameInput">
                            </div>
                            <div class="d-flex mt-2">
                                <label class="col-3 text-center">전화번호 : </label>
                                <input type = "text" class="form-control col-6" id="callInput">
                            </div>
                        </div>
                        <div class="d-flex justify-content-end col-11">
                            <button type="button" class="btn btn-success" id="searchBtn">조회하기</button>
                        </div>
                    </div>
                    <div class="contact d-flex justify-content-center align-items-center">
                        <h1 class="text-white">예약문의 : <br>010 - <br> 000 - 1111</h1>
                    </div>
                </article>
            </section>
            <footer>
                <div class="small text-secondary mt-3">
                    제주도 특별자치도 제주시 애월읍<br>
                    사업자등록번호:111-22-255222 / 농어촌민박사업자지정 / 대표:김동욱 <br>
                    Copyright 2025.tongnamu All right reserved

                </div>
            </footer>
        </div>

        <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <script>
     		$(document).ready(function() {
     			$("#searchBtn").on("click", function() {
     				let name = $("#nameInput").val();
     				let phoneNumber = $("#phoneNumber").val();
     				
     				if(name == "") {
     					alert("이름을 입력하세요");
     					return;
     				}
     				
     				if(phoneNumber == "") {
     					alert("전화번호를 입력하세요");
     					return;
     				}
     				
     				$.ajax({
     					type:"get"
     					, url:"/ajax/booking/search"
     					, data:{"name":name, "phoneNumber":phoneNumber}
     					, success:function(data){
     						
     						if(data.result == "fail") {
     							alert("조회된 데이터가 없습니다!!")
     						} else {
	     						let message = "이름 : " + data.info.name
	     						+ "\n날짜 : " + data.info.date.substring(0, 10)
	     						+ "\n일수 : " + data.info.day
	     						+ "\n인원 : " + data.info.headcount
	     						+ "\n상태 : " + data.info.state;
	     						
	     						alert(message);
	     						
     						}
     					}
     					, error:function(){
     						alert("조회 에러")
     					}
     					
     				});
     				
     			});
     			
     			
     		});
        
        
        
        </script>
</body>
</html>