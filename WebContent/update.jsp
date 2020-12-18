<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.cos.test1.config.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정하기</title>
</head>
<body>
<% String sql = "UPDATE users SET username = 'ogu' WHERE username = 'cos'";
	Connection conn = DBConn.getConnection();
	PreparedStatement pstmt = 
			conn.prepareStatement(sql);
	pstmt.executeUpdate();
%>

</body>
</html>