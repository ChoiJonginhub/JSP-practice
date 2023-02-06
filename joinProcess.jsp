<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
    <%
    Connection conn=null;
    String sql="INSERT INTO users (userid, userpw, email, username, idnum, birth) VALUES (?, ?, ?, ?, ?, ?)";
    
    try{
    	Context init = new InitialContext();
    	DataSource ds = (DataSource) init.lookup("java:/comp/env/jdbc/OracleDB");
    	conn = ds.getConnection();
    	PreparedStatement stmt=conn.prepareStatement(sql);
    	stmt.setString(1, request.getParameter("id"));
    	stmt.setString(2, request.getParameter("pw"));
    	stmt.setString(3, request.getParameter("email"));
    	stmt.setString(4, request.getParameter("name"));
    	stmt.setString(5, request.getParameter("idnum"));
    	stmt.setDate(6, java.sql.Date.valueOf(request.getParameter("year")+"-"+request.getParameter("month")+"-"+request.getParameter("day")));
    	stmt.executeUpdate();
    	response.sendRedirect("loginForm.jsp");
    }catch(Exception e){
    	out.println("<h3>회원가입 실패...</h3>");
    	e.printStackTrace();
    }
    %>