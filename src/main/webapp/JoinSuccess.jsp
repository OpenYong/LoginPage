
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
	String uName = request.getParameter("uName"); // 
	String uId = request.getParameter("uId");
	String pass = request.getParameter("pass");
	String bd = request.getParameter("bd");
	String address = request.getParameter("address");
	String uTel = request.getParameter("uTel");
	
	
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/db01?useUnicode=true&characterEncoding=utf8"; // 
		Connection con = DriverManager.getConnection(url, "root", "dyddus29!");
		String sql = "INSERT INTO userInfo(uName,uId,pass,bd,address,uTel) VALUES(?,?,?,?,?,?)"; // 
		PreparedStatement pstmt = con.prepareStatement(sql);

		pstmt.setString(1,uName); // 
		pstmt.setString(2,uId);
		pstmt.setString(3,pass);
		pstmt.setString(4,bd);
		pstmt.setString(5,address);
		pstmt.setString(6,uTel);
		

		pstmt.executeUpdate(); // 
		pstmt.close();
		con.close();
		response.sendRedirect("index.jsp");
	}

	catch(ClassNotFoundException e) // 
	{
		out.println(e);
	}
	catch(SQLException e)
	{
		out.println(e);
	}
		
	%>
</body>
</html>