<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>���ã�� �߰��ϱ�</title>
</head>
<body>
	
	<h1>���ã�� �߰��ϱ�</h1>
	<label class=mt-3>�̸�</label><br><input type="text" class="form-control" name="name" id="nameInput"><br>
	<label class=mt-3>�ּ�</label><br><input type="text" class="form-control" name="address" id="addressInput"><br>
	<button type="button" id="addBtn" class="btn btn-success btn-block mt-3">�߰�</button>
		
	<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
		
	<script>
		
		$(document).ready(function(){
			$("addBtn").on("click", function(){
				
			let name = $("#nameInput").val();
			let address = $("#addressInput").val();
			
			if(name == "") {
				alert("�̸��� �Է��ϼ���");
				return;
			}
			
			if(address == "") {
				alert()
			}
			
			// http:// �������� �ʰ�, https:// �������� ������
			if(!address.startsWith("http://") && address.startsWith("https://")) {
				alert("�ּ������� Ȯ�����ּ���");
				return;
			}
			
			$.ajax({
				type:"post"
				, url:"/ajax/favorite/add"
				, data:{"name":name, "address":address}
				, success:function(data) {
					if(data.result == "success"){
						location.href="/ajax/favorite/list"
					} else {
						alert("�߰� ����");
					}
			
					}
				, error:function(){
					alert("�߰� ����!!!");
				}
				
			});
			
			});
			
		});
	
	
	
	</script>
	
	
</body>
</html>