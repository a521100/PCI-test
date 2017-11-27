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
	<title>注册</title>
	<link rel="stylesheet" type="text/css" href="../css/easyui.css">
	<link rel="stylesheet" type="text/css" href="../css/icon.css">
	<link rel="stylesheet" type="text/css" href="../css/demo.css">
	<script type="text/javascript" src="../js/jquery.min.js"></script>
	<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
    <style type="text/css">

        table td{
            border-left:1px solid #F00;
            border-top:1px solid #F00;
            text-align:center;
        }
        table th{
            border-left:1px solid #F00;
            border-top:1px solid #F00;
            text-align:center;
        }
        table {
            border-right:1px solid #F00;
            border-bottom:1px solid #F00;
        }

        /*
        css 注释：
        只对table td设置左与上边框；
        对table设置右与下边框；
        为了便于截图，我们将css 注释说明换行排版
        */

    </style>

</head>
<body>

<b>注册信息</b>
<hr color="red">
<c:forEach var="item" items="${map}">
    ${item.key} > ${item.value} <br>
</c:forEach>
<br/>
<b>用户列表</b>

<table cellpadding="5" width="60%">
    <tr>
        <th>userid</th>
        <th>username</th>
        <th>userpwd</th>
        <th>age</th>
        <th>sex</th>

    </tr>
    <c:forEach var="row" items="${list}">
        <tr>
            <td><c:out value="${row.userid}"/></td>
            <td><c:out value="${row.username}"/></td>
            <td><c:out value="${row.userpwd}"/></td>
            <td><c:out value="${row.age}"/></td>
            <td><c:out value="${row.sex}"/></td>

        </tr>
    </c:forEach>
</table>



<br/>
<a href="login.do">登录</a>


</body>
</html>