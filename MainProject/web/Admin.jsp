<%-- 
    Document   : AdminPage
    Created on : Aug 30, 2021, 3:42:02 PM
    Author     : MAHESHKUMAR R
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="header1.jsp"></jsp:include>
    <jsp:include page="Template.jsp"></jsp:include>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <center>
        
        <form action="AdminLogin.jsp" method="POST">
            <table style="border: solid peru; border-spacing: 15px; opacity: 1; background-color: gold">
                <tr><td>
                        <h3 style="color: blue">Admin Login</h3><br>

                        <div align="right">
            <input type="text" name="user" id="userid" value="" autofocus="" required="" placeholder="Admin Name"/><br/><br/>
            <input type="password" name="pass" value="" required="" placeholder="Password"/><br/><br/></div>
                        <div align="center">
                            <input type="submit" value="Submit" style="background-color: #3399ff; color: white; border-radius: 4px"/></div><br><br>
                    </td></tr></table>
        </form><br/>
    </center>
</body>
</html>
