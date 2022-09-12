package com.example.coin.po;

public class Relation {

    private int id;//注意：必须要有这个id,哪怕在业务逻辑中完全没用到，因为这里的属性必须要和数据库里表的属性完全一样
    private String relationName;//名称
    private String e1;//实体1
    private String e2;//实体2
    private int fileId;
    private int lineType;
    private boolean visible;
    private boolean labelVisible;
    private String color;
    private String relationType;

    public Relation() {
    }

    public Relation(String name, int fileId, String e1, String e2, int lineType, String relationType) {
        this.relationName = name;
        this.fileId = fileId;
        this.e1 = e1;
        this.e2 = e2;
        this.lineType = lineType;
        this.visible = true;
        this.labelVisible = true;
        this.relationType = relationType;
    }

    public int getId() {
        return id;
    }

    public void setName(String name) {
        this.relationName = name;
    }

    public String getName() {
        return relationName;
    }

    public void setE1(String e1) {
        this.e1 = e1;
    }

    public String getE1() {
        return e1;
    }

    public void setE2(String e2) {
        this.e2 = e2;
    }

    public String getE2() {
        return e2;
    }

    public void setFileId(int fileId) {
        this.fileId = fileId;
    }

    public int getFileId() {
        return fileId;
    }

    public void setLineType(int lineType) {
        this.lineType = lineType;
    }

    public int getLineType() {
        return lineType;
    }

    public void setVisible(boolean visible) {
        this.visible = visible;
    }

    public boolean isVisible() {
        return visible;
    }

    public void setLabelVisible(boolean labelVisible) {
        this.labelVisible = labelVisible;
    }

    public boolean isLabelVisible() {
        return labelVisible;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getColor() {
        return color;
    }

    public void setRelationType(String relationType) {
        this.relationType = relationType;
    }

    public String getRelationType() {
        return relationType;
    }
}
