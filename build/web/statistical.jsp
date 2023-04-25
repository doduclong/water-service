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
            <h3 class="text-center">Thống kê</h3>
            <hr>
            <div class="container text-left">

                <div class="container text-left">
                    <form action="SearchLocation" method="post" class="form-inline">
                        <div class="form-group mr-2">
                            <label for="searchLocation">Tên thành phố:</label>
                            <input type="text" class="form-control" id="searchCountry" name="searchLocation" value="${country}">
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
                        <th>Lượng nước sử dụng(m3)</th>
                        <th>Ngày bắt đầu</th>
                        <th>Ngày kết thúc</th>
                    </tr>
                </thead>
                <tbody>
                    <!--   for (Todo todo: todos) {  -->
                    <c:forEach var="waterStat" items="${waterStats}">

                        <tr>
                            <td>
                                <c:out value="${waterStat.location}" />
                            </td>
                            <td class = "right">
                                <fmt:formatNumber type = "number" maxFractionDigits = "3" value="${waterStat.amount}" />
                            </td>
                            <td>
                                <c:out value="${waterStat.start}" />
                            </td>
                            <td>
                                <c:out value="${waterStat.end}" />
                            </td>
                        </tr>
                    </c:forEach>
                    <!-- } -->
                </tbody>

            </table>
        </div>
        
        

    </body>
</html>
