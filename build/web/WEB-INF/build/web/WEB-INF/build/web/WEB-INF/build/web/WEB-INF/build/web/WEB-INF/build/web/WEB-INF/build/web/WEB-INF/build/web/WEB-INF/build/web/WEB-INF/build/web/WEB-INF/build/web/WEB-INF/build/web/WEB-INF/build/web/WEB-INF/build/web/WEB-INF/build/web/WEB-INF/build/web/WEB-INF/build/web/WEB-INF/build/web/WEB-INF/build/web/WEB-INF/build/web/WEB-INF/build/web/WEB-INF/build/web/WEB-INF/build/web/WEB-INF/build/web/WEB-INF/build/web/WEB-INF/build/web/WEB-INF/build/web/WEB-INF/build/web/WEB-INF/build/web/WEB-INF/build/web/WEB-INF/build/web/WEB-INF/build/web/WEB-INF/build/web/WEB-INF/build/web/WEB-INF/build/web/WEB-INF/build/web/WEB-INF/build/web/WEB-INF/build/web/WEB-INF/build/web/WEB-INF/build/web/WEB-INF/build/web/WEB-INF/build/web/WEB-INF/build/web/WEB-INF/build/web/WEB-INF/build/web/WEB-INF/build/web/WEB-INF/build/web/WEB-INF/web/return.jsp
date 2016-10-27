<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Future Value Calculated</title>
        <link rel="stylesheet" href="styles/calculator.css">
    </head>
    <body>
        <%@ page import="java.text.NumberFormat" %>
        <%
             NumberFormat currency = NumberFormat.getCurrencyInstance();
        %> 
        <jsp:useBean id="calculation" scope="request" class="edu.elon.business.Calculation" />
        <label>Investment Amount:</label>
        <span>currency.format(<jsp:getProperty name="calculation" property="principal"/>)</span><br>
        <label>Yearly Interest Rate:</label>
        <span><jsp:getProperty name="calculation" property="rate"/></span><br>
        <label>Number of Years:</label>
        <span><jsp:getProperty name="calculation" property="years"/></span><br>
        <label>Future Value:</label>
        <span><jsp:getProperty name="calculation" property="futureValue"/></span>
    </body>
</html>
