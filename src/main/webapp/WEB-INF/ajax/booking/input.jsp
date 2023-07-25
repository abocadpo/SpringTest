<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>input</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="ajax/booking/css/style.css" type="text/css">
</head>
<body>
	<div id="wrap">
		<header class="align-items-center justify-content-center">
			<div class="text-center">
				<h1>�볪�� �Ҽ�</h1>
			</div>
		</header>
		<nav class="main-menu d-flex align-items-center justify-content-center">
			<div class=" d-flex">
				<ul class="nav nav-fill ">
					<li>�ҼǼҰ�</li>
					<li>���Ǻ���</li>
					<li>�����ϱ�</li>
					<li>������</li>					
				</ul>
			</div>
		</nav>
		<section>
			<h2>�����ϱ�</h2>
			<div>
				<label>�̸�</label>
				<input type="text" name="name"> <br>
				
				<label>���೯¥</label>
				<input type="text" name="date"> <br>
				
				<label>�����ϼ�</label>
				<input type="text" name="day"> <br>
				
				<label>�����ο�</label>
				<input type="text" name="headcount"> <br>
				
				<label>��ȭ��ȣ</label>
				<input type="text" name="phoneNumber"> <br>
				
				<button type="button">
				</button>
			</div>
		</section>
		<footer>
			<div class="text-secondary small mt-3">
				����Ư����ġ�� ���ֽ� �ֿ���<br>
				����ڵ�Ϲ�ȣ: 111-22-255222 / ����̹ιڻ�������� / ��ǥ:�����<br>
				Copyright 2025 tongnamu All right reserved
			</div>
		</footer>
	</div>
	
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    <script>
    	$(document).ready(function(){
    		$("#bookingBtn").on("click", function(){
    			
    			let name = $("#nameInput").val();
    			let date = $("#dateInput").val();
    			let day = $("#dayInput").val();
    			let headcount = $("#headcountInput").val();
    			let phoneNumber = $("#phoneNumberInput").val();
    			
    			if(name == ""){
    				alert("�̸��� �Է��ϼ���");
    				return;
    			}
    			if(date == ""){
    				alert("�̸��� �Է��ϼ���");
    				return;
    			}
    			if(day == ""){
    				alert("�̸��� �Է��ϼ���");
    				return;
    			}
    			if(headcount == ""){
    				alert("�̸��� �Է��ϼ���");
    				return;
    			}
    			if(phoneNumber == ""){
    				alert("�̸��� �Է��ϼ���");
    				return;
    			}
    			
    		})
    		
    		
 
    	})	
    
    </script>
    
    
</body>
</html>