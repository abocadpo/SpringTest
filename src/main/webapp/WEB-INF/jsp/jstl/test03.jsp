<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>
	
	<div class="container">
		<h1>ȸ�� ���� ����Ʈ</h1>
		<table class="table">
			<thead>
				<tr>
					<th>No</th>
					<th>�̸�</th>
					<th>��ȭ��ȣ</th>
					<th>����</th>
					<th>�̸���</th>
					<th>�ڱ�Ұ�</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="member" items="${memberList }" varStatus="status">
				<tr>
					<td>${status.count }</td>
					<td>${member.name }</td>	
					
					<%-- phoneNumber�� 010���� �����ϸ� ��ȣ �״��, �װ� �ƴϸ� ��ȿ���� ���� ��ȭ��ȣ --%>
					<c:choose>
						<c:when test="${fn:startsWith(member.phoneNumber, '010') }">
							<td>${member.phoneNumber }</td>
						</c:when>
						<c:otherwise>
							<td>��ȿ���� �ʴ� ��ȭ��ȣ</td>
						</c:otherwise>
						
					</c:choose>
					<td>${fn:replace(member.nationality, "�ﱹ�ô�", "�ﱹ - ") }</td>
					<td><b>${fn:split(member.email, "@")[0] }</b>@${fn:split(member.email, "@")[1] }</td>
					<td>${fn:substring(member.introduce, 0, 15) }
						<c:if test="${fn:length(member.introduce) > 15 }">
							...
						</c:if>
					</td>
				</tr>
				</c:forEach>
			</tbody>
			
		</table>
	
	
	</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>	
	
</body>
</html>