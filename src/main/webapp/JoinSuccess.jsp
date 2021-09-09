
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
	String uName = request.getParameter("uName"); // input.jsp���� ���λ��� 媛��ㅼ�� 諛����듬����.
	String uId = request.getParameter("uId");
	String pass = request.getParameter("pass");
	String bd = request.getParameter("bd");
	String address = request.getParameter("address");
	String uTel = request.getParameter("uTel");
	
	
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/db01?useUnicode=true&characterEncoding=utf8"; // ��源� ���������� 留�李ш�吏�濡� url�� �ㅼ����二�
		Connection con = DriverManager.getConnection(url, "root", "dyddus29!");
		String sql = "INSERT INTO userInfo(uName,uId,pass,bd,address,uTel) VALUES(?,?,?,?,?,?)"; // sql臾� ����(id�� name, pwd媛��ㅼ�� 蹂대�닿린���� ����)
		PreparedStatement pstmt = con.prepareStatement(sql);

		pstmt.setString(1,uName); // values�� �ㅼ�닿� 媛�媛��� id, name, pwd �ㅼ��
		pstmt.setString(2,uId);
		pstmt.setString(3,pass);
		pstmt.setString(4,bd);
		pstmt.setString(5,address);
		pstmt.setString(6,uTel);
		

		pstmt.executeUpdate(); // sql臾� �ㅽ��(����異�媛� �ㅽ��)
		pstmt.close();
		con.close();
		
	}

	catch(ClassNotFoundException e) // ���몄�由�
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