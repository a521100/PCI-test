<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
</body>

</body>
</html>