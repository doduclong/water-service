<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bảng giá</title>
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
            <h3 class="text-center">Bảng giá nước</h3>
            <hr>
            <br>
            <h4 class="text-center">Giá nước sinh hoạt</h4>
            <table class="table table-bordered">
                <thead class = "center">
                    <tr>
                        <th>Bậc</th>
                        <th>Mức nước sử dụng</th>
                        <th>Giá(vnđ/m3)</th>
                    </tr>
                </thead>
                <tbody>
                    <!--   for (Todo todo: todos) {  -->
                    <c:forEach var="progressive" items="${listProgressive}">
                        <tr>
                            <td class = "right">
                                <c:out value="${progressive.level}" />
                            </td>
                            <c:choose>
                                <c:when test="${progressive.level == '1'}">
                                    <td>
                                        <c:out value="Dưới ${progressive.quantity}m3" />
                                    </td>
                                </c:when>
                                <c:when test="${progressive.level == '2'}">
                                    <td>
                                        <c:out value="Từ ${listProgressive[0].quantity}m3 đến ${listProgressive[0].quantity+listProgressive[1].quantity}m3" />
                                    </td>
                                </c:when>
                                <c:when test="${progressive.level == '3'}">
                                    <td>
                                        <c:out value="Từ ${listProgressive[0].quantity+listProgressive[1].quantity}m3 đến ${listProgressive[0].quantity+listProgressive[1].quantity+listProgressive[2].quantity}m3" />
                                    </td>
                                </c:when>
                                <c:when test="${progressive.level == '4'}">
                                    <td>
                                        <c:out value="Trên ${listProgressive[0].quantity+listProgressive[1].quantity+listProgressive[2].quantity}m3" />
                                    </td>
                                </c:when>
                            </c:choose>

                            <td class = "right" >
                                <fmt:formatNumber type = "number" maxFractionDigits = "3" value="${progressive.price}"/>
                            </td>
                            <td>
                                <a href="/WaterServiceApplication/update?id=<c:out value="${progressive.id }"/>">Cập nhật</a>
                            </td>
                        </tr>
                    </c:forEach>
                    <!-- } -->
                </tbody>
            </table>
            <h4 class="text-center">Giá nước kinh doanh</h4>
            <table class="table table-bordered">
                <thead class = "center">
                    <tr>
                        <th>Giá(vnđ/m3)</th>
                    </tr>
                </thead>
                <tbody>
                    <!--   for (Todo todo: todos) {  -->
                        <tr>
                            <td class = "right">
                                <fmt:formatNumber type = "number" maxFractionDigits = "3"  value="${progressiveKd.price}" />
                            </td>
                            <td>
                                <a href="/WaterServiceApplication/update?id=<c:out value="${progressiveKd.id }"/>">Cập nhật</a>
                            </td>
                        </tr>
                    <!-- } -->
                </tbody>
            </table>
            <h4 class="text-center">Giá nước sản xuất</h4>
            <table class="table table-bordered">
                <thead class = "center">
                    <tr>
                        <th>Giá(vnđ/m3)</th>
                    </tr>
                </thead>
                <tbody>
                    <!--   for (Todo todo: todos) {  -->
                        <tr>
                            <td class = "right">
                                <fmt:formatNumber type = "number" maxFractionDigits = "3"  value="${progressiveSx.price}" />
                            </td>
                            <td>
                                <a href="/WaterServiceApplication/update?id=<c:out value="${progressiveSx.id }"/>">Cập nhật</a>
                            </td>
                        </tr>
                    <!-- } -->
                </tbody>
            </table>
        </div>
    </body>
</html>
