<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="boardCommon.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<h1 style="text-align:center">글 수정</h1>
<!-- 테이블 시작 -->
<form action="boardUpdate" method="GET">
	<table border="1" style="text-align:center; margin:auto"> 
		<tr>
			<th>작성자</th>
			<th><input type="text" name="writer" value="${boardRead.writer}" style="width:660px; background-color:#FFD8D8; border:none; outline:none"/></th> 
		</tr>
		<tr>
			<th>제목</th>
			<th><input type="text" name="title" value="${boardRead.title}" style="width:660px; background-color:#FFD8D8; border:none; outline:none"/></th>  
		</tr>
		<tr> 
			<th>내용</th>
			<th><textarea name="contents" cols="100" rows="10" style="resize:none; background-color:#FFD8D8; border:none; outline:none">${boardRead.contents}</textarea></th>  
		</tr>
	</table>
	<!-- 테이블 끝 -->
	<br>
	<!-- 글 등록,취소 버튼 -->
	<div style="text-align:center">
	<input type="hidden" name="no" value="${boardRead.no}">
	<input type="submit" value="수정 완료" style="height:40px">
	<input type="button" value="목록으로" style="height:40px" onClick="location.href='boardMain'">
	</div> 
</form>	
</body>
</html>