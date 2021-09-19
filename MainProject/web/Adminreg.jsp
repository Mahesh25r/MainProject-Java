<%-- 
    Document   : Adminreg
    Created on : Sep 12, 2021, 6:32:23 AM
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
         <form action="Adminregdao" method="post">
             <table style="border: solid gold; border-spacing: 18px; width: 17%; opacity: 1; background-color: gold">
                 <tr><td>
                          <h3 style="color: blue">Admin Registration</h3><br>
                         
            Admin Name:<br><input type="text" name="username" value="" required="" autofocus=""/><br><br/>
            
            E-Mail:<br/><input type="text" name="email" value="" required="" /><br/><br/>
            
            Password:<br><input type="password" name="npass" value="" required=""/><br><br>
              
            Retype Password:<br><input type="password" name="rpass" value="" required=""/><br><br>
            
            Designation:<br><input type="text" name="desig" value="" /><br><br>
             
            Phone:<br><input type="text" name="phone" value="" /><br><br>

            <input type="submit" value="Submit" style="background-color: #3399ff; color: white; border-radius: 4px" />&nbsp;&nbsp;
            <input type="reset" value="Reset" style="background-color: #3399ff; color: white; border-radius: 4px"/>
                         </td></tr>
             </table>
        </form>
        <br>
        <button style="color: gray"><a href="Admin.jsp" style="color: blueviolet">Admin Page</a></button>
        </center>
    </body>
</html>
