<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���ã�� ���</title>
</head>
<body>
	<h1>���ã�� ���</h1>
	<div class="container">
		<table class="table">
			<thead>
				<tr>
					<th>No.</th>
					<th>�̸�</th>
					<th>�ּ�</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="favorite" items="${favoriteList }">
				<tr>
					<td>${favorite.id }</td>
					<td>${favorite.name }</td>
					<td>${favorite.address }</td>
				</tr>
				</c:forEach>
			</tbody>	
		</table>
	</div>
	
</body>
</html>