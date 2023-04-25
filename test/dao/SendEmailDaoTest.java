/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

/**
 *
 * @author Admin
 */

import java.util.ArrayList;
import model.ProfitStat;
import model.WaterStat;
import org.junit.Test;
import static org.junit.Assert.*;

public class SendEmailDaoTest {
    StatisticalProfitDao statProfit;

    public SendEmailDaoTest() {
        statProfit = new StatisticalProfitDao();
    }

    @Test
    public void testGetStatByLocation() {

        ArrayList<ProfitStat> result = new ArrayList<ProfitStat>();
        result = statProfit.getStatByLocation("ha noi");

        ArrayList<ProfitStat> expStat = new ArrayList<ProfitStat>();

        ProfitStat profitStat = new ProfitStat("ha noi", "540699590", "01/03/2023", "01/04/2023");
        expStat.add(profitStat);

        assertEquals(expStat.get(0).getAmount(), result.get(0).getAmount());

    }

}
