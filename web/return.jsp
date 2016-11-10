<%--
Copyright: 2016 Jenny Faig & Tyler LaVecchia
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="elon" uri="/web/currencyFormat.tld" %>
<c:import url="/includes/header.html" />

<form method="post">
  <h1>Future Value Calculator</h1>

  <label class="returnAmount">Investment Amount:</label>
  <span class="returnAmountNum">
    <elon:currencyFormat currency="${calculation.principal}"/>
  </span><br>
  <label class="returnRate">Yearly Interest Rate:</label>
  <span class="returnRateNum">
    ${calculation.rate}
  </span><br>
  <label class="returnYears">Number of Years:</label>
  <span class="returnYearsNum">
    ${calculation.years}
  </span><br>
  
  <ul style="list-style-type: none">
      <c:forEach items="${calculation.futureValue}" var="value" varStatus="status">
        <li>
            ${status.count} <elon:currencyFormat currency="${value}"/>
        </li>
      </c:forEach>
    </ul>
  </span>
  <p></p>
  <a href="form.jsp">
      return calculator</a>
</form>
  
<c:import url="/includes/footer.html" />
