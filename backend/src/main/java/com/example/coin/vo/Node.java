package com.example.coin.vo;

public class Node {
    private int id;
    private String label;
    private String color;

    public Node(int id, String label, String color) {
        this.id = id;
        this.label = label;
        this.color = color;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }
}
