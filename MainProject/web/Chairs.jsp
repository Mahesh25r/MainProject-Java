<%-- 
    Document   : Chairs
    Created on : Sep 1, 2021, 10:32:04 AM
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

        <table style="border: none; border-spacing: 50px; background-color: darkorange; opacity: 0.7"><tr>
                    
            <td><img src='Images/chair/1.jpeg' name="chair" value="Royal" width='100' height='100'/>
                <details><c:set var="Royal" value="1400"/>Price : <c:out value="${Royal}"/><br>
                         <c:set var="Royal" value="Royal"/>Name : <c:out value="${Royal}"/></details><br/></td>
                
            <td><img src='Images/chair/2.jpeg' name="chair" value="Office" width='100' height='100' />
                <details><c:set var="Office" value="1200"/>Price : <c:out value="${Office}"/><br>
                         <c:set var="Office" value="Office"/>Name : <c:out value="${Office}"/></details><br/></td>
            
            <td><img src='Images/chair/3.jpeg' name="chair" value="Red" width='100' height='100'/>
                <details><c:set var="Red" value="3000"/>Price : <c:out value="${Red}"/><br>
                         <c:set var="Red" value="Red"/>Name : <c:out value="${Red}"/></details><br/></td>
             
            <td><img src='Images/chair/4.jpeg' name="chair" value="Classic" width='100' height='100'/>
                <details><c:set var="Classic" value="3400"/>Price : <c:out value="${Classic}"/><br>
                         <c:set var="Classic" value="Classic"/>Name : <c:out value="${Classic}"/></details><br/></td>
              
            <td><img src='Images/chair/5.jpeg' name="chair" value="Modern" width='100' height='100'/>
                <details><c:set var="Modern" value="5400"/>Price : <c:out value="${Modern}"/><br>
                         <c:set var="Modern" value="Modern"/>Name : <c:out value="${Modern}"/></details><br/></td>
            

            </tr></table></form>
               
                 <br><br><br><br><br>
                
                <form action='<c:url value="/SessionServlet"/>' name='MyForm' method='POST'>

                    <table style="border: solid seashell; border-spacing: 15px; opacity: 1; background-color: seashell"> <tr>
<td bordercolor='white'><font color='darkorange'> Select Item From Above : </font></td>
<td bordercolor='white'> 
    
        <select name='chair'>
        <option value='Royal'>Royal</option> 
        <option value='Office'>Office</option> 
        <option value='Red'>Red</option> 
        <option value='Classic'>Classic</option> 
        <option value='Modern'>Modern</option> 
        </select>
    
    <tr>
        <td bordercolor='white'><font color='darkorange'> Number of Chairs : </font> </td>
<td bordercolor='white'>
    <input type= 'text' name='numOfchairs' required="" autofocus=""></td> </tr> <tr><td allign="center">

      
            <font color='darkorange'>Delivery Address : </font><br><textarea name="Delivery Address" rows="3" cols="20" required=""></textarea><br/><br/>
            
     <input type='hidden' value='ychair' name='PageName'/> </td> </tr> <tr>
<td bordercolor='white'>
    
<input type='submit' Value='Next'></input></td>
                </tr></table></form>
    </center>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>
