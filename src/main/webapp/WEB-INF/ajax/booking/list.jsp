<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>�볪�� �Ҽ�</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="/ajax/booking/css/style.css" type="text/css">
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
		<section class="contents">
			<div class="container">
				<table class="table">
				<h2 class="text-center font-weight-bold">���� ��� ����</h2>
					<thead>
						<tr>
							<th>�̸�</th>
							<th>���೯¥</th>
							<th>�����ϼ�</th>
							<th>�����ο�</th>
							<th>��ȭ��ȣ</th>
							<th>�������</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="booking" items="${bookingList }">
						<tr>
							<td>${booking.name }</td>
							<td><fmt:formatDate value="${booking.date }" pattern="yyyy�� M�� d��" /></td>
							<td>${booking.day }</td>
							<td>${booking.headcount }</td>
							<td>${booking.phoneNumber }</td>
							<c:choose>
								<c:when test="${booking.state eq 'Ȯ��' }">
									<td class="text-success" >${booking.state }</td>								
								</c:when>
								<c:when test="${booking.state eq '�����' }">
									<td class="text-primary ">${booking.state }</td>
								</c:when>
								<c:when test="${booking.state eq '���'}" >
									<td class="text-danger">${booking.state }</td>
								</c:when>
								<c:otherwise>
									<td>${booking.state }</td>
								</c:otherwise>
							</c:choose>
							<td><button type="button" class="btn btn-danger btn-sm">����</button></td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
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
	
</body>
</html>