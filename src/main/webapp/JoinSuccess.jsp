<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Pack.User"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="recv" class="Pack.User" scope="page"/>
	<jsp:setProperty name="recv" property="*"/>
	
	<%
	
	request.setCharacterEncoding("utf-8");
	String uName = request.getParameter("uName"); // input.jsp에서 입력받은 값들을 받아옵니다.
	String uId = request.getParameter("uId");
	String pass = request.getParameter("pass");
	String bd = request.getParameter("bd");
	String address = request.getParameter("address");
	String uTel = request.getParameter("uTel");
	
	
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/db01?useUnicode=true&characterEncoding=utf8"; // 아까 예제에서와 마찬가지로 url을 설정하죠
		Connection con = DriverManager.getConnection(url, "root", "1234");
		String sql = "INSERT INTO userInfo(uName,uId,pass,bd,address,uTel) VALUES(?,?,?,?,?,?)"; // sql문 작성(id와 name, pwd값들을 보내기위한 작업)
		PreparedStatement pstmt = con.prepareStatement(sql);

		pstmt.setString(1,uName); // values에 들어갈 각각의 id, name, pwd 설정
		pstmt.setString(2,uId);
		pstmt.setString(3,pass);
		pstmt.setString(4,bd);
		pstmt.setString(5,address);
		pstmt.setString(6,uTel);
		

		pstmt.executeUpdate(); // sql문 실행(회원추가 실행)
		pstmt.close();
		con.close();
		
	}

	catch(ClassNotFoundException e) // 예외처리
	{
		out.println(e);
	}
	catch(SQLException e)
	{
		out.println(e);
	}
		
	%>


	
	
	
=======
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

>>>>>>> b1aec4d2cdfae37031aa100e2946bec2fe5ff51f
</body>
</html>