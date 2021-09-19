<%-- 
    Document   : header
    Created on : Sep 6, 2021, 1:01:08 PM
    Author     : MAHESHKUMAR R
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MK Shopping</title>
        
<style>
        .header{
            top: 0;
            width: 90%;
            text-align: left;
            font-size: 20px;
            background-color: black;
            color: white;
            padding: 1px;
            opacity: 0.8;
        }
    </style>
    </head>
    <body>
        <p>
        <img src="Images/logo.jpg" style="float: right; width: 150px; height: 150px;">
        <div class="header">
        <h1 style="color: whitesmoke; text-align: center">MK Shopping</h1>
        <a href="LoginPage.jsp"><input type="submit" value="LoginPage" style="color: blue"/></a>
        
        <a href="Chairs.jsp"><input type="submit" value="Chairs" style="color: blue"/></a>
        
        <a href="Beds.jsp"><input type="submit" value="Beds" style="color: blue"/></a>
        
        <a href="Cupboards.jsp"><input type="submit" value="Cupboards" style="color: blue"/></a>
        
        <a href="Fridge.jsp"><input type="submit" value="Fridge" style="color: blue"/></a>
        
        <a href="WelcomeCostumer.jsp"><input type="submit" value="Home Page" style="color: blue"/></a>
          <div align="right">
           <a href="Logout"><input type="submit" value="LogOut" style="color: blue"/></a>
        </div>
        </div>
 </p>
    </body>
    <br><br><br><br><br><br>
</html>