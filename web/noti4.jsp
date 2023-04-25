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
            <h3 class="text-center">Thông báo nhắc nhở</h3>
            <hr>
            <br>
                <form action="update" method="post">
                <table>
                    <tr>
                        <td>Lời nhắc nhở</td>
                        <td>
                            <input value="<c:out value="" />" type="text" name="" style="width: 300px; height: 100px;" required> 
                        </td>
                    </tr>
                    
                    
                    <tr>
                        <td></td>
                    </tr>
                    <tr class="text-center">
                        <td></td>
                        <td><button type="submit" name="sendEmailButton">Gửi email</button></td>
                    </tr>
                </table>
                
            </form>
     
        </div>
    </body>
    
</html>






