<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="Pack.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="recv" class="Pack.User" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="recv"/>
	
	<jsp:getProperty property="uName" name="recv"/>
	<jsp:getProperty property="uId" name="recv"/>
	<jsp:getProperty property="pass" name="recv"/>
	<jsp:getProperty property="address" name="recv"/>
	<jsp:getProperty property="bd" name="recv"/>
	<jsp:getProperty property="uTel" name="recv"/>

</body>
</html>