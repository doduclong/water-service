/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Bill;
import model.Customer;
import model.InformationCustomer;

/**
 *
 * @author admiin
 */
public class BillDao extends Dao{
 
    public BillDao() {
        super();
    }
    
    public ArrayList<Bill> getBillById(int cid) {
        String sql = "SELECT * FROM bill WHERE CustomerID = ?";
        ArrayList<Bill> result = new ArrayList<>();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,String.valueOf(cid));
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Customer customer = new Customer();
                Bill bill=new Bill();
                bill.setPay_date(rs.getString("paydate"));
                bill.setNumber_water(rs.getFloat("amount_water"));
                bill.setPrice(rs.getFloat("price"));
                bill.setStatus(rs.getString("status"));
                result.add(bill);
        }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    
    public InformationCustomer getInformationById(int cid) {
        String sql = "SELECT * FROM information_customer WHERE CustomerId = ?";
        InformationCustomer result = new InformationCustomer();
        try {       
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1,cid);
            ResultSet rs = ps.executeQuery();       
            if (rs.next()) {
                result.setId(rs.getInt("id"));
                result.setNumber_water(rs.getFloat("number_water"));
                result.setThanhtien(rs.getFloat("price"));   
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
