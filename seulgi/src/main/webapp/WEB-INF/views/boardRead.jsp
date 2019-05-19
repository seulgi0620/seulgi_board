<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="boardCommon.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
function board_delete(){
	if(confirm("삭제 하시겠습니까?") == true){	//확인
		location.href="boardDelete?no=${boardRead.no}";
	}else{   //취소
		return false;
	}
}
</script>
</head>
<body>
<h1 style="text-align:center">글 읽기</h1>
<!-- 테이블 시작 -->
	<table border="1" style="text-align:center; margin:auto">
		<tr>
			<th>작성자</th>
			<th><input type="text" name="writer" value="${boardRead.writer}" style="width:660px; background-color:pink; border:none; outline:none" readonly/></th> 
		</tr>
		<tr>
			<th>제목</th>
			<th><input type="text" name="title" value="${boardRead.title}" style="width:660px; background-color:pink; border:none; outline:none" readonly/></th>  
		</tr>
		<tr> 
			<th>내용</th>
			<th><textarea name="contents" cols="100" rows="10" style="resize:none; background-color:pink; border:none; outline:none" readonly>${boardRead.contents}</textarea></th>  
		</tr>
	</table>
	<!-- 테이블 끝 -->
	<br>
	<!-- 글 등록,취소 버튼 -->
	<div style="text-align:center">
	<input type="button" value="수정" style="height:40px" onClick="location.href='boardEdit?no=${boardRead.no}'">
	<input type="button" value="삭제" style="height:40px" onClick="board_delete()">
	<input type="button" value="목록으로" style="height:40px" onClick="location.href='boardMain'">
	</div> 
</body>
</html>