<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="boardCommon.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<h1 style="text-align:center">글 작성</h1>
<!-- 테이블 시작 -->
	<form action="boardInsert" method="GET">
	<table border="1" style="text-align:center; margin:auto">
		<tr>
			<th>작성자</th>
			<th><input type="text" name="writer" style="width:660px; background-color:pink; border:none; outline:none"/></th> 
		</tr>
		<tr>
			<th>제목</th>
			<th><input type="text" name="title" style="width:660px; background-color:pink; border:none; outline:none"/></th> 
		</tr>
		<tr> 
			<th>내용</th>
			<th><textarea name="contents" cols="100" rows="10" style="resize:none; background-color:pink; border:none; outline:none"></textarea></th>  
		</tr>
	</table>
	<!-- 테이블 끝 -->
	<br>
	<!-- 글 등록,취소 버튼 -->
	<div style="text-align:center">
	<input type="submit" value="등록" style="height:40px">
	<input type="button" value="취소" style="height:40px" onClick="location.href='boardMain'">
	</div> 
	</form>   
</body>
</html>