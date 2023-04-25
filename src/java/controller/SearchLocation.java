/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.CustomerDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.WaterStat;

/**
 *
 * @author admiin
 */
@WebServlet(name = "SearchLocation", urlPatterns = {"/SearchLocation"})
public class SearchLocation extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        long accountId = 0;
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("id")) {
                    accountId = Long.parseLong(cookie.getValue());
                    break;
                }
            }
        }
        
        request.setCharacterEncoding("UTF-8");
        String searchLocation = request.getParameter("searchLocation");
        System.out.println("searchLocation"+ searchLocation);
        
        dao.StatisticalDao statisticalDao = new dao.StatisticalDao();
        
        ArrayList<WaterStat> waterStats = statisticalDao.getStatByLocation(searchLocation);
        request.setAttribute("waterStats", waterStats);
      
        request.getRequestDispatcher("statistical.jsp").forward(request, response);
    }   
}
