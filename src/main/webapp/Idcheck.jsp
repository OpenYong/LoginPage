
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");	
	try
	{
		String  jdbcDriver = "com.mysql.jdbc.Driver";
		String dbUr1 = "jdbc:mysql://localhost/db01?useSSL=false";
		String username = "root";
		String password = "1234";
		
		Connection con = null;
		java.sql.Statement st = null;
		ResultSet rs = null;
		Class.forName(jdbcDriver);//.newInstance();
		con=DriverManager.getConnection(dbUr1, username, password);
		st = con.createStatement();
		
		String uId = request.getParameter("uId");

		
		rs = st.executeQuery("select count(*) from userInfo where uId = '"+uId+"'");
		rs.next();
		String gbn = rs.getString(1);
		
		con.close();
		
		if(gbn.equals("1"))
		{
			//중복
			response.sendRedirect("Join.jsp");
		
		}
		else
		{
			//중복아님
			response.sendRedirect("Join.jsp?uId="+uId);
		}
	}catch(Exception ex){
		ex.printStackTrace();
	}
	%>
	
</body>
</html>


















