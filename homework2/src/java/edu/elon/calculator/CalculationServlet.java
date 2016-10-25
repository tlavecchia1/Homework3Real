/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.elon.calculator;

import edu.elon.business.Calculation;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jenny Faig & Tyler LaVecchia
 */
@WebServlet(name = "CalculationServlet", urlPatterns = {"/CalculationServlet"})
public class CalculationServlet extends HttpServlet {

@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

    String url = "/index.html";
    
    String action = request.getParameter("action");
    if (action == null) {
        action = "join";
    }
    
    if (action.equals("join")) {
        url = "/index.html";
    }
    else if (action.equals("add")) {
        String principal = request.getParameter("principal");
        String rate = request.getParameter("rate");
        String years = request.getParameter("years");
        
        Calculation calculation = new Calculation(principal, rate, years);
        
        String message;
        if (principal == null || rate == null || years == null || principal.isEmpty() || rate.isEmpty() || years.isEmpty()) {
            message = "Please fill out all three text boxes.";
            url = "/index.html";
        }
        else {
            message = "";
            url = "solved.html";
        }
        request.setAttribute("calculation", calculation);
        request.setAttribute("message", message);
    }
    getServletContext().getRequestDispatcher(url).forward(request, response);
}

@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    doPost(request, response);
}
}
