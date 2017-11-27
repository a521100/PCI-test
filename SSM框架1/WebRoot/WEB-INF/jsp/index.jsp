<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   
   <%
      String path=request.getContextPath();
   
   %> 
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>1</title>

<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../css/zzsc.css">
<link rel="stylesheet" href="../css/dcalendar.picker.css"/>

</head>
<body>
<div style="text-align:center;clear:both">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>
<div class="zzsc-container">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3>日历-calendar</h3>
				<table id='mycalendar' class='calendar'></table>
			</div>
			<!-- <div class="col-md-6">
				<h3>鏃ユ湡閫夋嫨鍣�datepicker</h3>
				<input id='mydatepicker' type='text'/>
				<h3>鏍煎紡鍖栨棩鏈�/h3>
				<input id='mydatepicker2' type='text'/>
			</div>
		</div> -->
		<div>
			<h3>得到的内容</h3>
			<table>
				
				<tr>
					12
				</tr>
				<td>
					34
				</td>
					
				
			</table>
		</div>
	</div>
</div>

<script src="../js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script type="text/javascript" src="../js/dcalendar.picker.js"></script>
<script type="text/javascript">
	$('#mydatepicker').dcalendarpicker(); 
	$('#mydatepicker2').dcalendarpicker({
		format:'yyyy-mm-dd'
	}); 
	$('#mycalendar').dcalendar();
</script>


</body>
</html>