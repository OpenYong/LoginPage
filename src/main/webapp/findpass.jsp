<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��й�ȣ ã��</title>
</head>
<body>
	<jsp:useBean id="recv" class="Pack.User" scope="page"></jsp:useBean>
	<jsp:setProperty property="uId" name="recv"/>

	<div>
		<fieldset >
		<legend>��й�ȣ ã��</legend>
			<form method = "POST" action = "findpassSQL.jsp">
				<label>���̵�  : </label>
				<input type = "text" name = "uId" required><br>
				<label>�̸�    : </label>
				<input type = "text" name ="uName" required><br>
				<input type = "submit" value = "ã��"><br>
				<% String uId = (recv.getuId() == null) ? "" : recv.getuId();
					if(uId != ""){ %>
					<p style="color:red;">��ġ�ϴ� ȸ�������� �����ϴ�</p>
				<% } %>
			</form>
		</fieldset>
		<a href="index.jsp">�α��� �ϱ�</a>
		
	</div>
</body>
</html>