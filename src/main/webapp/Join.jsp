<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="Pack.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	a{
		text-decoration: none;
	}
	 fieldset{
		width:350px;
	}
</style>
</head>
<body>
	<h1>ȸ�� ����</h1>
	<fieldset>
	<form method=POST action="JoinSuccess.jsp">
	<label>�̸�</label><input type="text" name="uName" required><button>�ߺ�Ȯ��</button><Br>
	<label>���̵�</label><input type="text" name="uId" required><Br>
	<label>��й�ȣ</label><input type="text" name="pass" required><Br>
	<label>�������</label><input type="text" name="bd" required maxlength="6"><Br>
	<label>�ּ�</label><input type="text" name="address"><Br>
	<label>�޴�����ȣ</label><input type="text" name="uTel"><Br>
	<input type="submit" value="����">
	</form>
	</fieldset>
</body>