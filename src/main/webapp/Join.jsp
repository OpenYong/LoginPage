
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	a{
		text-decoration: none;
	}
	 fieldset{
		width:400px;
	} 
</style>
</head>
<body>
	
	<jsp:useBean id="recv" class="Pack.User" scope="page"/>
	<jsp:setProperty name="recv" property="*"/>
	<%
		String gbn = recv.getuId();
	%>
	<h1>회원 가입</h1>
	<fieldset>
	<form method=POST action="JoinSuccess.jsp">
	<label>아이디</label><input type="text" name="uId" id="uId" value="<%=(recv.getuId()==null)?"":recv.getuId()%>"><input type="button" value="중복확인" onClick="idCheck()"></button><%if(gbn ==null){out.println(" 중복");}else{out.println("");}%><br>
	<label>이름</label><input type="text" name="uName" required><Br> 	
	<label>패스워드</label><input type="text" name="pass" ><Br>
	<label>생년월일</label><input type="text" name="bd" maxlength="6"><Br>
	<label>주소</label><input type="text" name="address"><Br>
	<label>핸드폰번호</label><input type="text" name="uTel"><Br> 
	<input type="submit" value="가입"><button><a href="index.jsp">취소</a></button> 
	
	</form>
	</fieldset>
	<script type="text/javascript">
	function idCheck(){
		
		var uId = document.getElementById("uId").value;			
		location.href="Idcheck.jsp?uId=" + uId;
		
	}	
	</script>
</body>
