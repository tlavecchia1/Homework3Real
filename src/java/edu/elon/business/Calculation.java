/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.elon.business;

/**
 *
 * @author jfaig & tlavecchia
 */

import java.io.Serializable;
import java.text.NumberFormat;

public class Calculation implements Serializable{
    private double principal;
    private double rate;
    private int years;
    
    public Calculation() {
        principal = 0;
        rate = 0;
        years = 0;
    }
    
    public Calculation(Double principal, Double rate, Integer years) {
        this.principal = principal;
        this.rate = rate;
        this.years = years;
    }
    
    public String getPrincipal() {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        return currency.format(principal);
    }
    
    public void setPrincipal(Double principal) {
        this.principal = principal;
    }
    
    public Double getRate() {
        return rate;
    }
    
    public void setRate(Double rate) {
        this.rate = rate;
    }
    
    public Integer getYears() {
        return years;
    }
    
    public void setYears(Integer years) {
        this.years = years;
    }
    
    public String getFutureValue() {
        Double newRate = rate/100;
        double futureValue = principal*Math.pow((1+newRate),years);
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        return currency.format(futureValue);
    }
}
