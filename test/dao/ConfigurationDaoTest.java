/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

/**
 *
 * @author doduc
 */
import java.util.ArrayList;
import model.ProgressiveLevel;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author doduc
 */
public class ConfigurationDaoTest {
    /**
     * Test of getProgressiveLevelById method, of class ConfigurationDao.
     */
    @Test
    public void testGetProgressiveLevelById() {
        System.out.println("getProgressiveLevelById");
        int id = 5;
        ConfigurationDao instance = new ConfigurationDao();
        ProgressiveLevel expResult = new ProgressiveLevel(5, 0, 1, 23233, "kd");
        ProgressiveLevel result = instance.getProgressiveLevelById(id);
        assertEquals(result.getPrice(), 23233);
    }
    
    @Test
    public void testUpdateProgressiveLevelById() {
        System.out.println("updateProgressiveLevelById");
        int id = 6;
        int level = 0;
        int quantity=1;
        int price = 23000;
        String type = "sx";
        ConfigurationDao instance = new ConfigurationDao();
        instance.updateProgressiveLevel(id, level, quantity, price, type);
        ProgressiveLevel expResult = instance.getProgressiveLevelById(id);
        assertEquals(expResult.getPrice(), price);
    }
}