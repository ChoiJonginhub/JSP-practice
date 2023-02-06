<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
 <%
    Connection conn=null;
    String sql="SELECT * FROM users WHERE userid = ? and userpw = ?";
    
    try{
    	Context init = new InitialContext();
    	DataSource ds = (DataSource) init.lookup("java:/comp/env/jdbc/OracleDB");
    	conn = ds.getConnection();
    	PreparedStatement stmt=conn.prepareStatement(sql);
    	stmt.setString(1, request.getParameter("id"));
    	stmt.setString(2, request.getParameter("pw"));
    	ResultSet rs=stmt.executeQuery();
    	while(rs.next()){
    		session.setAttribute("name", rs.getString("username"));
    		pageContext.forward("main.jsp");
    	}
    }catch(Exception e){
    	out.println("<h3>로그인 실패...</h3>");
    	e.printStackTrace();
    }
    %>