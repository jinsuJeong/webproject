<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:useBean id="item" scope="page" class="ex_been.student_VO">
	<jsp:setProperty name="item" property="no" />
	<jsp:setProperty name="item" property="name" />
	<!--<jsp:setProperty name="item" property="*"/>-->
</jsp:useBean>
<jsp:useBean id="dao" scope="page" class="ex_been.student_DAO" />

<%
 request.setCharacterEncoding("UTF-8");
 dao.insertStudent(item);
%>

