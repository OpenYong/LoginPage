<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
=======
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="Pack.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
>>>>>>> b1aec4d2cdfae37031aa100e2946bec2fe5ff51f
<title>Insert title here</title>
<style>
	a{
		text-decoration: none;
	}
	 fieldset{
<<<<<<< HEAD
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
	<label>아이디</label><input type="text" name="uId" id="uId" value="<%=(recv.getuId()==null)?"":recv.getuId()%>"><input type="button" value="중복 확인" onClick="idCheck()"></button><%if(gbn ==null){out.println(" 중복입니다");}else{out.println("");}%><br>
	<label>이름</label><input type="text" name="uName" required><Br> 	
	<label>비밀번호</label><input type="text" name="pass" ><Br>
	<label>생년월일</label><input type="text" name="bd" maxlength="6"><Br>
	<label>주소</label><input type="text" name="address"><Br>
	<label>휴대폰번호</label><input type="text" name="uTel"><Br> 
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
=======
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
>>>>>>> b1aec4d2cdfae37031aa100e2946bec2fe5ff51f
