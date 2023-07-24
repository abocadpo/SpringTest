<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
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
	
	<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        
	<script>
	
		$.ajax({
			type:"get"
			, url:"/ajax/favorite/delete"
			, data:{"id", id}
			, success:function(data) {
				if(data.result == "success"){
					location.reload();
				} else {
					alert("삭제실패")
				}
				
			}
			
			
		})
	</script>
	
	
</body>
</html>