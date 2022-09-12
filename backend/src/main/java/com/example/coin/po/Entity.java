package com.example.coin.po;

public class Entity {

    private int id;//注意：必须要有这个id,哪怕在业务逻辑中完全没用到，因为这里的属性必须要和数据库里表的属性完全一样
    private int userId;
    private int commodityId;
    private String entityName;//名称
    private String entityColor;
    private String entityShape;
    private int fontType;
    private int fontSize;
    private double x;
    private double y;
    private double x2;
    private double y2;
    private boolean visible;
    private boolean nameVisible;
    private int entitySize;

    public Entity() {
    }


}
