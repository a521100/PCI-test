<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   
   <%
      String path=request.getContextPath();
   
   %> 
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>注册</title>
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

<b>注册</b>
<hr color="red">
<form action="<%=path%>/user/userRegist.do" method="post" onsubmit="return checkForm();" >
    <ul style="width:600px">
        <li class="lileft">用户名</li><li class="liright"><input id="username" name="username" type="text" /><span style="color:red" id="usernamespan"></span></li>
        <li class="lileft">密码</li><li class="liright"><input id="userpwd" name="userpwd"  type="password" /><span style="color:red" id="userpwdspan"></span></li>
        <li class="lileft">年龄</li><li class="liright"><input id="age" name="age"  type="text" /><span style="color:red" id="useragespan"></span></li>
        <li class="lileft">性别</li><li class="liright"><select id="sex" name="sex"  ><option value="男">男</option><option value="女">女</option></select><span style="color:red" id="usersexspan"></span></li>
        <li class="libtn"><button>提交</button></li>
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
            if($("#age").val()==""){
                //alert("未填写年龄");
                $("#useragespan").html("&nbsp;&nbsp;未填写年龄");
                return false;
            }
            if($("#sex").val()==""){
                //alert("未选择性别");
                $("#usersexspan").html("&nbsp;&nbsp;未选择性别");
                return false;
            }
            return true;
        }

    </script>

</form>



</body>
</html>