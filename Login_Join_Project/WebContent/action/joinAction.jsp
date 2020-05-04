<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String birthyy = request.getParameter("birthyy");
	String birthmm = request.getParameter("birthmm");
	String birthdd = request.getParameter("birthdd");
	String email = request.getParameter("email");
	int result = 0;
	
	Connection conn;
	PreparedStatement pstmt;
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
	
	try{
		pstmt = conn.prepareStatement("insert into usertbl values(?,?,?,?,?,?,?,?)");
		pstmt.setString(1, id);
		pstmt.setString(2, password);
		pstmt.setString(3, name);
		pstmt.setString(4, gender);
		pstmt.setString(5, birthyy);
		pstmt.setString(6, birthmm);
		pstmt.setString(7, birthdd);
		pstmt.setString(8, email);
		result = pstmt.executeUpdate();
		
		if(result > 0){
			out.println("<script>");
			out.println("alert('가입이 완료되었습니다.')");
			out.println("location.href='../index.html'");
			out.println("</script>");
		} else{
			out.println("<script>");
			out.println("alert('가입에 실패했습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}
	} catch (Exception e){
		e.printStackTrace();
	}
%>