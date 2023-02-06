<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= session.getAttribute("name") %> 님 환영합니다. <br>
<c:if test="${param.id=='admin' }">
<a href="member_list.jsp">관리자 페이지로 이동</a>
</c:if>
</body>
</html>