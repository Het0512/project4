<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.practice_p4.BoardDAO, com.example.practice_p4.BoardVO"%>
<%@ page import="com.example.practice_p4.FileUpload" %>
<%
	String sid = request.getParameter("id");
	if (sid != ""){  
		int id = Integer.parseInt(sid);
		BoardDAO boardDAO = new BoardDAO();
		BoardVO u = new BoardVO();
		u.setSeq(id);
		String filename = boardDAO.getImgFilename(id);
		if(filename != null)
			FileUpload.deleteFile(request, filename);
		boardDAO.deleteBoard(u);
	}
	response.sendRedirect("posts.jsp");
%>