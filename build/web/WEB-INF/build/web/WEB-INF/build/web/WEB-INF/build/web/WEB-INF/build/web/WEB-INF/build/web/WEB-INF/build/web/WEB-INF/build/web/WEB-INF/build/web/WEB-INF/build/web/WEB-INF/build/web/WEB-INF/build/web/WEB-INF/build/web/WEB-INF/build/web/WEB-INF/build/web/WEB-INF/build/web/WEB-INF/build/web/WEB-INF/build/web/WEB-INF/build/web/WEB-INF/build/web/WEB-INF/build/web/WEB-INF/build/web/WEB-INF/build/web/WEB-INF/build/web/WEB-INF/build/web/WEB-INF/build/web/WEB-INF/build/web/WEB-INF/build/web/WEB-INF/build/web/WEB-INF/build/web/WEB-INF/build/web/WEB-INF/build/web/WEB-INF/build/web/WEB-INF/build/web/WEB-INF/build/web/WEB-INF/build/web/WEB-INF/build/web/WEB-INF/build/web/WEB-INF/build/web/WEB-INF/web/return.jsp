
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />
<form method="post">
    <h1>Future Value Calculator</h1>
    <jsp:useBean id="calculation" scope="request" class="edu.elon.business.Calculation" />
    <label>Investment Amount:</label>
    <span><jsp:getProperty name="calculation" property="principal"/></span><br>
    <label>Yearly Interest Rate:</label>
    <span><jsp:getProperty name="calculation" property="rate"/></span><br>
    <label>Number of Years:</label>
    <span><jsp:getProperty name="calculation" property="years"/></span><br>
    <label>Future Value:</label>
    <span><jsp:getProperty name="calculation" property="futureValue"/></span>
    <br>
</form>
<c:import url="/includes/footer.html" />
