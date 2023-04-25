/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author admiin
 */
public class InformationCustomer {

    private int id;
    private Float number_water;
    private Float thanhtien;

    public InformationCustomer() {
    }

    public InformationCustomer(int id) {
        this.id = id;
//        this.number_water = number_water;
//        this.thanhtien = thanhtien;       
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Float getNumber_water() {
        return number_water;
    }

    public void setNumber_water(Float number_water) {
        this.number_water = number_water;
    }

    public Float getThanhtien() {
        return thanhtien;
    }

    public void setThanhtien(Float thanhtien) {
        this.thanhtien = thanhtien;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof InformationCustomer) {
            if (((InformationCustomer) obj).getId() == this.id && isEqual(((InformationCustomer) obj).getNumber_water(),this.number_water,0.0001f) && isEqual(((InformationCustomer) obj).getThanhtien(),this.thanhtien,0.0001f) ) {
                return true;
            }
        }
        return false;

    }

    

    @Override

    public int hashCode() {
        return super.hashCode(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    public static boolean isEqual(float a, float b, float epsilon) {
        return Math.abs(a - b) < epsilon;
    }

}
