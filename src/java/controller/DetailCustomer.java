/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.BillDao;
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
import model.Bill;
import model.Customer;
import model.InformationCustomer;

/**
 *
 * @author admiin
 */
@WebServlet(name = "DetailCustomer", urlPatterns = {"/DetailCustomer"})
public class DetailCustomer extends HttpServlet {
    
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
        int cid = Integer.parseInt(request.getParameter("cid"));
        BillDao billDao = new BillDao();
        InformationCustomer Info=new InformationCustomer();
        Info=billDao.getInformationById(cid);
        int billLong = (int) cid;
        ArrayList<Bill> bills = billDao.getBillById(billLong);
        request.setAttribute("listBills", bills);
        request.setAttribute("number_water", Info.getNumber_water());
        request.setAttribute("price", Info.getThanhtien());
        request.getRequestDispatcher("detailCustomer.jsp").forward(request, response);
    }

    
}
