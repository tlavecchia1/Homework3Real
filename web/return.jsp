<%--
Copyright: 2016 Jenny Faig & Tyler LaVecchia
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />

<form method="post">
  <h1>Future Value Calculator</h1>
  <jsp:useBean id="calculation" scope="request" class="edu.elon.business.Calculation" />
  <label class="returnAmount">Investment Amount:</label>
  <span class="returnAmountNum"><jsp:getProperty name="calculation" property="principal"/></span><br>
  <label class="returnRate">Yearly Interest Rate:</label>
  <span class="returnRateNum"><jsp:getProperty name="calculation" property="rate"/></span><br>
  <label class="returnYears">Number of Years:</label>
  <span class="returnYearsNum"><jsp:getProperty name="calculation" property="years"/></span><br>
  <label class="futureVal">Future Value:</label>
  <span class="futureValNum"><jsp:getProperty name="calculation" property="futureValue"/></span>
  <p></p>
</form>
  
<c:import url="/includes/footer.html" />
