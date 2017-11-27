<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   
   <%
      String path=request.getContextPath();
   
   %> 
    
    
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

<b>登录</b>
<hr color="red">
<form id="loginForm" action="<%=path%>/user/userLogin.do" method="post" onsubmit="return checkForm();" >
    <ul style="width:600px">
        <li class="lileft">用户名</li><li class="liright"><input id="username" name="username" type="text" onkeydown=" $('#usernamespan').html('');" /><span style="color:red" id="usernamespan"></span></li>
        <li class="lileft">密码</li><li class="liright"><input id="userpwd" name="userpwd"  type="password" onkeydown=" $('#userpwdspan').html('');"  /><span style="color:red" id="userpwdspan"></span></li>
        <li class="lileft"><input type="button" onclick="userLogin()" value="登录" /></li><li class="liright"><input type="button" onclick="regist()" value="注册" /></li>

    </ul>

    <script type="text/javascript">

        var checkForm=function(){
            if($("#username").val()==""){
                //alert("未填写用户名");
                $("#usernamespan").html("&nbsp;&nbsp;未填写用户名");
                return false;
            }
            if($("#userpwd").val()==""){
                //alert("未填写用户密码");
                $("#userpwdspan").html("&nbsp;&nbsp;未填写用户密码");
                return false;
            }

            return true;
        }

        var userLogin=function(){
            $("#loginForm").submit();
        }
        var regist=function(){
           window.location.href="regist.do";
        }

    </script>

</form>



</body>
</html>