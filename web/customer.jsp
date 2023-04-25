<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dịch vụ nước</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <c:import url="/head.jsp" />
        <br>
        <div class="container">
            <h3 class="text-center">Danh sách khách hàng</h3>
            <hr>
            <div class="container text-left">

                <div class="container text-left">
                    <form action="SeacherCustomer" method="post" class="form-inline">
                        <div class="form-group mr-2">
                            <label for="searchName">Tên khách hàng:</label>
                            <input type="text" class="form-control" id="searchName" name="searchName" value="${name}">
                        </div>
                        </br>
                        <div class="form-group mr-2">
                            <label for="searchCountry">Tên thành phố:</label>
                            <input type="text" class="form-control" id="searchCountry" name="searchCountry" value="${country}">
                        </div>
                        <button type="submit" class="btn btn-primary">Tìm kiếm</button>
                    </form>
                </div>
            </div>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Họ và tên</th>
                        <th>Email</th>
                        <th>Số điện thoại</th>
                        <th>Địa chỉ</th>
                        <th>Thông tin</th>
                    </tr>
                </thead>
                <tbody>
                    <!--   for (Todo todo: todos) {  -->
                    <c:forEach var="customer" items="${listCustomers}">

                        <tr>
                            <td>
                                <c:out value="${customer.fullName}" />
                            </td>
                            <td>
                                <c:out value="${customer.email}" />
                            </td>
                            <td>
                                <c:out value="${customer.phoneNumber}" />
                            </td>
                            <td>
                                <c:out value="${customer.address}" />
                            </td>
                            <td><a href="DetailCustomer?cid=${customer.customerId}">Xem </td>
                        </tr>
                    </c:forEach>
                    <!-- } -->
                </tbody>

            </table>
        </div>
        
        

    </body>
</html>
