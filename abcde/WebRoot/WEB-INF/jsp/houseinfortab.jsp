<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" language="javascript">
        var idTmr;
        function  getExplorer() {
            var explorer = window.navigator.userAgent ;
            //ie
            if (explorer.indexOf("MSIE") >= 0) {
                return 'ie';
            }
            //firefox
            else if (explorer.indexOf("Firefox") >= 0) {
                return 'Firefox';
            }
            //Chrome
            else if(explorer.indexOf("Chrome") >= 0){
                return 'Chrome';
            }
            //Opera
            else if(explorer.indexOf("Opera") >= 0){
                return 'Opera';
            }
            //Safari
            else if(explorer.indexOf("Safari") >= 0){
                return 'Safari';
            }
        }
        function method1(tableid) {//整个表格拷贝到EXCEL中
            if(getExplorer()=='ie')
            {
                var curTbl = document.getElementById(tableid);
                var oXL = new ActiveXObject("Excel.Application");
                 
                //创建AX对象excel
                var oWB = oXL.Workbooks.Add();
                //获取workbook对象
                var xlsheet = oWB.Worksheets(1);
                //激活当前sheet
                var sel = document.body.createTextRange();
                sel.moveToElementText(curTbl);
                //把表格中的内容移到TextRange中
                sel.select();
                //全选TextRange中内容
                sel.execCommand("Copy");
                //复制TextRange中内容 
                xlsheet.Paste();
                //粘贴到活动的EXCEL中      
                oXL.Visible = true;
                //设置excel可见属性
 
                try {
                    var fname = oXL.Application.GetSaveAsFilename("Excel.xls", "Excel Spreadsheets (*.xls), *.xls");
                } catch (e) {
                    print("Nested catch caught " + e);
                } finally {
                    oWB.SaveAs(fname);
 
                    oWB.Close(savechanges = false);
                    //xls.visible = false;
                    oXL.Quit();
                    oXL = null;
                    //结束excel进程，退出完成
                    //window.setInterval("Cleanup();",1);
                    idTmr = window.setInterval("Cleanup();", 1);
 
                }
            }
            else
            {
                tableToExcel(tableid)
            }
        }
        function Cleanup() {
            window.clearInterval(idTmr);
            CollectGarbage();
        }
        var tableToExcel = (function() {
              var uri = 'data:application/vnd.ms-excel;base64,',
              template = '<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40"><meta http-equiv="Content-Type" charset=utf-8"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--></head><body><table>{table}</table></body></html>',
                base64 = function(s) { return window.btoa(unescape(encodeURIComponent(s))) },
                format = function(s, c) {
                    return s.replace(/{(\w+)}/g,
                    function(m, p) { return c[p]; }) }
                return function(table, name) {
                if (!table.nodeType) table = document.getElementById(table)
                var ctx = {worksheet: name || 'Worksheet', table: table.innerHTML}
                window.location.href = uri + base64(format(template, ctx))
              }
            })()
</script>
 
<title>houseinfortab</title>
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

<div style="margin:20px 0;"></div> 
	    	<table cellpadding="5">
	    		<tr>
                   <th>title</th>
                   <th>housetype</th>
                   <th>address</th>
                   <th>housearea</th>
                   <th>price</th>
                   <th>unitprice</th>
                   <th>connectname</th>
                </tr>
                <c:forEach var="row" items="${list}">
                <tr>
                   <td><c:out value="${row.title}"/></td>
                   <td><c:out value="${row.housetype}"/></td>
                   <td><c:out value="${row.address}"/></td>
                   <td><c:out value="${row.housearea}"/></td>
                   <td><c:out value="${row.price}"/></td>
                   <td><c:out value="${row.unitprice}"/></td>
                   <td><c:out value="${row.connectname}"/></td>
               </tr>
               </c:forEach>
	    	</table>
	    	<br data-filtered="filtered">
<input id="Button1" type="button" value="导出EXCEL"
        onclick="javascript:method1('test')" style="padding:5px;margin-top:20px;"/>
</body>

</body>
</html>