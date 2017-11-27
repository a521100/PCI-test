<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
	<title>封面</title>
	<meta charset="utf-8">
	<meta name="description" content="login">
	<meta name="author" content="yourname">
	<link rel="stylesheet" type="text/css" href="../css/login.css">
</head>
<body>
  <form class="login">
  	 <label for="username" class="login-label">username</label>
  	 <input type="text" name="username" placeholder="请输入" class="login-form">

  	 <!--<label for="password" class="login-label">password</label><input type="password" name="password" placeholder="请输入" class="login-form">
  	 --><input type="button" value="GO" class="login-sub" onclick="window.location.href='http://localhost:8080/abcde/user/index.do'">
  </form>
  
</body>
</html>
