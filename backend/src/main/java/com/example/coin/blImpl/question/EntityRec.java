package com.example.coin.blImpl.question;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;

public class EntityRec {

    public enum Column{
        //列名
        Column
    }

    public enum Attr{
        //列值
        //品牌，色系，产地，类型，妆效,价格,商品Id,色号
        Brand,ColorScheme,OriginPlace,Type,Effect,price,sqlId,Shade
    }

    public enum Question{
        //问题
        //"哪些":返回整个商品,"什么/多少/如何/怎样”:返回属性值，“介绍”:返回商品信息
        Commodity,Attr

    }

    private static HashMap<String,Long> string2Entity = new HashMap<String, Long>();
    public static HashMap<String, Column> column_word = new HashMap<>();
    public static HashMap<String, Attr> attr_word = new HashMap<>();
    public static HashMap<String, Question> question_word = new HashMap<>();


    static {
        column_word.put("品牌", Column.Column);
        column_word.put("色系", Column.Column);
        column_word.put("产地", Column.Column);
        column_word.put("类型", Column.Column);
        column_word.put("妆效", Column.Column);
        column_word.put("价格", Column.Column);
        column_word.put("色号", Column.Column);

        attr_word.put("colorkey", Attr.Brand);
        attr_word.put("MAC", Attr.Brand);
        attr_word.put("NARS", Attr.Brand);
        attr_word.put("YSL", Attr.Brand);
        attr_word.put("兰蔻", Attr.Brand);
        attr_word.put("卡姿兰", Attr.Brand);
        attr_word.put("娇兰", Attr.Brand);
        attr_word.put("完美日记", Attr.Brand);
        attr_word.put("植村秀", Attr.Brand);
        attr_word.put("欧莱雅", Attr.Brand);
        attr_word.put("纪梵希", Attr.Brand);
        attr_word.put("美宝莲", Attr.Brand);
        attr_word.put("花西子", Attr.Brand);
        attr_word.put("雅诗兰黛", Attr.Brand);
        attr_word.put("露华浓", Attr.Brand);
        attr_word.put("哑光/雾面", Attr.Effect);
        attr_word.put("润泽/镜面", Attr.Effect);
        attr_word.put("丝绒", Attr.Effect);
        attr_word.put("闪光/珠光", Attr.Effect);
        attr_word.put("自然/裸妆", Attr.Effect);
        attr_word.put("中国", Attr.OriginPlace);
        attr_word.put("日本", Attr.OriginPlace);
        attr_word.put("韩国", Attr.OriginPlace);
        attr_word.put("美国", Attr.OriginPlace);
        attr_word.put("意大利", Attr.OriginPlace);
        attr_word.put("加拿大", Attr.OriginPlace);
        attr_word.put("比利时", Attr.OriginPlace);
        attr_word.put("法国", Attr.OriginPlace);
        attr_word.put("欧美", Attr.OriginPlace);
        attr_word.put("唇膏", Attr.Type);
        attr_word.put("口红", Attr.Type);
        attr_word.put("唇釉", Attr.Type);
        attr_word.put("唇霜", Attr.Type);
        attr_word.put("唇笔", Attr.Type);
        attr_word.put("染唇液", Attr.Type);
        attr_word.put("砖红", Attr.ColorScheme);
        attr_word.put("豆沙", Attr.ColorScheme);
        attr_word.put("正红", Attr.ColorScheme);
        attr_word.put("橘红", Attr.ColorScheme);
        attr_word.put("番茄", Attr.ColorScheme);
        attr_word.put("珊瑚红", Attr.ColorScheme);
        attr_word.put("珊瑚橘", Attr.ColorScheme);
        attr_word.put("梅子", Attr.ColorScheme);
        attr_word.put("血浆", Attr.ColorScheme);
        attr_word.put("红棕", Attr.ColorScheme);
        attr_word.put("铁锈", Attr.ColorScheme);
        attr_word.put("西柚", Attr.ColorScheme);
        attr_word.put("草莓", Attr.ColorScheme);
        attr_word.put("复古", Attr.ColorScheme);

        question_word.put("哪些", Question.Commodity);
        question_word.put("什么", Question.Attr);
        question_word.put("多少", Question.Attr);
        question_word.put("如何", Question.Attr);
        question_word.put("怎样", Question.Attr);
        question_word.put("介绍", Question.Attr);


        try {
            FileReader fr = new FileReader("src/main/resources/data/dictionary/custom/sqlIdList.txt");
            BufferedReader bf = new BufferedReader(fr);
            String str;
            // 按行读取字符串
            while ((str = bf.readLine()) != null) {
                str=str.replace("\n","");
                attr_word.put(str, Attr.sqlId);
            }
            bf.close();
            fr.close();
        } catch (IOException e) {
            e.printStackTrace();
        }


    }
    public static HashMap<String, Column> getColumn_word() {
        return column_word;
    }

    public static HashMap<String,Attr> getAttr_word(){
        return attr_word;
    }

    public static HashMap<String, Question> getQuestion_word() {
        return question_word;
    }
}
