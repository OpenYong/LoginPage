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

	<div>
		<fieldset >
		<legend>���̵� ã��</legend>
			<form method = "POST" action = "findidSQL.jsp">
				<label>�̸�    : </label>
				<input type = "text" name = "uName" required><br>
				<label>��ȭ��ȣ : </label>
				<input type = "text" name ="uTel" required><br>
				<input type = "submit" value = "ã��"><br>
				
				<% String uId = recv.getuId();
					if(uId != null){ %>
						<p style="color:red;">��ġ�ϴ� ȸ�������� �����ϴ�</p>
				<% } %>
			</form>
		</fieldset>
		<a href="index.jsp">�α��� �ϱ�</a>
		<a href="findpass.jsp">��й�ȣ ã��</a>
	</div>
</body>
</html>