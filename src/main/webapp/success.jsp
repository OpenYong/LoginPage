<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="Pack.User" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��� ����</title>
</head>
<body>
	<jsp:useBean id="recv" class="Pack.User" scope="page" />
	<jsp:setProperty name="recv" property="uId"/>
	
	<div><%= recv.getuId()%>�� �α��� �����ϼ̽��ϴ�.</div>
	<br/>
	
	<a href="index.jsp">�α��� ȭ������ ���ư���</a>
</body>
</html>