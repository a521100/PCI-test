<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
  <%
      String path=request.getContextPath();
   %>
       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta charset="utf-8">
        <link rel="icon" href="https://static.jianshukeji.com/highcharts/images/favicon.ico">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://img.hcharts.cn/jquery/jquery-1.8.3.min.js"></script>
        <script src="https://img.hcharts.cn/highcharts/highcharts.js"></script>
        <script src="https://img.hcharts.cn/highcharts/modules/exporting.js"></script>

        <script src="https://img.hcharts.cn/highcharts/modules/data.js"></script>
        <script src="https://img.hcharts.cn/highcharts-plugins/highcharts-zh_CN.js"></script>
    </head>
    <body>
    <div >
    <img src="../image/2.png" height:"100%"; width:"100%"; />

    </div>
        <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
        <p>数据表格</p>
        <table id="datatable">
            <thead>
                <tr>
                    <th></th>
                    <th>原因</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>邻区参数配置/容量参数/License问题</th>
                    <td>13</td>
                </tr>
                <tr>
                    <th>其他原因</th>
                    <td>12</td>
                </tr>
                <tr>
                    <th>疑似PCI冲突</th>
                    <td>1</td>
                </tr>
                <tr>
                    <th>总数</th>
                    <td>26</td>
                </tr>
            </tbody>
        </table>
        <script>
         $(function () {
    $('#container').highcharts({
        data: {
            table: 'datatable'
        },
        chart: {
            type: 'column'
        },
        title: {
            text: '各类原因统计图'
        },
        yAxis: {
            allowDecimals: false,
            title: {
                text: '',
                rotation: 0
            }
        },
        tooltip: {
            formatter: function () {
                return '<b>' + this.series.name + '</b><br/>' +
                    this.point.y + ' 条' + this.point.name.toLowerCase();
            }
        }
    });
});  
        </script>
    </body>
</html>