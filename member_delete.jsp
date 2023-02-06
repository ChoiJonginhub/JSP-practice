<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
    <%
    Connection conn=null;
    String sql="DELETE FROM users WHERE userid = ?";
    
    try{
    	Context init = new InitialContext();
    	DataSource ds = (DataSource) init.lookup("java:/comp/env/jdbc/OracleDB");
    	conn = ds.getConnection();
    	PreparedStatement stmt=conn.prepareStatement(sql);
    	stmt.setString(1, request.getParameter("userid"));
    	stmt.executeUpdate();
    	response.sendRedirect("member_list.jsp");
    }catch(Exception e){
    	out.println("<h3>삭제 실패...</h3>");
    	e.printStackTrace();
    }
    %>