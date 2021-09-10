<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>비밀번호 찾기</title>
</head>
<body>
	<jsp:useBean id="recv" class="Pack.User" scope="page"></jsp:useBean>
	<jsp:setProperty property="uId" name="recv"/>

	<div>
		<fieldset >
		<legend>비밀번호 찾기</legend>
			<form method = "POST" action = "findpassSQL.jsp">
				<label>아이디  : </label>
				<input type = "text" name = "uId" required><br>
				<label>이름    : </label>
				<input type = "text" name ="uName" required><br>
				<input type = "submit" value = "찾기"><br>
				<% String uId = (recv.getuId() == null) ? "" : recv.getuId();
					if(uId != ""){ %>
					<p style="color:red;">일치하는 회원정보가 없습니다</p>
				<% } %>
			</form>
		</fieldset>
		<a href="index.jsp">로그인 하기</a>
		
	</div>
</body>
</html>