<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "ex_been.student_VO" %>
<%@ page import = "ex_been.student_DAO" %>

<%
 request.setCharacterEncoding("UTF-8");
 student_VO item = new student_VO(); //사용자 객체 생성

 item.setNo(request.getParameter("no"));
 item.setName(request.getParameter("name"));
 student_DAO dao = new student_DAO(); //사용자 객체 생성
 dao.insertStudent(item);
 response.sendRedirect("read.jsp");
%>

