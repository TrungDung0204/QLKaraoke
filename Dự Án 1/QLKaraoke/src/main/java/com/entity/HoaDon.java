/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.entity;

import java.util.Date;

/**
 *
 * @author trung dung
 */
public class HoaDon {
    private String MaHĐ;
    private Date NgayLap;
    
    public HoaDon (){}

    public String getMaHĐ() {
        return MaHĐ;
    }

    public void setMaHĐ(String MaHĐ) {
        this.MaHĐ = MaHĐ;
    }

    public Date getNgayLap() {
        return NgayLap;
    }

    public void setNgayLap(Date NgayLap) {
        this.NgayLap = NgayLap;
    }
    
    
}
