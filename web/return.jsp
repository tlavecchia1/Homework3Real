<%--
Copyright: 2016 Jenny Faig & Tyler LaVecchia
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />

<form method="post">
  <h1>Future Value Calculator</h1>

  <label class="returnAmount">Investment Amount:</label>
  <span class="returnAmountNum">
    ${calculation.principal}
  </span><br>
  <label class="returnRate">Yearly Interest Rate:</label>
  <span class="returnRateNum">
    ${calculation.rate}
  </span><br>
  <label class="returnYears">Number of Years:</label>
  <span class="returnYearsNum">
    ${calculation.years}
  </span><br>
  <label class="futureVal">Future Value:</label>
  <span class="futureValNum">
    ${calculation.futurevalue}
  </span>
  <p></p>
  <a href="form.jsp">
      return calculator</a>
</form>
  
<c:import url="/includes/footer.html" />
