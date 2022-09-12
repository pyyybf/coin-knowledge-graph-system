package com.example.coin.blImpl.question;

import java.util.ArrayList;


public class QGItem {
    public enum QGItemType{
        column,attr,question,other
    }

    private int ID;

    private QGItemType type;

    private String value;

    private ArrayList<QGItem> children;

    public QGItem(int ID, QGItemType type, String value) {
        this.ID = ID;
        this.type = type;
        this.value = value;
        children=new ArrayList<>();
    }

    public void printMyself(){
        System.out.print("id:"+ID+" ,value:"+value+" ,type:");
        if(type== QGItemType.column){
            System.out.println("列名");
        }
        else if(type== QGItemType.attr){
            System.out.println("列值");
        }
        else if(type== QGItemType.question){
            System.out.println("疑问词");
        }
        else{
            System.out.println("其他");
        }

    }

    public int getID() {
        return ID;
    }

    public QGItemType getType() {
        return type;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public ArrayList<QGItem> getChildren() {
        return children;
    }

    public void addChild(QGItem item){
        this.children.add(item);
    }

}
