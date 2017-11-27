<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   
   <%
      String path=request.getContextPath();
   
   %> 
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>登录</title>
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/icon.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/demo.css">
    <script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/jquery.easyui.min.js"></script>

    <style type="text/css">

        .lileft{
            float:left;
            width:40%;
            text-align:right;
            height:30px;
            line-height:30px;
            list-style-type:none;

        }

        .liright{
            float:left;
            width:59%;
            text-align:left;
            padding-left:2px;
            height:30px;
            line-height:30px;
            list-style-type:none;
        }
        .libtn{
            width:100%;
            text-align: center;
            list-style-type:none;
        }

    </style>
</head>
<body>

<b>搜索</b>
<hr color="red">
<form id="searchForm" action="<%=path%>/user/getFenye.do" method="post" onsubmit="return checkForm();" >
    <ul style="width:600px">
        <li class="lileft">请输入查询内容</li><li class="liright"><input id="searchcontent" name="searchcontent" type="text" onkeydown=" $('#searchcontentspan').html('');" /><span style="color:red" id="searchcontentspan"></span></li>
        <li class="lileft"><input type="button" onclick="userSearch()" value="登录" /></li>

    </ul>

    <script type="text/javascript">

        var checkForm=function(){
            if($("#searchcontent").val()==""){
                //alert("未填写用户名");
                $("#searchcontentspan").html("&nbsp;&nbsp;输入内容为空");
                return false;
            }
        }

        var userSearch=function(){
            $("#searchForm").submit();
        }
        

    </script>

</form>



</body>
</html>