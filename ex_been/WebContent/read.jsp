<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "ex_been.student_DAO" %>
<%@ page import = "ex_been.student_VO" %>


<%
	request.setCharacterEncoding("UTF-8");
	student_DAO dao = new student_DAO(); //사용자 객체 생성
	List<student_VO> items = new ArrayList<student_VO>(); 
 	 items = dao.selectStudent(); 
 %>
 <% 
 for(int i=0; i<items.size(); i++) { 
  student_VO item = (student_VO)items.get(i); 
%> 
  <%=item.getNo()%> 
  <%=item.getName()%><BR> 
 <%}%> 

