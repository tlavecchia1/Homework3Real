<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Future Value Calculated</title>
        <link rel="stylesheet" href="styles/calculator.css">
    </head>
    <body>
        <label>Investment Amount:</label>
        <span>${calculation.principal}</span><br>
        <label>Yearly Interest Rate:</label>
        <span>${calculation.rate}</span><br>
        <label>Number of Years:</label>
        <span>${calculation.years}</span><br>
        <label>Future Value:</label>
        <span>${calculation.futureValue}</span>
    </body>
</html>
