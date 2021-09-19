<%-- 
    Document   : Cupboards
    Created on : Sep 1, 2021, 10:40:06 AM
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
        <title>JSP Page</title>
    </head>
   
    <body>
    <center>
            <form action='<c:url value="/SessionServlet"/>' name="myform" method="post">

        <table style="border: none; border-spacing: 50px; background-color: darkorange; opacity: 0.7"><tr>
                    
            <td><img src='Images/cupboard/1.jpeg' name="cupboard" value="AD100" width='100' height='100'/>
                <details><c:set var="AD100" value="5400"/>Price : <c:out value="${AD100}"/><br>
                         <c:set var="AD100" value="AD100"/>Name : <c:out value="${AD100}"/></details><br/></td>
                
            <td><img src='Images/cupboard/2.jpeg' name="cupboard" value="GE12" width='100' height='100' />
                <details><c:set var="GE12" value="6200"/>Price : <c:out value="${GE12}"/><br>
                         <c:set var="GE12" value="GE12"/>Name : <c:out value="${GE12}"/></details><br/></td>
            
            <td><img src='Images/cupboard/3.jpeg' name="cupboard" value="SS333" width='100' height='100'/>
                <details><c:set var="SS333" value="8000"/>Price : <c:out value="${SS333}"/><br>
                         <c:set var="SS333" value="SS333"/>Name : <c:out value="${SS333}"/></details><br/></td>
             
            <td><img src='Images/cupboard/4.jpeg' name="cupboard" value="DS40" width='100' height='100'/>
                <details><c:set var="DS40" value="7400"/>Price : <c:out value="${DS40}"/><br>
                         <c:set var="DS40" value="DS40"/>Name : <c:out value="${DS40}"/></details><br/></td>
              
            <td><img src='Images/cupboard/5.jpeg' name="cupboard" value="KI70" width='100' height='100'/>
                <details><c:set var="KI70" value="6400"/>Price : <c:out value="${KI70}"/><br>
                         <c:set var="KI70" value="KI70"/>Name : <c:out value="${KI70}"/></details><br/></td>
            
            <td><img src='Images/cupboard/6.jpeg' name="cupboard" value="PL225" width='100' height='100'/>
                <details><c:set var="PL225" value="5400"/>Price : <c:out value="${PL225}"/><br>
                         <c:set var="PL225" value="PL225"/>Name : <c:out value="${PL225}"/></details><br/></td>
            
            <td><img src='Images/cupboard/7.jpeg' name="cupboard" value="CL500" width='100' height='100'/>
                <details><c:set var="CL500" value="9400"/>Price : <c:out value="${CL500}"/><br>
                         <c:set var="CL500" value="CL500"/>Name : <c:out value="${CL500}"/></details><br/></td>
            
            <td><img src='Images/cupboard/8.jpeg' name="cupboard" value="LK98" width='100' height='100'/>
                <details><c:set var="LK98" value="7400"/>Price : <c:out value="${LK98}"/><br>
                         <c:set var="LK98" value="LK98"/>Name : <c:out value="${LK98}"/></details><br/></td>
            
            </tr></table></form>
               
                 <br><br><br><br><br>
                
                <form action='<c:url value="/SessionServlet"/>' name='MyForm' method='POST'>

                    <table style="border: solid seashell; border-spacing: 15px; opacity: 1; background-color: seashell"> <tr>
<td bordercolor='white'><font color='darkorange'> Select Item From Above : </font></td>
<td bordercolor='white'> 
    
        <select name='cupboard'>
        <option value='AD100'>AD100</option> 
        <option value='GE12'>GE12</option> 
        <option value='SS333'>SS333</option> 
        <option value='DS40'>DS40</option> 
        <option value='KI70'>KI70</option> 
        <option value='PL225'>PL225</option> 
        <option value='CL500'>CL500</option> 
        <option value='LK98'>LK98</option> 
        </select>
    
    <tr>
        <td bordercolor='white'><font color='darkorange'> Number of Cupboards: </font> </td>
<td bordercolor='white'>
    <input type= 'text' name='numOfcupboard' required="" autofocus=""></td> </tr> <tr><td allign="center">

      
            <font color='darkorange'>Delivery Address : </font><br><textarea name="Delivery Address" rows="3" cols="20" required=""></textarea><br/><br/>
            
     <input type='hidden' value='ycupboard' name='PageName'/> </td> </tr> <tr>
<td bordercolor='white'>
    
<input type='submit' Value='Next'></input></td>
                </tr></table></form>
     </center>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>
