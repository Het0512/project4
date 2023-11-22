<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.example.practice_p4.BoardDAO"%>
<%@ page import="com.example.practice_p4.BoardVO" %>
<%@ page import="com.example.practice_p4.FileUpload" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	BoardDAO boardDAO = new BoardDAO();
	FileUpload upload = new FileUpload();
	BoardVO u = upload.uploadImg(request);
	int i = boardDAO.insertBoard(u);
	String msg = "데이터 추가 성공 !";
	if(i == 0) msg = "[에러] 데이터 추가 ";
%>

<script>
	alert('<%=msg%>');
	location.href='posts.jsp';
</script>