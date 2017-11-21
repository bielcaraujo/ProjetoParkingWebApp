package com.domain.web;

import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class VehicleStay {
    private int id;
    private String VehicleModel;
    private String VehicleColor;
    private String VehiclePlate;
    private Date beginStay;

    public VehicleStay(int id, String VehicleModel, String VehicleColor, String VehiclePlate, Date beginStay) {
        this.id = id;
        this.VehicleModel = VehicleModel;
        this.VehicleColor = VehicleColor;
        this.VehiclePlate = VehiclePlate;
        this.beginStay = beginStay;
    }
    
    public static void addVehicleStay(String model, String color, String plate)
        throws SQLException{
    String SQL = "INSERT INTO vehicles_stays VALUES("
            + "default"     //id
            + ", ?"         //vehicle_model
            + ", ?"         //vehicle_color
            + ", ?"         //vehicle_plate
            + ", ?"         //begin_stay
            + ", NULL"      //end_stay
            + ", NULL"      //price
            + ")";
        PreparedStatement s = Database.getConnection().prepareStatement(SQL);
        s.setString(1, model);
        s.setString(2, color);
        s.setString(3, plate);
        s.setDate(4, new java.sql.Date(new Date().getTime()));
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getVehicleModel() {
        return VehicleModel;
    }

    public void setVehicleModel(String VehicleModel) {
        this.VehicleModel = VehicleModel;
    }

    public String getVehicleColor() {
        return VehicleColor;
    }

    public void setVehicleColor(String VehicleColor) {
        this.VehicleColor = VehicleColor;
    }

    public String getVehiclePlate() {
        return VehiclePlate;
    }

    public void setVehiclePlate(String VehiclePlate) {
        this.VehiclePlate = VehiclePlate;
    }

    public Date getBeginStay() {
        return beginStay;
    }

    public void setBeginStay(Date beginStay) {
        this.beginStay = beginStay;
    }
    
}
