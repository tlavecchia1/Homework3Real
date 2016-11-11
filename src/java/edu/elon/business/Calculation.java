/**
 *
 * Copyright: 2016 Ryan Kugel & Tyler LaVecchia & Jenny Faig
 */

package edu.elon.business;

import java.io.Serializable;

public class Calculation implements Serializable{
    private double principal;
    private double rate;
    private int years;
    private double[] futureValues;
    
    public Calculation() {
        principal = 0;
        rate = 0;
        years = 0;
    }
    
    public Calculation(Double principal, Double rate, Integer years) {
        this.principal = principal;
        this.rate = rate;
        this.years = years;
        this.futureValues = new double[years];
    }
    
    public Double getPrincipal() {
        return principal;
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
    
    public double[] getFutureValue() {
        Double futureValue = 0.0;
        Double newRate = rate/100;
        for (int i = 1; i<years+1; i++){
            futureValue = principal*Math.pow((1+newRate),i);
            futureValues[i-1] = futureValue;
        }
        
        return futureValues;
        
    }
}
