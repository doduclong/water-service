<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gửi thông báo</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <c:import url="/head.jsp" />
        <br>
        <div class="container">
            <h3 class="text-center">Thông báo cho khách hàng</h3>
            <hr>
            
            
            <table class="container text-center">
                    <tr>
                        <td >Họ tên khách hàng</td>
                        <td>
                            <input value="<c:out value="" />" type="text" name="" > 
                        </td>
                        <th>
                            <div class="container text-center">

                                <a href="<%=request.getContextPath()%>/search.jsp" class="btn btn-success">Tìm kiếm</a>
                            </div>
                        </th>
                    </tr>
            </table>
                            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Họ và tên</th>
                        <th>Email</th>
                        <th>Số điện thoại</th>
                        <th>Địa chỉ</th>
                        
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
                            
                        </tr>
                        
                    </c:forEach>
                    <!-- } -->
                </tbody>

            </table>
            
            <table class="container text-center">
                <thead>
                    <tr>
                        <th>
                            <div class="container text-left">

                                <a href="<%=request.getContextPath()%>/noti1.jsp" class="btn btn-success">Thông báo tiền nước</a>
                            </div>
                        </th>
                        
                        <th>
                            <div class="container text-right">

                                <a href="<%=request.getContextPath()%>/noti2.jsp" class="btn btn-success">Thông báo tạm ngưng cấp nước</a>
                            </div>
                        </th>
                        
                    </tr>
                    
                </thead>
                
            </table>
                            <br><!-- comment -->                
            <table class="container text-center">
                <thead>
                    <tr>
                        <th>
                            <div class="container text-left">

                                <a href="<%=request.getContextPath()%>/noti3.jsp" class="btn btn-success">Thông báo thay đổi giá nước</a>
                            </div>
                        </th>
                        <th>
                            <div class="container text-right">

                                <a href="<%=request.getContextPath()%>/noti4.jsp" class="btn btn-success">Thông báo nhắc nhở</a>
                            </div>
                        </th>
                        
                    </tr>
                </thead>
                
            </table>
                            <br>
        </div>
    </body>
</html>
