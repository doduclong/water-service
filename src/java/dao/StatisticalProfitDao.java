/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import static dao.Dao.con;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.ProfitStat;

/**
 *
 * @author doduc
 */
public class StatisticalProfitDao extends Dao{
    public StatisticalProfitDao() {
        super();
    }

    public  ArrayList<ProfitStat> getStatByLocation(String location) {
        
        ArrayList<ProfitStat> profitStats = new ArrayList<ProfitStat>();
        
        String sql = "SELECT * FROM profitstat WHERE location = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, location);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ProfitStat result = new ProfitStat();
                result.setLocation(rs.getString("location"));
                result.setAmount(rs.getString("amount"));
                result.setStart(rs.getString("start"));
                result.setEnd(rs.getString("end"));

                System.out.println("result"+ result);
                profitStats.add(result);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return profitStats;
    }

}