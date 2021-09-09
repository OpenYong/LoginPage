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
	<h1>회원 가입</h1>
	<fieldset>
	<form method=POST action="JoinSuccess.jsp">
	<label>이름</label><input type="text" name="uName" required><button>중복확인</button><Br>
	<label>아이디</label><input type="text" name="uId" required><Br>
	<label>비밀번호</label><input type="text" name="pass" required><Br>
	<label>생년월일</label><input type="text" name="bd" required maxlength="6"><Br>
	<label>주소</label><input type="text" name="address"><Br>
	<label>휴대폰번호</label><input type="text" name="uTel"><Br>
	<input type="submit" value="가입">
	</form>
	</fieldset>
</body>