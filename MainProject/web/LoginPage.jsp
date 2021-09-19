<%-- 
    Document   : LoginPage
    Created on : Aug 30, 2021, 3:41:31 PM
    Author     : MAHESHKUMAR R
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="header1.jsp"></jsp:include>
    <jsp:include page="Template.jsp"></jsp:include>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MK Shopping</title>
    </head>
    <body>
    <center>
        <form action="Logindao" method="POST">
            <table style="border: solid seashell; border-spacing: 15px; opacity: 1; background-color: seashell">
                <tr><td>
                        <h3 style="color: blue">Customer Login</h3><br>
                        <div align="right">
            <input type="text" name="user" id="userid" value="" onkeyup="validate()" autofocus="" required="" placeholder="UserName"/><br/><br/>
            <input type="password" name="pass" value="" required="" placeholder="Password"/><br/><br/></div>
                        <div align="center">
                            <input type="submit" value="Submit" style="background-color: #3399ff; color: white; border-radius: 4px"/>
                        </div><br><br>
                            <a href="Registration.jsp" style="color: red">Create Account</a><br/><br/>
                    </td></tr></table>
        </form><br/>
       </center>
</body>
    <%@include  file="footer.jsp"%>
</html>
