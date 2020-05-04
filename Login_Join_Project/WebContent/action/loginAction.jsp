<%@page import="user.UserVO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	int result = 0;
	UserVO vo = new UserVO();
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
	
	try{
		if(password != null){
			pstmt = conn.prepareStatement("select password from usertbl where id=?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				if(!rs.getString("password").equals(password)){
					result = -1;
				} else{
					result = 1;
				}
			}
		}
		
		if(result == -1){
			out.println("<script>");
			out.println("alert('비밀번호가 틀립니다.')");
			out.println("history.back()");
			out.println("</script>");
		} else if(result == 1){
			
			pstmt = conn.prepareStatement("select * from usertbl where id=?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				vo.setId(rs.getString("id"));
				vo.setPassword(rs.getString("password"));
				vo.setName(rs.getString("name"));
				vo.setGender(rs.getString("gender"));
				vo.setBirthyy(rs.getString("birthyy"));
				vo.setBirthmm(rs.getString("birthmm"));
				vo.setBirthdd(rs.getString("birthdd"));
				vo.setEmail(rs.getString("email"));
			}
			session.setAttribute("vo", vo);
			out.println("<script>");
			out.println("alert('로그인이 되었습니다.')");
			out.println("location.href='../mypage.jsp'");
			out.println("</script>");
		}
		
	} catch (Exception e){
		e.printStackTrace();
	}
%>