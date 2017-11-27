<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <%
      String path=request.getContextPath();
   
   %> 
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>登录后页面</title>
	<link rel="stylesheet" type="text/css" href="../css/easyui.css">
	<link rel="stylesheet" type="text/css" href="../css/icon.css">
	<link rel="stylesheet" type="text/css" href="../css/demo.css">
	<script type="text/javascript" src="../js/jquery.min.js"></script>
	<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>


</head>
<body>

<b>登录后信息</b>
<hr color="red">

<c:choose>
    <c:when test="${map.size()>0}">
        <b>登录成功</b></br>
        <c:forEach var="item" items="${map}">
            ${item.key} > ${item.value} <br>
        </c:forEach>
    </c:when>
    <c:otherwise>
        <b>登录失败</b></br>
    </c:otherwise>
</c:choose>





<br/>
<br/>



</body>
</html>