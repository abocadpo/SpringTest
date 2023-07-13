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
				<td>상호명</td>
				<td>${realtor.office }</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td>${realtor.phoneNumber }</td>
			</tr>
			<tr>
				<td>주소</td>
				<td>${realtor.address }</td>
			</tr>
			<tr>
				<td>등급</td>
				<td>${realtor.grade }</td>
			</tr>
		</table>
		
	
	</div>
	
</body>
</html>