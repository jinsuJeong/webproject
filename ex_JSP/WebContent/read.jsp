<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","201550057","201550057");
 
 PreparedStatement sql = conn.prepareStatement("select * from student");
 ResultSet rs = sql.executeQuery();
 
 while(rs.next()) {
  String no = rs.getString("no");
  String name = rs.getString("name"); %>
  <%= no %>
  <%= name %><br>
  <% }

  conn.close();
%>