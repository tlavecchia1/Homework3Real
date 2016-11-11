/**
 *
 * Copyright: 2016 Ryan Kugel & Tyler LaVecchia
 */
package edu.elon.homework3;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import static javax.servlet.jsp.tagext.Tag.SKIP_BODY;
import javax.servlet.jsp.tagext.TagSupport;

/**
 *
 * @author tlavecchia, Ryan Kugel
 */
public class currencyFormat extends TagSupport {
  
  private String currency;
  
  public void setCurrency(String currency) {
    this.currency = currency;
  }
  
  @Override
  public int doStartTag() throws JspException {
      
    try {
      JspWriter out = pageContext.getOut();
    
      //Adds necessary commas to currency string and cuts it off at the hundreths place 
      currency = new DecimalFormat("#,###.00").format(Double.parseDouble(currency));
      
      //Adds '$' to beginning of currency string
      currency = "$" + currency;
      
      out.print(currency);
    } 
    catch (IOException ex) {
      Logger.getLogger(currencyFormat.class.getName()).log(Level.SEVERE, null, ex);
    }
      
   
    return SKIP_BODY;
  }
    
}

