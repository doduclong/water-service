/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author admiin
 */
public class Bill {
    private int billId;
    private String pay_date;
    private Float number_water;
    private Float price;
    private String status;

    public Bill() {
    }

    public Bill(int billId, String pay_date, Float number_water, Float price, String status) {
        this.billId = billId;
        this.pay_date = pay_date;
        this.number_water = number_water;
        this.price = price;
        this.status = status;
    }



    public String getPay_date() {
        return pay_date;
    }

    public Float getNumber_water() {
        return number_water;
    }

    public Float getPrice() {
        return price;
    }

    public String getStatus() {
        return status;
    }

    public int getBillId() {
        return billId;
    }

    public void setBillId(int billId) {
        this.billId = billId;
    }

   

    public void setPay_date(String pay_date) {
        this.pay_date = pay_date;
    }

    public void setNumber_water(Float number_water) {
        this.number_water = number_water;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    

    

}
