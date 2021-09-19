<%-- 
    Document   : Registration
    Created on : Sep 1, 2021, 11:33:32 AM
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
         
         <form action="registrationdao" method="post">
             <table style="border: solid seashell; border-spacing: 18px; width: 17%; opacity: 1; background-color: seashell">
                 <tr><td>
                          <h3 style="color: blue">Customer Registration</h3><br>
                          <div style="color: blue">
            User Name:<br><input type="text" name="username" value="" required="" autofocus=""/><br><br/>
            
            E-Mail:<br/><input type="text" name="email" value="" required="" /><br/><br/>
            
            Password:<br><input type="password" name="npass" value="" required=""/><br><br>
              
            Retype Password:<br><input type="password" name="rpass" value="" required=""/><br><br>
              
            Address:<br><textarea name="Address" rows="2" cols="20" required="">
                </textarea><br><br>
              
             State:<br><input type="text" name="State" value="" required=""/><br><br>
             
            Phone:<br><input type="text" name="phone" value="" /><br><br>
                          </div>
            <input type="submit" value="Submit" style="background-color: #3399ff; color: white; border-radius: 4px" />&nbsp;&nbsp;
            <input type="reset" value="Reset" style="background-color: #3399ff; color: white; border-radius: 4px"/>
                         </td></tr>
             </table>
        </form>
        <br>
        <button style="color: gray"><a href="LoginPage.jsp" style="color: blueviolet">Go Back To Login Page</a></button>
        </center>
    <br><br>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>
