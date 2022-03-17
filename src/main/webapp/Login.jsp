<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta name = "viewport" content="width=device-width, initial-scale=1.0">
   <meta charset="UTF-8">
   <div style="background-color:green; padding:10px;">
      <img src="images/sample.png" width="170" height="50">
   </div>
   <link rel="stylesheet" href="resources/css/bootstrap.css">
   
   <title>Login Form</title>
   
   <!-- 화면 유동성 -->
   <style> 
   #div_menu{
   width:20%;
   height:400%;
   background-color:red;
   text-align:center;
   float:right;
   }
   #div_con{
   width:80%;
   height:400px;
   background-color:blue;
   text-align:center;
   float:left;
   }
   </style>
</head>

<body>
<!-- bootstrap css -->
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
   <a class="navbar-brand" href="Login.jsp">duit</a>
     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
       <span class="navbar-toggler-icon"></span>
     </button>
     <div class="collapse navbar-collapse" id="collapsibleNavbar">
       <ul class="navbar-nav">
         <li class="nav-item">
           <a class="nav-link" href="/blog/user?cmd=login">로그인</a>
         </li>
         <li class="nav-item">
           <a class="nav-link" href="/blog/user?cmd=join">회원가입</a>
         </li>  
       </ul>
     </div>  
   
      <a href="#" class="nav_link">menu1</a>
      <a href="#" class="nav_link">menu2</a>
      <a href="#" class="nav_link">menu3</a>
      <a href="#" class="nav_link">menu4</a>
      <a href="#" class="nav_link">menu5</a>

</nav>

<div id="div_con">ㅇ</div>
      <div id="div_menu">
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
      
         </form>
      </div>
</div>
      </body>
</html>