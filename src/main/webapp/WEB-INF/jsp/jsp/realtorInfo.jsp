<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<div class="container">
		
		<table class="table">
			<tr>
				<td>id</td>
				<td>${realtor.id }</td>
			</tr>
			<tr>
				<td>��ȣ��</td>
				<td>${realtor.office }</td>
			</tr>
			<tr>
				<td>��ȭ��ȣ</td>
				<td>${realtor.phoneNumber }</td>
			</tr>
			<tr>
				<td>�ּ�</td>
				<td>${realtor.address }</td>
			</tr>
			<tr>
				<td>���</td>
				<td>${realtor.grade }</td>
			</tr>
		</table>
		
	
	</div>
	
</body>
</html>