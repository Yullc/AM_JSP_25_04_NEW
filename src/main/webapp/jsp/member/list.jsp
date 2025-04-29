<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
List<Map<String, Object>> memberRows = (List<Map<String, Object>>) request.getAttribute("memberRows");

int cPage = (int) request.getAttribute("page");
int totalCnt = (int) request.getAttribute("totalCnt");
int totalPage = (int) request.getAttribute("totalPage");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 목록</title>
<style>
table>thead>tr>th, table>tbody>tr>td {
	padding: 5px;
}
</style>
</head>
<body>
	<h2>회원 목록</h2>



	<a href="../home/main">메인으로 이동</a>
	<a href="join">회원가입 하기</a>

	<div>
		총 회원 수 :
		<%=totalCnt%>
	</div>

	<table style="border-collapse: collapse; border-color: green;"
		border="1px">
		<thead>
			<tr>
				<th>번호</th>
				<th>등록 날짜</th>
				<th>수정 날짜</th>
				<th>아아디</th>
				<th>비밀번호</th>
				<th>이름</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (Map<String, Object> memberRow : memberRows) {
			%>
			<tr style="text-align: center;">
				<td><%=memberRow.get("id")%>번</td>
				<td><%=memberRow.get("regDate")%></td>
				<td><%=memberRow.get("updateDate")%></td>
				<td><a href="detail?id=<%=memberRow.get("id")%>"><%=memberRow.get("loginId")%></a></td>
				<td><%=memberRow.get("loginPw")%></td>
				<td><a href="modify?id=<%=memberRow.get("id")%>">수정</a></td>
				<td><a
						onclick="if ( confirm('정말 삭제하시겠습니까?') == false ) { return false; }"
						href="doDelete?id=<%=memberRow.get("id")%>">del</a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>

	<style type="text/css">
.page {
	font-size: 1.4rem;
}

.page>a {
	color: black;
	text-decoration: none;
}

.page>a.cPage {
	color: red;
	text-decoration: underline;
}
</style>

	<div class="page">
		<%
		for (int i = 1; i <= totalPage; i++) {
		%>
		<a class="<%=cPage == i ? "cPage" : ""%>" href="list?page=<%=i%>"><%=i%></a>
		<%
		}
		%>

	</div>


</body>
</html>