<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="Pack.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���̵� ã��</title>
</head>
<body>
	<jsp:useBean id="recv" class="Pack.User" scope="page"></jsp:useBean>
	<jsp:setProperty property="uId" name="recv"/>
	
	<h1>���̵� ã��</h1>
	<div>
		<fieldset >
			<form method = "POST" action = "findidSQL.jsp">
				<label>�̸�    : </label>
				<input type = "text" name = "uName" required><br>
				<label>��ȭ��ȣ : </label>
				<input type = "text" name ="uTel" required>
				<input type = "submit" value = "ã��">
				<% String uId = recv.getuId();
					if(uId != null){
					out.print("���̵� �Ǵ� ��й�ȣ�� Ʋ�Ƚ��ϴ�.");
				} %>
			</form>
		</fieldset>
	</div>
</body>
</html>