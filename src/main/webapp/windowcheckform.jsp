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
		<b>���̵� �ߺ� üũ</b>
		<hr>
		<br>
		<div id="chk">
		<form id="checkform">		
		<input type="text" name="input" id="userid">
		<input type="button" value="�ߺ�Ȯ��" onclick="idcheck()">
		</form>
		<div id="msg">
			<br>
			<input id="cencelBtn" type="button" value="���" onclick="window.close()"><br>
			<input id="useBtn" type="button" value="����ϱ�" onclick="sendcheckvalue()">
			
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