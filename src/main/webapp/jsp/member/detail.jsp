<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Map<String, Object> memberRow = (Map<String, Object>) request.getAttribute("memberRow");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 상세페이지</title>
</head>
<body>
	<a href="../home/main">메인으로 이동</a>

	<h2>회원 상세페이지</h2>

	<div>
		번호 :
		<%=memberRow.get("id")%></div>
	<div>
		날짜 :
		<%=memberRow.get("regDate")%></div>
	<div>
		제목 :
		<%=memberRow.get("loginId")%></div>
	<div>
		내용 :
		<%=memberRow.get("loginPw")%></div>
		<div>
		내용 :
		<%=memberRow.get("name")%></div>

	<div>
		<a style="color: green;" href="list">리스트로 돌아가기</a>
	</div>
</body>
</html>