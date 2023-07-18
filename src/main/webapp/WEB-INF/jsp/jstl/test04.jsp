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
<title>기상청</title>
</head>
<body>
	<div id="wrap">
		<div class="d-flex">
			<nav class="main-menu bg-warning">
				<div>기상청</div>
				<div>
					<ul>
						<li>날씨</li>
						<li>날씨입력</li>
						<li>테마날씨</li>
						<li>관측기후</li>
					</ul>
				</div>
			</nav>
			<section class="contents">
				<div class="main-contents">
					<h2>과거 날씨</h2>
				</div>
				<div class="container">
					<table class="table">
					<thead>
						<tr>
							<th>날짜</th>
							<th>날씨</th>
							<th>기온</th>
							<th>강수량</th>
							<th>미세먼지</th>
							<th>풍속</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="weather" items="${weatherList }">
						<tr>
							<td>
								<fmt:formatDate var="date" value="${weather.date }" pattern="yyyy년mm월dd일" />
								${date }
							</td>
							<td>
								<c:if test="${weather.weather eq '비' }">
									<img alt="비" src="http://marondal.com/material/images/dulumary/web/jstl/rainy.jpg">
								</c:if>
								<c:if test="${weather.weather eq '구름조금' }">
									<img alt="구름조금" src="http://marondal.com/material/images/dulumary/web/jstl/partlyCloudy.jpg">
								</c:if>
								<c:if test="${weather.weather eq '흐림' }">
									<img alt="흐림" src="http://marondal.com/material/images/dulumary/web/jstl/cloudy.jpg">
								</c:if>
								<c:if test="${weather.weather eq '맑음' }">
									<img alt="맑음" src="http://marondal.com/material/images/dulumary/web/jstl/sunny.jpg">
								</c:if>
							</td>
							<td>${weather.temperatures }℃</td>
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