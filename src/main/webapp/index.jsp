<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>ȸ�� ��� ������</h1>
	<table border="1">
		<tr>
			<td>���̵�</td>
			<td>��й�ȣ</td>
			<td>����</td>
			<td>����</td>
		</tr>
		<%
			Connection conn = null; 
			PreparedStatement pstmt = null; 
			ResultSet rs = null;
			
			try { 
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost/db01";
            conn = DriverManager.getConnection(url, "root", "dyddus29!");
			// ���� ��
			
			String sql = "select * from users"; 
			pstmt= conn.prepareStatement(sql);
			
			System.out.println("���� �Ϸ�");

			rs = pstmt.executeQuery(sql); 
				while (rs.next()) { 
				/* 	String uid = rs.getString("dddd");  */
				/* 	String pass = rs.getString("pass"); */
		%>		<%-- <tr>
					<td><%=uid%></td>
					<td><%=pass%></td>
					<td><a href="delete.jsp?uid=<%=uid %>&pass=<%= pass %>">����</a></td>
					<td><a href="update.jsp?uid=<%=uid %>&pass=<%= pass %>">����</a></td>
				</tr> --%>
		<%			
				}
			}catch(SQLException e){
				e.printStackTrace();
			}finally{
				try{
	                if( conn != null && !conn.isClosed()){
	                    conn.close();
	                }
	                if( pstmt != null && !pstmt.isClosed()){
	                    pstmt.close();
	                }
	                if( rs != null && !rs.isClosed()){
	                    rs.close();
	                }
	            }
	            catch( SQLException e){
	                e.printStackTrace();
	            }
			}
		%>
	</table>
</body>
</html>