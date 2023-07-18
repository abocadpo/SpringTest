<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<link rel="stylesheet" href="/jstl/css/style.css" type="text/css">
<title>���û</title>
</head>
<body>
	<div id="wrap">
		<div class="d-flex">
			<nav class="main-menu bg-warning">
				<div>���û</div>
				<div>
					<ul>
						<li>����</li>
						<li>�����Է�</li>
						<li>�׸�����</li>
						<li>��������</li>
					</ul>
				</div>
			</nav>
			<section class="contents">
				<div class="main-contents">
					<h2>���� ����</h2>
				</div>
				<div class="container">
					<table class="table">
					<thead>
						<tr>
							<th>��¥</th>
							<th>����</th>
							<th>���</th>
							<th>������</th>
							<th>�̼�����</th>
							<th>ǳ��</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="weather" items="${weatherList }">
						<tr>
							<td>
								<fmt:formatDate var="date" value="${weather.date }" pattern="yyyy��mm��dd��" />
								${date }
							</td>
							<td>
								<c:if test="${weather.weather eq '��' }">
									<img alt="��" src="http://marondal.com/material/images/dulumary/web/jstl/rainy.jpg">
								</c:if>
								<c:if test="${weather.weather eq '��������' }">
									<img alt="��������" src="http://marondal.com/material/images/dulumary/web/jstl/partlyCloudy.jpg">
								</c:if>
								<c:if test="${weather.weather eq '�帲' }">
									<img alt="�帲" src="http://marondal.com/material/images/dulumary/web/jstl/cloudy.jpg">
								</c:if>
								<c:if test="${weather.weather eq '����' }">
									<img alt="����" src="http://marondal.com/material/images/dulumary/web/jstl/sunny.jpg">
								</c:if>
							</td>
							<td>${weather.temperatures }��</td>
							<td>${weather.precipitation }mm</td>
							<td>${weather.microDust }</td>
							<td>${weather.windSpeed }km/h</td>
						</tr>
						</c:forEach>
					</tbody>
					</table>
				</div>
			</section>
		</div>
		<footer class="bg-dark">
		</footer>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</body>
</html>