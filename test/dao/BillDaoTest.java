/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package dao;

import java.util.ArrayList;
import model.Bill;
import model.InformationCustomer;
import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.notNullValue;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author admiin
 */
public class BillDaoTest {
    
    public BillDaoTest() {
    }
    
    


//    @Test
//    public void testGetBillById() {
//        System.out.println("getBillById");
//        int cid = 1;
//        BillDao instance = new BillDao();
//        ArrayList<Bill> expResult = new ArrayList<>();
//        Bill b1= new Bill();
//        b1.setPay_date("3/1/2023");
//        b1.setPrice(30000F);
//        b1.setStatus("đã thanh toán");
//        b1.setNumber_water(5F);
//        expResult.add(b1);
//        ArrayList<Bill> result = instance.getBillById(cid);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        
//    }


        @Test
        public void testGetInformationById() {
            System.out.println("getInformationById");
            int idTest = 1;
            BillDao instance = new BillDao();
            InformationCustomer expResult = new InformationCustomer();
            expResult.setId(idTest);
            expResult.setThanhtien(11000.0f);
            expResult.setNumber_water(9.0f);
            InformationCustomer result = instance.getInformationById(idTest);
            
  
          
                assertEquals(expResult, result);

//             
//        }


    
}
 }
