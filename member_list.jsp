<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
 <%
    Connection conn=null;
    String sql="SELECT userid FROM users";
    ArrayList<String> users = new ArrayList<String>();
    try{
    	Context init = new InitialContext();
    	DataSource ds = (DataSource) init.lookup("java:/comp/env/jdbc/OracleDB");
    	conn = ds.getConnection();
    	PreparedStatement stmt=conn.prepareStatement(sql);
    	ResultSet rs=stmt.executeQuery();
    	while(rs.next()){
    		users.add(rs.getString("userid"));
    	}
    }catch(Exception e){
    	out.println("<h3>유저정보 출력 실패...</h3>");
    	e.printStackTrace();
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용자 리스트</title>
</head>
<body>
<center>
<table border=1>
<tr>
<td colspan=2>이용자 목록</td>
</tr>
<c:forEach var="item" items="<%=users%>" varStatus="vs">
<tr>
<td>${ item }</td>
<td><a href="member_info.jsp?userid=${item}">상세정보</a>
<a href="member_delete.jsp?userid=${item}">삭제</a></td>
</tr>
</c:forEach>
</table>
</center>
</body>
</html>