<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="Pack.User" %>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���̵� ã��</title>
</head>
<body>
	<jsp:useBean id="recv" class="Pack.User" scope="page"></jsp:useBean>
	
	<%
	request.setCharacterEncoding("utf-8");
	String uName = request.getParameter("uName"); // findid.jsp���� �Է°����� �޾ƿ´�.
	String uTel = request.getParameter("uTel");

	try
	{
		
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/db01?useUnicode=true&characterEncoding=utf8"; // url�� ����
		Connection con = DriverManager.getConnection(url, "root", "dyddus29!");
		String sql = "SELECT uId FROM userInfo WHERE uName = ? AND uTel = ?"; // sql�� �ۼ�
	
		PreparedStatement pstmt = con.prepareStatement(sql);
		

		pstmt.setString(1,uName); // values�� �� ������ id, name, pwd ����
		pstmt.setString(2,uTel);

		pstmt.executeQuery(); // sql�� ����(ȸ���߰� ����)
		
		ResultSet result = pstmt.executeQuery();
		 // sql�� ����(ȸ���߰� ����)
		if (result.next()) {
			String uId = result.getString(1);
			System.out.println(uId);
			if (uId != null) { %>
				<h1>���̵�� <%=  uId %> �Դϴ�.</h1>
				<a href="index.jsp"></a>
			<%}
		} else {
			response.sendRedirect("findid.jsp?uId="+request.getParameter("uId")); 
		}
		
		pstmt.close();
		con.close();
		
	}

	catch(ClassNotFoundException e) // ����ó��
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