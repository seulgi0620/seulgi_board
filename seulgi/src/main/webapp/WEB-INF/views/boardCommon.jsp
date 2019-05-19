<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>슬기짱 게시판</title>
<style type="text/css">
body{
    background: url(../../images/back_jjang2.jpg) no-repeat center center fixed; 
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
</style>
</head> 
<body>
<script type="text/javascript">
$(function(){
	$("button[name='logout']").hide();
	$("button[name = 'loginClick']").click(function(){ 
	var id=$("input[name='id']").val();
	var password=$("input[name = 'password']").val();
		$.ajax({
			type:"GET",
			url:"../member/loginSuccess",
			data:"id="+id+"&password="+password, 
			dataType:"HTML",
			success:function(result){
				$("input[name='id']").hide();
				$("input[name='password']").hide();
				$("button[name='loginClick']").hide();
				$("button[name='memberJoin']").hide();
				$('#login').append(result); 
				$("button[name='logout']").show(); 
			}
		});
	});
});
</script>
<!-- <body style="background-image:url(../../images/back_jjang2.jpg); background-repeat:no-repeat; background-size:100% 270%">  -->
<!-- <body style="background-color:#FFD9EC"> -->
	<div style="float:right" id="login">
		<input type=text name="id" value="아이디" onblur="if(this.value==''){this.value='아이디'}" onfocus="if(this.value=='아이디'){this.value =''}"> 
		<input type=text name="password" value="비밀번호" onblur="if(this.value==''){this.value='비밀번호'; this.type='text'}" onfocus="if(this.value=='비밀번호'){this.value =''; this.type='password'}"> 
		<button name="loginClick">로그인</button> 
		<button name="memberJoin">회원가입</button> 
		<button name="logout">로그아웃</button> 
	</div>
	<br>
	<h1 align="center" style="color:#FF007F">슬기짱 게시판</h1>

</body>
</html>