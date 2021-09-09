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
	<h1>íšŒì› ê°€ì…</h1>
	<fieldset>
	<form method=POST action="JoinSuccess.jsp">
	<label>ì•„ì´ë””</label><input type="text" name="uId" id="uId" value="<%=(recv.getuId()==null)?"":recv.getuId()%>"><input type="button" value="ì¤‘ë³µ í™•ì¸" onClick="idCheck()"></button><%if(gbn ==null){out.println(" ì¤‘ë³µì…ë‹ˆë‹¤");}else{out.println("");}%><br>
	<label>ì´ë¦„</label><input type="text" name="uName" required><Br> 	
	<label>ë¹„ë°€ë²ˆí˜¸</label><input type="text" name="pass" ><Br>
	<label>ìƒë…„ì›”ì¼</label><input type="text" name="bd" maxlength="6"><Br>
	<label>ì£¼ì†Œ</label><input type="text" name="address"><Br>
	<label>íœ´ëŒ€í°ë²ˆí˜¸</label><input type="text" name="uTel"><Br> 
	<input type="submit" value="ê°€ì…"><button><a href="index.jsp">ì·¨ì†Œ</a></button> 
	
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
	<h1>È¸¿ø °¡ÀÔ</h1>
	<fieldset>
	<form method=POST action="JoinSuccess.jsp">
	<label>ÀÌ¸§</label><input type="text" name="uName" required><button>Áßº¹È®ÀÎ</button><Br>
	<label>¾ÆÀÌµğ</label><input type="text" name="uId" required><Br>
	<label>ºñ¹Ğ¹øÈ£</label><input type="text" name="pass" required><Br>
	<label>»ı³â¿ùÀÏ</label><input type="text" name="bd" required maxlength="6"><Br>
	<label>ÁÖ¼Ò</label><input type="text" name="address"><Br>
	<label>ÈŞ´ëÆù¹øÈ£</label><input type="text" name="uTel"><Br>
	<input type="submit" value="°¡ÀÔ">
	</form>
	</fieldset>
</body>
>>>>>>> b1aec4d2cdfae37031aa100e2946bec2fe5ff51f
