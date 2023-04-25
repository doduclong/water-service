<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thông tin khách hàng</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <c:import url="/head.jsp" />
        <br>
        <div class="container">
            <h3 class="text-center">Thông tin hiện tại</h3>
            
            <p><strong>Số lương nước:</strong> ${number_water} m&#179;</p>
            
            <p><strong>Thành tiền:</strong> ${price} VNĐ</p>
            
            <h3 class="text-center">Danh sách hóa đơn</h3>
            <hr>
            <div class="container text-left">

   
            </div>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Ngày thanh toán </th>
                        <th>Số lượng nước(m3)</th>
                        <th>Thành tiền(VNÐ)</th>
                        <th>Trạng thái</th>
                    </tr>
                </thead>
                <tbody>
                    <!--   for (Todo todo: todos) {  -->
                    <c:forEach var="bill" items="${listBills}">

                        <tr>
                            <td>
                                <c:out value="${bill.pay_date}" />
                            </td>
                            <td>
                                <c:out value="${bill.number_water}" />
                            </td>
                            <td>
                                <c:out value="${bill.price}" />
                            </td>
                            <td>
                                <c:out value="${bill.status}" />
                            </td>
                            
                        </tr>
                    </c:forEach>
                    <!-- } -->
                </tbody>

            </table>
        </div>
    </body>
</html>
