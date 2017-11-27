<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta charset="utf-8">
  <title>中国电信PCI混淆/冲突检测机制</title>
  <link rel="shortcut icon" href="favicon.gif">
  <!---CSS Files-->
  <link rel="stylesheet" href="../css/master.css">
  <link rel="stylesheet" href="../css/tables.css">
  <!---jQuery Files-->
  <script src="../js/jquery-1.7.1.min.js"></script>
  <script src="../js/jquery-ui-1.8.17.min.js"></script>
  <script src="../js/styler.js"></script>
  <script src="../js/jquery.tipTip.js"></script>
  <script src="../js/colorpicker.js"></script>
  <script src="../js/sticky.full.js"></script>
  <script src="../js/global.js"></script>
  <script src="../js/jquery.dataTables.min.js"></script>
  <!---Fonts-->
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
  <!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
  <!--[if lte IE 8]>
  <script language="javascript" type="text/javascript" src="js/flot/excanvas.min.js"></script>
  <![endif]-->
</head>
<body>

  <!--- HEADER -->

	<div class="header">
   <img src="../img/logo.png" alt="Logo" width="18%" height="18%" /><font face="黑体" color="#000093" size="6">基于切换统计的PCI冲突/混淆检测分析</font> 
  </div>

  <div class="top-bar">
      <ul id="nav">       
        <li>
        <ul id="top-nav">        
         <li class="nav-item">
           <a href="#"><img src="../img/nav/tb-active.png" alt="" /><p>表格</p></a>
         </li>
         <li class="nav-item">
           <a href="#"><img src="../img/nav/grid.png" alt="" /><p>网格</p></a>
         </li> 
         <!--<li class="nav-item">
           <a href="calendar.do"><img src="../img/nav/cal.png" alt="" /><p>时间</p></a>
         </li>
         <li class="nav-item">
           <a href="analytics.html"><img src="../img/nav/anlt.png" alt="" /><p>分析</p></a>
         </li>    
         <li class="nav-item">
           <a href="filemanager.html"><img src="../img/nav/flm.png" alt="" /><p>文件</p></a>
         </li>
         <li class="nav-item">
           <a href="typography.html"><img src="../img/nav/typ.png" alt="" /><p>样式</p></a>
         </li>
         <li class="nav-item">
           <a href="icons.html"><img src="../img/nav/icn.png" alt="" /><p>标志</p></a>
         </li>
         <li class="nav-item">
           <a href="gallery.html"><img src="../img/nav/gal.png" alt="" /><p>图像</p></a>
         </li>
         <li class="nav-item">
           <a href="grid.html"><img src="../img/nav/grid.png" alt="" /><p>网格</p></a>
         </li> 
         <li class="nav-item">
           <a href="#"><img src="../img/nav/err.png" alt="" /><p>参数</p></a>>
         </li>
         <li class="nav-item">
           <a href="dashboard.html"><img src="../img/nav/dash.png" alt="" /><p>设置</p></a>
         </li>          
       --></ul>
      </li>
     </ul>
  </div>

  <!--- CONTENT AREA -->
  
  <div>
  </div>
                   
  <div class="content container_12">
      <div class="box grid_12">
        <div class="box-head"><h2>疑似PCI冲突</h2></div>
        <div class="box-content no-pad"> 
        <table class="display" id="dt3">
        <thead>
          <tr>
                   <th>基站ID</th>
                   <th>小区ID</th>
                   <th>城市</th>
                   <th>区县</th>
                   <th>小区名</th>
                   <th>场景名称</th>
                   <th>扇区纬度</th>
                   <th>扇区经度</th>                
                   <th>距离/米</th>
                   <th>操作</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="row" items="${list}">
                <tr>
                   <td><c:out value="${row.eNodeBid}"/></td>
                   <td><c:out value="${row.Cellid}"/></td>
                   <td><c:out value="${row.City}"/></td>
                     <td><c:out value="${row.Quxian}"/></td>
                      <td><c:out value="${row.Xiaoquming}"/></td>
                   <td><c:out value="${row.changjingname}"/></td>
                   <td><c:out value="${row.longitude}"/></td>
                   <td><c:out value="${row.latitude}"/></td>
                   <td><c:out value="${row.juli}"/></td>
                   <td><a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()"><c:out value="返回"/></a></td>
               </tr>
               </c:forEach>     
        </tbody>
      </table>
        </div>
      </div>
      
     
      
      
      
  </div>
  
  

<script> /* SCRIPTS */
  $(function () {
    $('#dt1').dataTable( {
        "bJQueryUI": true   
    });
    $('#dt2').dataTable( {
        "bJQueryUI": true     
    });
    $('#dt3').dataTable( {
        "bJQueryUI": true,
        "sPaginationType": "full_numbers"   
    }); /* For the data tables */
  });
   function submitForm(){
				window.location.href="getAll.do";
			}  
  
</script>

</body>
</html>