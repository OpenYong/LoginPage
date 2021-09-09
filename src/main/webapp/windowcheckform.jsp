<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body onload="pvalue()">
	<div id="wrap">
		<br>
		<b>아이디 중복 체크</b>
		<hr>
		<br>
		<div id="chk">
		<form id="checkform">		
		<input type="text" name="input" id="userid">
		<input type="button" value="중복확인" onclick="idcheck()">
		</form>
		<div id="msg">
			<br>
			<input id="cencelBtn" type="button" value="취소" onclick="window.close()"><br>
			<input id="useBtn" type="button" value="사용하기" onclick="sendcheckvalue()">
			
		</div>
		</div>
	</div>
	<script type="text/javascript">
		function pvalue(){
			document.getElentById("UserId").value = op
			
		}
	</script>
</body>
</html>