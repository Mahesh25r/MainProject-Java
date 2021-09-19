<%-- 
    Document   : cupboarddetails
    Created on : Sep 10, 2021, 9:08:48 PM
    Author     : MAHESHKUMAR R
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <form action="OrderPlaced.jsp" method="post">
        <table style="color: black; border: 3px solid; width: 300px; height: 160px; background-color: seashell" ><tr><td>

   <input type="radio" name="bt" value="cash" checked="checked" />Cash On Delivery<br>
   <input type="radio" name="bt" value="online" disabled="disabled" /> Online payment<br/><br/>
                </td></tr>
            
    <c:set var="cupboard" value="${sessionScope.selcupboard}"/>
    <c:set var="NumberOfcupboard" value="${numcupboard}"/>
   
           <c:choose>
        <c:when test="${cupboard=='AD100'}">
                    <c:set var="Price" value="5400"/>
                </c:when>
         <c:when test="${cupboard=='GE12'}">
                    <c:set var="Price" value="6200"/>
                </c:when>
         <c:when test="${cupboard=='SS333'}">
                    <c:set var="Price" value="8000"/>
                </c:when>
         <c:when test="${cupboard=='DS40'}">
                    <c:set var="Price" value="7400"/>
                </c:when>
         <c:when test="${cupboard=='KI70'}">
                    <c:set var="Price" value="6400"/>
                </c:when>
        <c:when test="${cupboard=='PL225'}">
                    <c:set var="Price" value="5400"/>
                </c:when>
        <c:when test="${cupboard=='CL500'}">
                    <c:set var="Price" value="9400"/>
                </c:when>
        <c:when test="${cupboard=='LK98'}">
                    <c:set var="Price" value="7400"/>
                </c:when>
        
    </c:choose>
        <tr><td bordercolor='white'>cupboard : <td colspan="2"><c:out value="${cupboard}"/> </td><br>
        <br>
        <tr><td bordercolor='Black'>Number Of cupboard :  <td colspan="2"><c:out value="${NumberOfcupboard}"/></td> <br>
    
        <tr><td bordercolor='Black'>Total Price:  <td colspan="2"><b><fmt:formatNumber pattern="₹##,##,###.##" value="${Price*NumberOfcupboard}"/></b></td><br><br/>
        <tr>
            <td><input type="submit" value="Submit" /></td></tr>
        </table>
        </form>
    </center>
    </body>
      <jsp:include page="footer.jsp"></jsp:include>
</html>
