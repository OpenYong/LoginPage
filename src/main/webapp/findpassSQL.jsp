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
<title>��й�ȣ ã��</title>
</head>
<body>
<jsp:useBean id="recv" class="Pack.User" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="recv"/>
	
	<%
	request.setCharacterEncoding("utf-8");
	String uId = recv.getuId(); // findid.jsp���� �Է°����� �޾ƿ´�.
	String uName = recv.getuName();

	try
	{
		
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/db01?useUnicode=true&characterEncoding=utf8"; // url�� ����
		Connection con = DriverManager.getConnection(url, "root", "dyddus29!");
		String sql = "SELECT pass FROM userInfo WHERE uId = ? AND uName = ?"; // sql�� �ۼ�
	
		PreparedStatement pstmt = con.prepareStatement(sql);
		

		pstmt.setString(1,uId); // values�� �� ������ id, name, pwd ����
		pstmt.setString(2,uName);

		pstmt.executeQuery(); // sql�� ����(ȸ���߰� ����)
		
		ResultSet result = pstmt.executeQuery();
		 // sql�� ����(ȸ���߰� ����)
		if (result.next()) {
			String pass = result.getString(1);
			if (uId != null) { %>
				<h1>��й�ȣ�� <%=  pass %> �Դϴ�.</h1>
				<a href="index.jsp">�α��� �ϱ�</a>
				
			<%}
		} else {
			response.sendRedirect("findpass.jsp?uId="+request.getParameter("uId")); 
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