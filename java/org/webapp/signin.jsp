<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Log In</title>
      <link rel="stylesheet" href="sign in.css">
   </head>
   <body>
      <div class="wrapper">
         <div class="title">
            Login
         </div>
         <form method="post" action="signin">
            <div class="field">
               <input type="email" name="email" id="email">
               <label>Email Address</label>
            </div>
            <div class="field">
               <input type="password" name="password" id="password">
               <label>Password</label>
            </div>
            <div class="content">
               <div class="checkbox">
                  <input type="checkbox"  name="remember-me" id="remember-me">
                  <label for="remember-me">Remember me</label>
               </div>
               <div class="pass-link">
                  <a href="#">Forgot password?</a>
               </div>
            </div>
            <div class="field">
               <input type="submit" value="Login">
            </div>
            <div class="signup-link">
               Not a member? <a href="registration.html">Signup now</a>
            </div>
         </form>
      </div>
   </body>
</html>