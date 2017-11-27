<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Adminity - Login</title>
  <link rel="shortcut icon" href="favicon.gif">
  <!---CSS Files-->
  <link rel="stylesheet" href="../css/master.css">
  <link rel="stylesheet" href="../css/login.css">
  <!---jQuery Files-->
  <script src="../js/jquery-1.7.1.min.js"></script>
  <script src="../js/jquery.spinner.js"></script>
  <script type="text/javascript" src="../js/forms/jquery.validate.min.js"></script>
  <!---Fonts-->
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600' rel='stylesheet' type='text/css'>
  <!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
    <!---FadeIn Effect, Validation and Spinner-->
  <script>
    $(document).ready(function () {
       $('div.wrapper').hide();
        $('div.wrapper').fadeIn(1200);
        $('#lg-form').validate();
        $('.submit').click(function() {
        var $this = $(this);
        $this.spinner();
        setTimeout(function() {
                $this.spinner('remove');
        }, 1000);
       });
    });
  </script>
</head>
<body>
	<div class="wrapper">
		<div class="logo">
	 	<h1></h1>
	 </div>
   <div class="lg-body">
     <div class="inner">
       <div id="lg-head">
         <p><span class="font-bold">管理员</span></p>
         <div class="separator"></div>
       </div>
       <div class="login">
         <form id="lg-form" method="post" action="<%=path%>/user/getAll.do">
           <fieldset>
              <ul>
                 <li id="usr-field">
                  <input class="input required" name="name" type="text" size="26" minlength ="1" placeholder="Username..." />
                 </li>
                 <li id="psw-field">
                  <input class="input required" name="pass" type="password" size="26" minlength="1" placeholder="Password..." />
                 </li>
                 <li class="checkbox">
                  <input class="checkbox" type="checkbox" id="remember-me" value="remember" /> 
                  <label for="remember-me" class="checkbox-text">记住账号</label>
                 </li>
                 <li>
                  <input class="submit" type="submit" value=""/>
                 </li>
              </ul>
           </fieldset>
          </form>
          <span id="lost-psw">
           <a href="#">记住密码 </a>
          </span>
        </div>
     </div>
    </div>
	</div>

</body>
</html>