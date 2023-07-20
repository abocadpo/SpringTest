<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>즐겨찾기 목록</title>
</head>
<body>
	<h1>즐겨찾기 목록</h1>
	<div class="container">
		<table class="table">
			<thead>
				<tr>
					<th>No.</th>
					<th>이름</th>
					<th>주소</th>
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