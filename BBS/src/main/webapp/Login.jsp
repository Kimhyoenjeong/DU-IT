<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name = "viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="UTF-8">
	<title>Login Form</title>
	
<!-- bootstrap css -->
	<link rel="stylesheet" href="sources/css/bootstrap/css">
	<label for="side_btn" class="side_toggle_bin"></label>
	<div class="side_list">
		<a href="#" class="side_link">menu1</a>
		<a href="#" class="side_link">menu2</a>
		<a href="#" class="side_link">menu3</a>
		<a href="#" class="side_link">menu4</a>
		<a href="#" class="side_link">menu5</a>
	</div>
</head>
<body>
		<div class="col-lg-4">
			<h1>로그인</h1>
			<form method="post" action="LoginAction.jsp">
				<div class="form-group">
					<input type="text" placeholder="학번" name="STUDENT_ID" maxlength="10" style="width: 200px; height:20px">
				</div>
				<div class="form-group">
					<input type="password" placeholder="비밀번호" name="PASSWORD" maxlength="20" style="width: 200px; height:20px">
				</div>
				<div class="checkbox">
					<input type="checkbox"  id="idSaveCheck"/>아이디 저장
				</div>
				<input type="submit" name="login" value="로그인" onClick="enter()" style="width: 200px; height:25px">
				
			</div>
				<a href="<%=request.getContextPath() %>/Login.jsp"> 회원가입</a>
				<a href="<%=request.getContextPath() %>/Login.jsp"> 비밀번호 찾기</a>
			</div>
			</form>
</body>
</html>