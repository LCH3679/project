<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터베이스 연동</title>
</head>
<body>
<%	
	Connection conn =null;
		
	String url = "jdbc:log4jdbc:oracle:thin:@localhost:1521:XE";
	String user = "c##book_ex";
	String password = "book_ex";
		
	Class.forName("net.sf.log4jdbc.sql.jdbcapi.DriverSpy");
	conn = DriverManager.getConnection(url,user,password);
%>
</body>
</html>