<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="boardCommon.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
 a:link {color:black;text-decoration:none} 
 a:visited {color:#FFA7H7;text-decoration:none} 
 a:hover {color:red;text-decoration:underline}
</style>
</head>
<body>
	<!-- 테이블 시작 -->
	<table border="1" style="text-align:center; margin:auto">
		<tr> 
			<th style="color:#99004C; height:40px">번호</th>   
			<th style="color:#99004C">제목</th>
			<th style="color:#99004C">작성자</th>
			<th style="color:#99004C">작성일</th>
			<th style="color:#99004C">조회수</th>  
		</tr>
		<c:forEach items="${boardMain}" var="boardMain">
		<tr>
			<td><a href="boardRead?no=${boardMain.no}">${boardMain.no}</a></td>
			<td width="400px"><a href="boardRead?no=${boardMain.no}">${boardMain.title}</a></td>
			<td width="100px"><a href="boardRead?no=${boardMain.no}">${boardMain.writer}</a></td> 
			<td width="200x"><a href="boardRead?no=${boardMain.no}">${boardMain.create_date}</a></td>
			<td>${boardMain.hit}</td>
		</tr>
		</c:forEach>
	</table>
	<!-- 테이블 끝 -->
	<br>
	<!-- 글 작성 버튼 -->
	<div style="text-align:center">
	<input type="button" value="글 작성" style="height:40px" onClick="location.href='boardWrite'">   
	</div> 
</body>
</html>