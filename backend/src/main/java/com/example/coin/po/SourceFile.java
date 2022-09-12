package com.example.coin.po;

public class SourceFile {
    private int id;
    private String fileName;
    private String fileType;
    private double zoom;
    private double pointX;
    private double pointY;
    private double zoom2;
    private double pointX2;
    private double pointY2;

    public SourceFile() {
    }

    public SourceFile(String fileName, String type) {
        this.fileName = fileName;
        this.fileType = type;
        this.zoom=1;
        this.pointX=0;
        this.pointY=0;
        this.zoom2=1;
        this.pointX2=0;
        this.pointY2=0;
    }

    public int getId() {
        return id;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType;
    }

    public String getFileType() {
        return fileType;
    }

    public void setZoom(double zoom) {
        this.zoom = zoom;
    }

    public double getZoom() {
        return zoom;
    }

    public void setPointX(double pointX) {
        this.pointX = pointX;
    }

    public double getPointX() {
        return pointX;
    }

    public void setPointY(double pointY) {
        this.pointY = pointY;
    }

    public double getPointY() {
        return pointY;
    }

    public void setZoom2(double zoom2) {
        this.zoom2 = zoom2;
    }

    public double getZoom2() {
        return zoom2;
    }

    public void setPointX2(double pointX2) {
        this.pointX2 = pointX2;
    }

    public double getPointX2() {
        return pointX2;
    }

    public void setPointY2(double pointY2) {
        this.pointY2 = pointY2;
    }

    public double getPointY2() {
        return pointY2;
    }

}
