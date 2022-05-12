<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta name = "viewport" content="width=device-width, initial-scale=1.0">
   <meta charset="UTF-8">
     <link rel="stylesheet" href="resources/css/bootstrap.css">
     <link rel="stylesheet" href="resources/css/center">
  
   <title>Login Form</title>
   
    
   
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
           <a class="nav-link" href="/blog/user?cmd=login">메뉴2</a>
         </li>
         <li class="nav-item">
           <a class="nav-link" href="/blog/user?cmd=join">메뉴1</a>
         </li>  
       </ul>
     </div>  
   
      <a href="#" class="nav_link">menu1</a>
      <a href="#" class="nav_link">menu2</a>
      <a href="#" class="nav_link">menu3</a>
      <a href="#" class="nav_link">menu4</a>
      <a href="#" class="nav_link">menu5</a>

</nav>

<div class="container">
      <div class="centered ">
         <div class="col-lg-4">

            <h1>회원가입</h1>
            <form method="post" action="JoinAction.jsp">
               <div class="form-group">
                  <input type="text" placeholder="이름" name="USERNAME" maxlength="10" style="width: 500px; height:20px">
               </div>
               <div class="form-group">
                  <input type="text" placeholder="아이디" name="USER_ID" maxlength="20" style="width: 500px; height:20px">
               </div>
               <div class="form-group">
                  <input type="password" placeholder="비밀번호" name="PASSWORD" maxlength="20" style="width: 500px; height:20px">
               </div>
               <div class="form-group">
                  <input type="password" placeholder="비밀번호 확인" name="PASSWORD" maxlength="20" style="width: 500px; height:20px">
               </div>
               <div class="form-group">
                  <input type="text" placeholder="이메일 ex) abc123@daegu.ac.kr" name="EMAIL" maxlength="20" style="width: 500px; height:20px">
               </div>
               <div class="form-group">
                  <input type="text" placeholder="전화번호 000-0000-0000" name="PHONE_NUMBER" maxlength="20" style="width: 500px; height:20px">
               </div>
               <input type="submit"  name="login" value="가입" style="width: 500px; height:25px">
               
              </form>
              </div>
                         
                  
               


               

         </div>
            
      </div>

     
      </body>
</html>