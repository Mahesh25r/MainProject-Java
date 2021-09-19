<%-- 
    Document   : Beddetails
    Created on : Sep 10, 2021, 8:06:44 PM
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
            
    <c:set var="bed" value="${sessionScope.selbed}"/>
    <c:set var="NumberOfBed" value="${numbed}"/>
   
           <c:choose>
        <c:when test="${bed=='Cotton'}">
                    <c:set var="Price" value="11000"/>
                </c:when>
         <c:when test="${bed=='Coffee'}">
                    <c:set var="Price" value="12000"/>
                </c:when>
         <c:when test="${bed=='Trundle'}">
                    <c:set var="Price" value="13000"/>
                </c:when>
         <c:when test="${bed=='RedTrundle'}">
                    <c:set var="Price" value="17000"/>
                </c:when>
         <c:when test="${bed=='Headboard'}">
                    <c:set var="Price" value="9000"/>
                </c:when>
         <c:when test="${bed=='waterbed'}">
                    <c:set var="Price" value="7000"/>
                </c:when>
    </c:choose>
        <tr><td bordercolor='white'>BED : <td colspan="2"><c:out value="${bed}"/> </td><br>
        <br>
        <tr><td bordercolor='Black'>Number Of Beds :  <td colspan="2"><c:out value="${NumberOfBed}"/></td> <br>
    
        <tr><td bordercolor='Black'>Total Price:  <td colspan="2"><b><fmt:formatNumber pattern="₹##,##,###.##" value="${Price*NumberOfBed}"/></b></td><br><br/>
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
