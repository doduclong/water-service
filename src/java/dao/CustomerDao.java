/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Customer;

/**
 *
 * @author doduc
 */
public class CustomerDao extends Dao{

    public CustomerDao() {
        super();
    }
    

//    public boolean create(Passbook passbook) {
//        String sql = "INSERT INTO passbook (accountId, periodId, startDate, endDate, finalSettlement, amount) VALUES (?, ?, ?, ?, ?, ?)";
//        String sqlPeriod = "SELECT CURRENT_DATE AS startDate, DATE_ADD(CURRENT_DATE, INTERVAL ? DAY) AS endDate";
//
//        try {
//            PreparedStatement ps = con.prepareStatement(sqlPeriod);
//            ps.setLong(1, passbook.getPeriod().getMonth() * 30);
//            ResultSet rs = ps.executeQuery();
//            if (rs.next()) {
//                Date startDate = rs.getDate("startDate");
//                Date endDate = rs.getDate("endDate");
//                ps = con.prepareStatement(sql);
//                ps.setLong(1, passbook.getAccount().getAccountId());
//                ps.setLong(2, passbook.getPeriod().getPeriodId());
//                ps.setDate(3, startDate);
//                ps.setDate(4, endDate);
//                ps.setString(5, passbook.getFinalSettlement());
//                ps.setLong(6, passbook.getAmount());
//                ps.executeUpdate();
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
//        return true;
//    }

    public ArrayList<Customer> getAllCustomer() {
        String sql = "SELECT * FROM customer";
        ArrayList<Customer> result = new ArrayList<>();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Customer customer = new Customer();
                customer.setCustomerId(rs.getLong("customerId"));
                customer.setFullName(rs.getString("fullName"));
                customer.setEmail(rs.getString("email"));
                customer.setAddress(rs.getString("address"));
                customer.setPhoneNumber(rs.getString("phoneNumber"));


                result.add(customer);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    
//    public ArrayList<Customer> getAllCustomer() {
//        String sql = "SELECT * FROM customer";
//        ArrayList<Customer> result = new ArrayList<>();
//        try {
//            PreparedStatement ps = con.prepareStatement(sql);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                Customer customer = new Customer();
//                customer.setCustomerId(rs.getLong("customerId"));
//                customer.setFullName(rs.getString("fullName"));
//                customer.setEmail(rs.getString("email"));
//                customer.setAddress(rs.getString("address"));
//                customer.setPhoneNumber(rs.getString("phoneNumber"));
//
//
//                result.add(customer);
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return result;
//    }
    
    public ArrayList<Customer> getCustomersByNameorCountry(String name,String country) {
        
        ArrayList<Customer> result = new ArrayList<>();
        
        if(country.equals("")){
            String sql = "SELECT * FROM customer WHERE fullName LIKE ?";
            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, "%" + name + "%");
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    Customer customer = new Customer();
                    customer.setCustomerId(rs.getLong("customerId"));
                    customer.setFullName(rs.getString("fullName"));
                    customer.setEmail(rs.getString("email"));
                    customer.setPhoneNumber(rs.getString("phoneNumber"));
                    customer.setAddress(rs.getString("address"));
                    result.add(customer);
            }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else if(name.equals("")){
            String sql = "SELECT * FROM customer WHERE address LIKE ?";
            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, "%" + country + "%");
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    Customer customer = new Customer();
                    customer.setCustomerId(rs.getLong("customerId"));
                    customer.setFullName(rs.getString("fullName"));
                    customer.setEmail(rs.getString("email"));
                    customer.setPhoneNumber(rs.getString("phoneNumber"));
                    customer.setAddress(rs.getString("address"));
                    result.add(customer);
            }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else{
            String sql = "SELECT * FROM customer WHERE fullName LIKE ? and address LIKE ?";
            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, "%" + name + "%");
                ps.setString(2, "%" + country + "%");
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    Customer customer = new Customer();
                    customer.setCustomerId(rs.getLong("customerId"));
                    customer.setFullName(rs.getString("fullName"));
                    customer.setEmail(rs.getString("email"));
                    customer.setPhoneNumber(rs.getString("phoneNumber"));
                    customer.setAddress(rs.getString("address"));
                    result.add(customer);
            }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return result;
    }

}
