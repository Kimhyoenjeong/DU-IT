<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>


<%@ page import = "usertable.UserDAO" %>

<%@ page import = "java.io.PrintWriter" %> <!-- javascript를 사용할 수 있게 함 -->

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="usertable" class="usertable.User" scope="page" />
<jsp:setProperty name = "usertable" property = "userID"/>
<jsp:setProperty name = "usertable" property = "userPASSWORD"/>
<jsp:setProperty name = "usertable" property = "username"/>
<jsp:setProperty name = "usertable" property = "EMAIL"/>
<jsp:setProperty name = "usertable" property = "PHONENUMBER"/>

<html>
<head>
   <meta name = "viewport" content="width=device-width, initial-scale=1.0">
   <meta charset="UTF-8">
  
   <title>LoginAction Form</title>
   
    
   
</head>
<body>
	<%
		if ( usertable.getuserID()==null || usertable.getuserPASSWORD() == null || usertable.getusername() == null || usertable.getEMAIL() == null ||usertable.getPHONENUMBER() == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안 된 사항이 있습니다')");
			script.println("history.back()");
			script.println("</script>");
		}else{
			UserDAO userDAO = new UserDAO();
			int result = userDAO.join(usertable);
			if(result == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디입니다')");
				script.println("history.back()");
				script.println("</script>");
			}else {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('회원가입 성공')");
				script.println("location.href='/Login.jsp'");
				script.println("</script>");
			}
		}
	%>
</body>
</html>