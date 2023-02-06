<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<form action="loginProcess.jsp" method="post">
<table border=1>
<tr>
<td colspan="2"> 로그인 페이지 </td>
</tr>
<tr>
<td>아이디</td>
<td><input type="text" name="id"></td>
</tr>
<tr>
<td>비밀번호</td>
<td><input type="text" name="pw"></td>
</tr>
<tr>
<td colspan=2>
<input type="submit" value="로그인하기">
<a href="joinForm.jsp">회원가입하기</a>
</td>
</tr>
</table>
</form>
</center>
</body>
</html>