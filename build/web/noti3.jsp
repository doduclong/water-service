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
            <h3 class="text-center">Thông báo thay đổi tiền nước</h3>
            <hr>
            <br>
                <form action="update" method="post">
                <table>
                    
                    <tr>
                        <td>Thời gian điều chỉnh giá nước (hh:mm - dd/mm/yyyy) </td>
                        <td>
                            <input value="<c:out value="" />" type="text" name="" pattern="\d{2}:\d{2} - \d{2}/\d{2}/\d{4}" required>
                        </td>
                    </tr>
                    <tr>
                        <td>Giá nước mới</td>
                        <td>
                            <input value="<c:out value="" />" type="number"  name="level" required>
                        </td>
                    </tr>
                    <tr>
                        <td>Lý do điều chỉnh giá nước</td>
                        <td>
                            <input value="<c:out value="" />" type="text" name="" style="width: 300px; height: 100px;" required>
                        </td>
                    </tr>
                    <tr>
                        <td>Loại tiêu thụ nước</td>
                        <td><select name="select2" size="3" multiple="multiple" tabindex="1" required>
                          <option value="11">Sản xuất</option>
                          <option value="12">Kinh doanh</option>
                          <option value="13">Sinh hoạt</option>
                        </select>
                        </td>
                        
                    </tr>
                    
                    <tr>
                        <td></td>
                    </tr>
                    <tr class="text-center">
                        <td></td>
                        <td><button type="submit">Gửi email</button></td>
                    </tr>
                </table>
                
            </form>
     
        </div>
    </body>
</html>






