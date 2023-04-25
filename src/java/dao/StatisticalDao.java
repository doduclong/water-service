/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import static dao.Dao.con;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.WaterStat;

/**
 *
 * @author doduc
 */
public class StatisticalDao extends Dao{
    public StatisticalDao() {
        super();
    }

    public  ArrayList<WaterStat> getStatByLocation(String location) {
        
        ArrayList<WaterStat> waterStats = new ArrayList<WaterStat>();
        
        String sql = "SELECT * FROM waterstat WHERE location = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, location);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                WaterStat result = new WaterStat();
                result.setLocation(rs.getString("location"));
                result.setAmount(rs.getString("amount"));
                result.setStart(rs.getString("start"));
                result.setEnd(rs.getString("end"));

                System.out.println("result"+ result);
                waterStats.add(result);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return waterStats;
    }

}