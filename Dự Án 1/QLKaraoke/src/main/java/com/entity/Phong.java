/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.entity;

import java.sql.Time;

/**
 *
 * @author trung dung
 */
public class Phong {
    private String MaPhong;
    private Time GioBatDau;
    private Time GioKetThuc;
    private boolean TrangThai;
    private String MaNV;
    
    public Phong(){}
    
    @Override
    public String toString(){
        return this.MaPhong;
    }

    public String getMaPhong() {
        return MaPhong;
    }

    public void setMaPhong(String MaPhong) {
        this.MaPhong = MaPhong;
    }

    public Time getGioBatDau() {
        return GioBatDau;
    }

    public void setGioBatDau(Time GioBatDau) {
        this.GioBatDau = GioBatDau;
    }

    public Time getGioKetThuc() {
        return GioKetThuc;
    }

    public void setGioKetThuc(Time GioKetThuc) {
        this.GioKetThuc = GioKetThuc;
    }

    public boolean isTrangThai() {
        return TrangThai;
    }

    public void setTrangThai(boolean TrangThai) {
        this.TrangThai = TrangThai;
    }

    public String getMaNV() {
        return MaNV;
    }

    public void setMaNV(String MaNV) {
        this.MaNV = MaNV;
    }

    
    
    
}
