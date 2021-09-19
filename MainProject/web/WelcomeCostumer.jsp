<%-- 
    Document   : WelcomeCostumer
    Created on : Aug 31, 2021, 12:32:06 PM
    Author     : MAHESHKUMAR R
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="header.jsp"></jsp:include>
    <jsp:include page="Template.jsp"></jsp:include>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MK Shopping</title>
        <style>
            .nav{
                list-style-type: none;
                text-align: left;
                margin: 0;
                padding: 0;
            }
            .nav li{
                display: inline-block;
                padding: 20px;
            }
        </style>
    </head>
    <body>
        <div align="center">
            <table style="background-color: seashell"><tr><td>
        <ul class="nav">
            <li><a href="Chairs.jsp"><img src="Images/chair/Main.jpeg" width="100" height="100" alt="img 1"><br/><h4 style="color: darkorange">Chairs</h4></h4></a><br/></li>
        
            <li><a href="Beds.jsp"><img src="Images/bed/Main.jpeg" width="100" height="100" alt="img 2"><br/><h4 style="color: darkorange">Beds</h4></a><br/></li>
        
            <li><a href="Cupboards.jsp"><img src="Images/cupboard/Main.jpeg" width="100" height="100" alt="img 3"><br/><h4 style="color: darkorange">Cupboards</h4></a><br/></li>
        
        <%--         <li><a href="Fridge.jsp"><img src="Images/fridge/Main.jpeg" width="100" height="100" alt="img 4"><br/><h4 style="color: darkorange">Fridge</h4></a><br/></li> --%>
        </ul>
                    </td></tr></table>
    </div>
        </body>
        <br><br><br><br><br><br>
        <jsp:include page="footer.jsp"></jsp:include>
</html>
