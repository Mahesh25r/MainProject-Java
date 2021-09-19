<%-- 
    Document   : bed
    Created on : Sep 1, 2021, 10:38:34 AM
    Author     : MAHESHKUMAR R
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
        <jsp:include page="header.jsp"></jsp:include>
    <jsp:include page="Template.jsp"></jsp:include>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MK Shopping</title>
    </head>
    <body>
        <center>
        
            <form action='<c:url value="/SessionServlet"/>' name="myform" method="post">

        <table style="border: none; border-spacing: 50px; background-color: whitesmoke; opacity: 0.8"><tr>
                    
            <td><img src='Images/bed/1.jpeg' name="bed" value="Cotton" width='100' height='100'/>
                <details><c:set var="Cotton" value="11000"/>Price : <c:out value="${Cotton}"/><br>
                         <c:set var="Cotton" value="Cotton"/>Name : <c:out value="${Cotton}"/></details><br/></td>
                
            <td><img src='Images/bed/2.jpeg' name="bed" value="Coffee" width='100' height='100' />
                <details><c:set var="Coffee" value="12000"/>Price : <c:out value="${Coffee}"/><br>
                         <c:set var="Coffee" value="Coffee"/>Name : <c:out value="${Coffee}"/></details><br/></td>
            
            <td><img src='Images/bed/3.jpeg' name="bed" value="Trundle" width='100' height='100'/>
                <details><c:set var="Trundle" value="13000"/>Price : <c:out value="${Trundle}"/><br>
                         <c:set var="Trundle" value="Trundle"/>Name : <c:out value="${Trundle}"/></details><br/></td>
             
            <td><img src='Images/bed/4.jpeg' name="bed" value="RedTrundle" width='100' height='100'/>
                <details><c:set var="RedTrundle" value="17000"/>Price : <c:out value="${RedTrundle}"/><br>
                         <c:set var="RedTrundle" value="Red Trundle"/>Name : <c:out value="${RedTrundle}"/></details><br/></td>
              
            <td><img src='Images/bed/5.jpeg' name="bed" value="Headboard" width='100' height='100'/>
                <details><c:set var="Headboard" value="9000"/>Price : <c:out value="${Headboard}"/><br>
                         <c:set var="Headboard" value="Headboard"/>Name : <c:out value="${Headboard}"/></details><br/></td>

            <td><img src='Images/bed/6.jpeg' name="bed" value="waterbed" width='100' height='100'/>
                <details><c:set var="Waterbed" value="7000"/>Price : <c:out value="${Waterbed}"/><br>
                         <c:set var="waterbed" value="water bed"/>Name : <c:out value="${waterbed}"/></details><br/></td>
            
            </tr></table></form>
               
                 <br><br><br><br><br>
                
                <form action='<c:url value="/SessionServlet"/>' name='MyForm' method='POST'>

                    <table style="border: solid seashell; border-spacing: 15px; opacity: 1; background-color: seashell"> <tr>
<td bordercolor='white'><font color='darkblue'> Select Item From Above : </font></td>
<td bordercolor='white'> 
    
        <select name='bed'>
        <option value='Cotton'>Cotton</option> 
        <option value='Coffee'>Coffee</option> 
        <option value='Trundle'>Trundle</option> 
        <option value='RedTrundle'>Red Trundle</option> 
         <option value='Headboard'>Headboard</option> 
        <option value='waterbed'>water bed</option> 
        </select>
    
    <tr>
<td bordercolor='white'>Number of bed </td>
<td bordercolor='white'>
    <input type= 'text' name='numOfBed' required="" autofocus=""></td> </tr> <tr><td allign="center">

      
            Delivery Address : <br><textarea name="Delivery Address" rows="3" cols="20" required=""></textarea><br/><br/>
            
     <input type='hidden' value='ybed' name='PageName'/> </td> </tr> <tr>
<td bordercolor='white'>
    
<input type='submit' Value='Next'></input></td>
                </tr></table></form>
    </center>
    </body>
        <jsp:include page="footer.jsp"></jsp:include>
</html>
