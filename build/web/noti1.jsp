<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gửi thông báo</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script>
            function showSuccessMessage() {
                var successDiv = document.getElementById("successDiv");
                successDiv.style.display = "block";
            }
        </script>
    </head>
    <body>
        <c:import url="/head.jsp" />
        <br>
        <div class="container">
            <h3 class="text-center">Thông báo tiền nước</h3>
            <hr>
            <br>
                <form action="update" method="post">
                <table>
                    <tr>
                        <td>Nhập tháng</td>
                        <td>
                            <input value="<c:out value="" />" type="number" name="" min="1" max="12" required>
 
                        </td>
                    </tr>
                    <tr>
                        <td>Nhập thời hạn</td>
                        <td>
                            <input value="<c:out value="" />" type="text" name="" required>
                        </td>
                    </tr>
                    
                    <tr>
                        <td></td>
                    </tr>
                    <tr class="text-center">
                        <td></td>
                        <div id="success-message" style="display:none;">Gửi email thành công</div>
                        <td><button type="submit" name="sendEmailButton" onclick="showSuccessMessage()">Gửi email</button></td>
                       
                    </tr>
                </table>
                
            </form>
     
        </div>
    </body>
    
</html>






