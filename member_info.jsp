<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
 <%
    Connection conn=null;
    String sql="SELECT * FROM users WHERE userid = ?";
    String id = new String(), pw = new String(), email = new String(), name = new String(), idnum = new String(), birth = new String();
    try{
    	Context init = new InitialContext();
    	DataSource ds = (DataSource) init.lookup("java:/comp/env/jdbc/OracleDB");
    	conn = ds.getConnection();
    	PreparedStatement stmt=conn.prepareStatement(sql);
    	stmt.setString(1, request.getParameter("userid"));
    	ResultSet rs=stmt.executeQuery();
    	while(rs.next()){
    		id=rs.getString("userid");
    		pw=rs.getString("userpw");
    		email=rs.getString("email");
    		idnum=rs.getString("idnum");
    		name=rs.getString("username");
    		birth=rs.getDate("birth").toString();
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
<title>Insert title here</title>
</head>
<body>
<table style="border-collapse: collapse; border-color: rgb(0, 162, 255);" border="1" align="center" cellpadding="1">
                <tr>
                    <td colspan="2" align="center" style="background-color: rgb(85, 164, 255);"><b>회원 기본 정보</b></td>
                </tr>
                <tr>
                    <td align="center" style="background-color: rgb(200, 200, 200);"><b>아이디:</b></td>
                    <td><%=id %></td>
                </tr>
                <tr>
                    <td align="center" style="background-color: rgb(200, 200, 200);"><b>비밀번호:</b></td>
                    <td><%=pw %></td>
                </tr>
                <tr>
                    <td align="center" style="background-color: rgb(200, 200, 200);"><b>메일주소:</b></td>
                    <td><%=email %></td>
                </tr>
                <tr>
                    <td align="center" style="background-color: rgb(200, 200, 200);"><b>이름:</b></td>
                    <td><%=name %></td>
                </tr>
                <tr>
                    <td colspan="2" align="center" style="background-color: rgb(85, 164, 255);"><b>개인 신상 정보</b></td>
                </tr>
                <tr>
                    <td align="center" style="background-color: rgb(200, 200, 200);"><b>주민등록번호:</b></td>
                    <td><%=idnum %></td>
                </tr>
                <tr>
                    <td align="center" style="background-color: rgb(200, 200, 200);"><b>생일:</b></td>
                    <td><%=birth %></td>
                </tr>
</table>
<center>
<input type="button" value="돌아가기" onclick='history.back()'>
</center>
</body>
</html>