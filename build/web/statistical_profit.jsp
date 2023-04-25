<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thống kê</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
        <style>
            .right {
               text-align: right;
            }
            .center{
               text-align: center; 
            }
        </style>
    </head>
    <body>
        <c:import url="/head.jsp" />
        <br>
        <div class="container">
            <h3 class="text-center">Thống kê doanh thu</h3>
            <hr>
            <div class="container text-left">

                <div class="container text-left">
                    <form action="SearchLocationProfit" method="post" class="form-inline">
                        <div class="form-group mr-2">
                            <label for="searchLocationProfit">Tên thành phố:</label>
                            <input type="text" class="form-control" id="searchCountry" name="searchLocationProfit" value="${country}">
                        </div>
                        <button type="submit" class="btn btn-primary">Tìm kiếm</button>
                    </form>
                </div>
            </div>
            <br>
            <table class="table table-bordered">
                <thead class="center">
                    <tr>
                        <th>Thành phố</th>
                        <th>Doanh thu(vnđ)</th>
                        <th>Ngày bắt đầu</th>
                        <th>Ngày kết thúc</th>
                    </tr>
                </thead>
                <tbody>
                    <!--   for (Todo todo: todos) {  -->
                    <c:forEach var="profitStat" items="${profitStats}">

                        <tr>
                            <td>
                                <c:out value="${profitStat.location}" />
                            </td>
                            <td class = "right">
                                <fmt:formatNumber type = "number" maxFractionDigits = "3" value="${profitStat.amount}" />
                            </td>
                            <td>
                                <c:out value="${profitStat.start}" />
                            </td>
                            <td>
                                <c:out value="${profitStat.end}" />
                            </td>
                        </tr>
                    </c:forEach>
                    <!-- } -->
                </tbody>

            </table>
        </div>
        
        

    </body>
</html>
