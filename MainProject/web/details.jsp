<%-- 
    Document   : details
    Created on : Sep 1, 2021, 4:42:08 PM
    Author     : MAHESHKUMAR R
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <jsp:include page="header.jsp"></jsp:include>
    <jsp:include page="Template.jsp"></jsp:include>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>details</title>
    </head>
    <body>
    <center>
        <form action="OrderPlaced.jsp" method="post">
        <table style="color: black; border: 3px solid; width: 300px; height: 160px; background-color: seashell" ><tr><td>

   <input type="radio" name="bt" value="cash" checked="checked" />Cash On Delivery<br>
   <input type="radio" name="bt" value="online" disabled="disabled" /> Online payment<br/><br/>
                </td></tr>
            
    <c:set var="chair" value="${sessionScope.selChair}"/>
    <c:set var="NumberOfchairs" value="${numchairs}"/>
           <c:choose>
        <c:when test="${chair=='Royal'}">
                    <c:set var="Price" value="1400"/>
                </c:when>
         <c:when test="${chair=='Office'}">
                    <c:set var="Price" value="1200"/>
                </c:when>
         <c:when test="${chair=='Red'}">
                    <c:set var="Price" value="3000"/>
                </c:when>
         <c:when test="${chair=='Classic'}">
                    <c:set var="Price" value="3400"/>
                </c:when>
         <c:when test="${chair=='Modern'}">
                    <c:set var="Price" value="5400"/>
                </c:when>
    </c:choose>
        <tr><td bordercolor='white'>Chair : <td colspan="2"><c:out value="${chair}"/> </td><br>
        <br>
        <tr><td bordercolor='Black'>Number Of Chairs :  <td colspan="2"><c:out value="${NumberOfchairs}"/></td> <br>
    
        <tr><td bordercolor='Black'>Total Price:  <td colspan="2"><b><fmt:formatNumber pattern="₹##,##,###.##" value="${Price*NumberOfchairs}"/></b></td><br><br/>
        <tr>
            <td><input type="submit" value="Submit" /></td></tr>
        </table>
        </form> 
    </center>
         <h3>Please Read the Terms And Conditions Before Submit</h3>
        <a href="Terms.jsp"><h3 style="color: blue">*Terms And Conditions</h3></a>
   </body>
   <jsp:include page="footer.jsp"></jsp:include>
</html>