package com.example.coin.blImpl.question;

import com.example.coin.po.Commodity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;


@Service
public class AnswerFinder {

    @Autowired
    JdbcTemplate jdbcTemplate;

    private ArrayList<QGItem> DFSResult;//之前深度优先遍历的结果

    private ArrayList<QGItem> brandList;//存所有和品牌有关的节点

    private ArrayList<QGItem> commodityTypeList;//存所有和商品类型有关的节点

    private ArrayList<QGItem> colorSchemeList;//存所有和色系有关的节点

    private ArrayList<QGItem> originPlaceList;//存所有和产地有关的节点

    private ArrayList<QGItem> effectList;//存所有和妆效有关的节点

    private ArrayList<QGItem> sqlIdList;//存所有和商品ID有关的节点

    private ArrayList<QGItem> priceList;//存所有和价格有关的节点

    private ArrayList<QGItem> shadeList;//存所有和色号有关的节点

    private ArrayList<QGItem> columnList;//存所有没有孩子的列名

    private String questionWord;

    private HashMap<String, EntityRec.Column> column_word;

    private HashMap<String, EntityRec.Attr> attr_word;

    HashMap<String, EntityRec.Question> question_word;

    public void setDFSResult(ArrayList<QGItem> DFSResult) {
        this.DFSResult = DFSResult;
        brandList = new ArrayList<>();
        commodityTypeList = new ArrayList<>();
        colorSchemeList = new ArrayList<>();
        originPlaceList = new ArrayList<>();
        effectList = new ArrayList<>();
        sqlIdList = new ArrayList<>();
        columnList = new ArrayList<>();
        priceList=new ArrayList<>();
        shadeList=new ArrayList<>();
        questionWord = DFSResult.get(0).getValue();
        column_word = EntityRec.getColumn_word();
        attr_word = EntityRec.getAttr_word();
        question_word = EntityRec.getQuestion_word();
    }

    public Object findAnswer() {
        questionWord = DFSResult.get(0).getValue();
        for (int i = DFSResult.size() - 1; i > 0; i--) {
            QGItem item = DFSResult.get(i);
            String value = item.getValue();
            System.out.println("下面处理节点"+value);
            if (attr_word.containsKey(value)||item.getType()== QGItem.QGItemType.attr) {
                //列值
                putItemIntoAttrLists(item);
            } else if (column_word.containsKey(value)) {
                //列名
                dealWithColumn(item);
            }
        }
        //下面开始处理疑问词
        //先把所有属性ArrayList弄好
        ArrayList<String> columnList1 = new ArrayList<>();
        ArrayList<String> brandList1 = new ArrayList<>();
        ArrayList<String> commodityTypeList1 = new ArrayList<>();
        ArrayList<String> colorSchemeList1 = new ArrayList<>();
        ArrayList<String> originPlaceList1 = new ArrayList<>();
        ArrayList<String> effectList1 = new ArrayList<>();
        ArrayList<String> sqlIdList1 = new ArrayList<>();
        ArrayList<String> priceList1 = new ArrayList<>();
        ArrayList<String> shadeList1 = new ArrayList<>();
        for(QGItem item:columnList){
            if(!columnList1.contains(item.getValue())){
                columnList1.add(item.getValue());
            }
        }
        for(QGItem item:brandList){
            if(!brandList1.contains(item.getValue())){
                brandList1.add(item.getValue());
            }
        }
        for(QGItem item:commodityTypeList){
            if(!commodityTypeList1.contains(item.getValue())){
                commodityTypeList1.add(item.getValue());
            }
        }
        for(QGItem item:colorSchemeList){
            if(!colorSchemeList1.contains(item.getValue())){
                colorSchemeList1.add(item.getValue());
            }
        }
        for(QGItem item:originPlaceList){
            if(!originPlaceList1.contains(item.getValue())){
                originPlaceList1.add(item.getValue());
            }
        }
        for(QGItem item:effectList){
            if(!effectList1.contains(item.getValue())){
                effectList1.add(item.getValue());
            }
        }
        for(QGItem item:sqlIdList){
            if(!sqlIdList1.contains(item.getValue())){
                sqlIdList1.add(item.getValue());
            }
        }
        for(QGItem item:priceList){
            if(!priceList1.contains(item.getValue())){
                priceList1.add(item.getValue());
            }
        }
        for(QGItem item:shadeList){
            if(!shadeList1.contains(item.getValue())){
                shadeList1.add(item.getValue());
            }
        }
        //下面根据疑问词处理最后的结果
        if(questionWord.equals("介绍")){
            ArrayList<String> empty=new ArrayList<>();
            List<Commodity> commodityList=this.selectCommodity(empty,empty,empty,empty,empty,sqlIdList1,empty,empty);
            if(commodityList.size()==0){
                return "没有你问的这个东西哦，确定没打错？";
            }
            String result="下面我来给你介绍一下";
            for(int i=0;i<sqlIdList1.size();i++){
                result=result+sqlIdList1.get(i);
                if(i<sqlIdList1.size()-1){
                    result=result+"、";
                }else{
                    result=result+"~~\n";
                }
            }
            for(Commodity commodity:commodityList){
                result=result+"商品"+commodity.getSqlId()+"是一支"+commodity.getCommodityType()+
                        "，它的品牌是"+commodity.getBrand()+
                        "，属于"+commodity.getName()+"系列"+
                        "，色号是"+commodity.getShade()+
                        "，色系是"+commodity.getColorScheme()+
                        "，产地是"+commodity.getOriginPlace()+
                        "，妆效是"+commodity.getEffect();
                String price=String.valueOf(commodity.getPrice());
                if(!price.contains(".")){
                    price=price+".00";
                }
                else{
                    if(price.substring(price.indexOf('.')+1).length()==1){
                        price=price+"0";
                    }
                }
                result=result+"，价格是"+price+"元";
                result=result+"，现在该商品已经有"+commodity.getCollectNum()+"次收藏，要不要去看看~\n";
            }
            return result;
        }
        if(questionWord.equals("什么") || questionWord.equals("多少")||questionWord.equals("如何")||questionWord.equals("怎样")){
            //返回的是所有值
            System.out.println("返回商品属性值");
            String result="";
            if(brandList1.size()>0){
                result=result+" 品牌";
                if(brandList1.size()==1){
                    result=result+"是";
                }
                else{
                    result=result+"有";
                }
                for(int i=0;i<brandList1.size();i++){
                    result=result+brandList1.get(i);
                    if(i<brandList1.size()-1){
                        result=result+"、";
                    }
                }
            }
            if(colorSchemeList1.size()>0){
                result=result+" 色系";
                if(colorSchemeList1.size()==1){
                    result=result+"是";
                }
                else{
                    result=result+"有";
                }
                for(int i=0;i<colorSchemeList1.size();i++){
                    result=result+colorSchemeList1.get(i);
                    if(i<colorSchemeList1.size()-1){
                        result=result+"、";
                    }
                }
            }
            if(originPlaceList1.size()>0){
                result=result+" 产地";
                if(originPlaceList1.size()==1){
                    result=result+"是";
                }
                else{
                    result=result+"有";
                }
                for(int i=0;i<originPlaceList1.size();i++){
                    result=result+originPlaceList1.get(i);
                    if(i<originPlaceList1.size()-1){
                        result=result+"、";
                    }
                }
            }
            if(effectList1.size()>0){
                result=result+" 妆效";
                if(effectList1.size()==1){
                    result=result+"是";
                }
                else{
                    result=result+"有";
                }
                for(int i=0;i<effectList1.size();i++){
                    result=result+effectList1.get(i);
                    if(i<effectList1.size()-1){
                        result=result+"、";
                    }
                }
            }
            if(priceList1.size()>0){
                result=result+" 价格";
                if(priceList1.size()==1){
                    result=result+"是";
                }
                else{
                    result=result+"有";
                }
                for(int i=0;i<priceList1.size();i++){
                    String price=priceList1.get(i);
                    if(!price.contains(".")){
                        price=price+".00";
                    }
                    else{
                        if(price.substring(price.indexOf('.')+1).length()==1){
                            price=price+"0";
                        }
                    }
                    result=result+price+"元";
                    if(i<priceList1.size()-1){
                        result=result+"、";
                    }
                }
            }
            if(commodityTypeList1.size()>0){
                result=result+" 类型";
                if(commodityTypeList1.size()==1){
                    result=result+"是";
                }
                else{
                    result=result+"有";
                }
                for(int i=0;i<commodityTypeList1.size();i++){
                    result=result+commodityTypeList1.get(i);
                    if(i<commodityTypeList1.size()-1){
                        result=result+"、";
                    }
                }
            }
            if(shadeList1.size()>0){
                result=result+" 色号";
                if(shadeList1.size()==1){
                    result=result+"是";
                }
                else{
                    result=result+"有";
                }
                for(int i=0;i<shadeList1.size();i++){
                    result=result+shadeList1.get(i);
                    if(i<shadeList1.size()-1){
                        result=result+"、";
                    }
                }
            }
            System.out.println("结果："+result);
           return result;
        }
        if(questionWord.equals("哪些")){
            //返回的是若干条商品
            System.out.println("返回若干个商品");
            List<Commodity> result=this.selectCommodity(brandList1,
                    commodityTypeList1,
                    colorSchemeList1,
                    originPlaceList1,
                    effectList1,
                    sqlIdList1,
                    priceList1,
                    shadeList1);
            System.out.println("结果：");
            if(result.size()==0){
                return "没有这样的商品哦~~";
            }
            for(Commodity commodity:result){
                commodity.printMyself();
            }
            return result;

        }
        return "我听不懂你在说什么哦~~~";
    }

    private void putItemIntoAttrLists(QGItem item) {
        EntityRec.Attr attr = attr_word.get(item.getValue());
        if (attr == EntityRec.Attr.Brand) {
            //该节点是品牌值节点
            brandList.add(item);
            return;
        }
        if (attr == EntityRec.Attr.ColorScheme) {
            //该节点是色系值节点
            colorSchemeList.add(item);
            return;
        }
        if (attr == EntityRec.Attr.OriginPlace) {
            //该节点是产地值节点
            originPlaceList.add(item);
            return;
        }
        if (attr == EntityRec.Attr.Type) {
            //该节点是类型值节点
            commodityTypeList.add(item);
            return;
        }
        if (attr == EntityRec.Attr.Effect) {
            //该节点是妆效值节点
            effectList.add(item);
            return;
        }
        if (attr == EntityRec.Attr.sqlId) {
            //该节点是商品ID值节点
            sqlIdList.add(item);
            return;
        }
        else{
            //该节点是价格节点
            String pattern="^\\d+(\\.\\d+)?";
            if(Pattern.matches(pattern, item.getValue())){
                //是价格
                priceList.add(item);
            }
            else {
                //是色号
                shadeList.add(item);
            }
        }
    }

    private void dealWithColumn(QGItem item) {
        String value = item.getValue();
        //品牌，色系，产地，类型，妆效，价格,色号
        ArrayList<QGItem> children = item.getChildren();//因为深度优先遍历算法，它的孩子肯定都放进了ArrayList
        if (children.size() == 0) {
            this.columnList.add(item);
            return;
        }
        //这种情况肯定是返回值
        ArrayList<String> columnList1 = new ArrayList<>();
        ArrayList<String> brandList1 = new ArrayList<>();
        ArrayList<String> commodityTypeList1 = new ArrayList<>();
        ArrayList<String> colorSchemeList1 = new ArrayList<>();
        ArrayList<String> originPlaceList1 = new ArrayList<>();
        ArrayList<String> effectList1 = new ArrayList<>();
        ArrayList<String> sqlIdList1 = new ArrayList<>();
        ArrayList<String> priceList1 = new ArrayList<>();
        ArrayList<String> shadeList1 = new ArrayList<>();
        columnList1.add(value);
        for (QGItem item1 : children) {
            if (columnList.contains(item1)) {
                columnList1.add(item1.getValue());
                System.out.println("有子节点"+item1.getValue());
                columnList.remove(item1);
            } else if (brandList.contains(item1)) {
                brandList1.add(item1.getValue());
                System.out.println("有子节点"+item1.getValue());
                brandList.remove(item1);
            } else if (commodityTypeList.contains(item1)) {
                commodityTypeList1.add(item1.getValue());
                System.out.println("有子节点"+item1.getValue());
                commodityTypeList.remove(item1);
            } else if (colorSchemeList.contains(item1)) {
                colorSchemeList1.add(item1.getValue());
                System.out.println("有子节点"+item1.getValue());
                colorSchemeList.remove(item1);
            } else if (originPlaceList.contains(item1)) {
                originPlaceList1.add(item1.getValue());
                System.out.println("有子节点"+item1.getValue());
                originPlaceList.remove(item1);
            } else if (effectList.contains(item1)) {
                effectList1.add(item1.getValue());
                System.out.println("有子节点"+item1.getValue());
                effectList.remove(item1);
            } else if (sqlIdList.contains(item1)) {
                sqlIdList1.add(item1.getValue());
                System.out.println("有子节点"+item1.getValue());
                sqlIdList.remove(item1);
            }else {
                String pattern="^\\d+(\\.\\d+)?";
                if(Pattern.matches(pattern, item1.getValue())){
                    //是价格
                    priceList1.add(item1.getValue());
                    priceList.remove(item1);
                }
                else{
                    //是色号
                    shadeList1.add(item1.getValue());
                    shadeList.remove(item1);
                }
            }

        }
        //下面开始执行SQL
        List<Map<String, Object>> sqlResult = this.selectSomeValue(columnList1,
                brandList1,
                commodityTypeList1,
                colorSchemeList1,
                originPlaceList1,
                effectList1,
                sqlIdList1,
                priceList1,
                shadeList1);
        System.out.println(sqlResult);
        //处理结果
        String resultValue = "";
        ArrayList<QGItem> exitQGItem = new ArrayList<>();
        for (Map<String, Object> s : sqlResult) {
            if (s.containsKey("brand")) {
                resultValue = (String) s.get("brand");
                QGItem newItem = new QGItem(item.getID(), QGItem.QGItemType.valueOf("attr"), resultValue);
                if (!exitQGItem.contains(newItem)) {
                    brandList.add(newItem);
                    exitQGItem.add(newItem);
                }

            }
            if (s.containsKey("colorScheme")) {
                resultValue = (String) s.get("colorScheme");
                QGItem newItem = new QGItem(item.getID(), QGItem.QGItemType.valueOf("attr"), resultValue);
                if (!exitQGItem.contains(newItem)) {
                    colorSchemeList.add(newItem);
                    exitQGItem.add(newItem);
                }
            }
            if (s.containsKey("originPlace")) {
                resultValue = (String) s.get("originPlace");
                QGItem newItem = new QGItem(item.getID(), QGItem.QGItemType.valueOf("attr"), resultValue);
                if (!exitQGItem.contains(newItem)) {
                    originPlaceList.add(newItem);
                    exitQGItem.add(newItem);
                }
            }
            if (s.containsKey("commodityType")) {
                resultValue = (String) s.get("commodityType");
                QGItem newItem = new QGItem(item.getID(), QGItem.QGItemType.valueOf("attr"), resultValue);
                if (!exitQGItem.contains(newItem)) {
                    commodityTypeList.add(newItem);
                    exitQGItem.add(newItem);
                }
            }
            if (s.containsKey("effect")) {
                resultValue = (String) s.get("effect");
                QGItem newItem = new QGItem(item.getID(), QGItem.QGItemType.valueOf("attr"), resultValue);
                if (!exitQGItem.contains(newItem)) {
                    effectList.add(newItem);
                    exitQGItem.add(newItem);
                }
            }
            if (s.containsKey("price")) {
                resultValue = String.valueOf(s.get("price"));
                QGItem newItem = new QGItem(item.getID(), QGItem.QGItemType.valueOf("attr"), resultValue);
                if (!exitQGItem.contains(newItem)) {
                    priceList.add(newItem);
                    exitQGItem.add(newItem);
                }
            }
            if (s.containsKey("shade")) {
                resultValue = String.valueOf(s.get("shade"));
                QGItem newItem = new QGItem(item.getID(), QGItem.QGItemType.valueOf("attr"), resultValue);
                if (!exitQGItem.contains(newItem)) {
                    shadeList.add(newItem);
                    exitQGItem.add(newItem);
                }
            }

        }

    }

    //连接jdbc的方法
    public List<Commodity> selectCommodity(ArrayList<String> brandList,
                                           ArrayList<String> commodityTypeList,
                                           ArrayList<String> colorSchemeList,
                                           ArrayList<String> originPlaceList,
                                           ArrayList<String> effectList,
                                           ArrayList<String> sqlIdList,
                                           ArrayList<String> priceList,
                                           ArrayList<String> shadeList){
        ArrayList<String> values=new ArrayList<>();
        if(brandList.size()>0){
            String brands="(";
            for(int i=0;i<brandList.size();i++){
                brands=brands+"brand='"+brandList.get(i)+"'";
                if(i<brandList.size()-1){
                    brands=brands+" or ";
                }
            }
            brands=brands+")";
            values.add(brands);
        }
        if(commodityTypeList.size()>0){
            String commodityTypes="(";
            for(int i=0;i<commodityTypeList.size();i++){
                commodityTypes=commodityTypes+"commodityType='"+commodityTypeList.get(i)+"'";
                if(i<commodityTypeList.size()-1){
                    commodityTypes=commodityTypes+" or ";
                }
            }
            commodityTypes=commodityTypes+")";
            values.add(commodityTypes);
        }
        if(colorSchemeList.size()>0){
            String colorSchemes="(";
            for(int i=0;i<colorSchemeList.size();i++){
                colorSchemes=colorSchemes+"colorScheme='"+colorSchemeList.get(i)+"'";
                if(i<colorSchemeList.size()-1){
                    colorSchemes=colorSchemes+" or ";
                }
            }
            colorSchemes=colorSchemes+")";
            values.add(colorSchemes);
        }
        if(shadeList.size()>0){
            String shades="(";
            for(int i=0;i<shadeList.size();i++){
                shades=shades+"shade='"+shadeList.get(i)+"'";
                if(i<shadeList.size()-1){
                    shades=shades+" or ";
                }
            }
            shades=shades+")";
            values.add(shades);
        }
        if(originPlaceList.size()>0){
            String originPlaces="(";
            for(int i=0;i<originPlaceList.size();i++){
                originPlaces=originPlaces+"originPlace='"+originPlaceList.get(i)+"'";
                if(i<originPlaceList.size()-1){
                    originPlaces=originPlaces+" or ";
                }
            }
            originPlaces=originPlaces+")";
            values.add(originPlaces);
        }
        if(effectList.size()>0){
            String effects="(";
            for(int i=0;i<effectList.size();i++){
                effects=effects+"effect='"+effectList.get(i)+"'";
                if(i<effectList.size()-1){
                    effects=effects+" or ";
                }
            }
            effects=effects+")";
            values.add(effects);
        }
        if(sqlIdList.size()>0){
            String sqlIds="(";
            for(int i=0;i<sqlIdList.size();i++){
                sqlIds=sqlIds+"sqlId='"+sqlIdList.get(i)+"'";
                if(i<sqlIdList.size()-1){
                    sqlIds=sqlIds+" or ";
                }
            }
            sqlIds=sqlIds+")";
            values.add(sqlIds);
        }
        if(priceList.size()>0&&priceList.get(0).length()>0){
            String prices="(";
            for(int i=0;i<priceList.size();i++){
                Double min=Double.parseDouble(priceList.get(i))-30;
                Double max=Double.parseDouble(priceList.get(i))+30;
                prices=prices+"(price>= "+String.valueOf(min)+" and price<= "+String.valueOf(max)+")";
                if(i<sqlIdList.size()-1){
                    prices=prices+" or ";
                }
            }
            prices=prices+")";
            values.add(prices);
        }
        //生成sql语句
        String sql="select *"+" from Commodity where ";
        for(int i=0;i<values.size();i++){
            sql=sql+values.get(i);
            if(i<values.size()-1){
                sql=sql+" and ";
            }
        }
        System.out.println("执行sql语句："+sql);
        return execSQLForCommoditys(sql);

    }

    public List<Map<String,Object>> selectSomeValue(ArrayList<String> columnList,
                                                    ArrayList<String> brandList,
                                                    ArrayList<String> commodityTypeList,
                                                    ArrayList<String> colorSchemeList,
                                                    ArrayList<String> originPlaceList,
                                                    ArrayList<String> effectList,
                                                    ArrayList<String> sqlIdList,
                                                    ArrayList<String> priceList,
                                                    ArrayList<String> shadeList){
        //返回某列值
        String column="";
        for (int i=0;i<columnList.size();i++){
            column=column+changeColumnName(columnList.get(i));
            if(i<columnList.size()-1){
                column=column+",";
            }
        }
        ArrayList<String> values=new ArrayList<>();
        if(brandList.size()>0){
            String brands="(";
            for(int i=0;i<brandList.size();i++){
                brands=brands+"brand='"+brandList.get(i)+"'";
                if(i<brandList.size()-1){
                    brands=brands+" or ";
                }
            }
            brands=brands+")";
            values.add(brands);
        }
        if(commodityTypeList.size()>0){
            String commodityTypes="(";
            for(int i=0;i<commodityTypeList.size();i++){
                commodityTypes=commodityTypes+"commodityType='"+commodityTypeList.get(i)+"'";
                if(i<commodityTypeList.size()-1){
                    commodityTypes=commodityTypes+" or ";
                }
            }
            commodityTypes=commodityTypes+")";
            values.add(commodityTypes);
        }
        if(colorSchemeList.size()>0){
            String colorSchemes="(";
            for(int i=0;i<colorSchemeList.size();i++){
                colorSchemes=colorSchemes+"colorScheme='"+colorSchemeList.get(i)+"'";
                if(i<colorSchemeList.size()-1){
                    colorSchemes=colorSchemes+" or ";
                }
            }
            colorSchemes=colorSchemes+")";
            values.add(colorSchemes);
        }
        if(shadeList.size()>0){
            String shades="(";
            for(int i=0;i<shadeList.size();i++){
                shades=shades+"shade='"+shadeList.get(i)+"'";
                if(i<shadeList.size()-1){
                    shades=shades+" or ";
                }
            }
            shades=shades+")";
            values.add(shades);
        }
        if(originPlaceList.size()>0){
            String originPlaces="(";
            for(int i=0;i<originPlaceList.size();i++){
                originPlaces=originPlaces+"originPlace='"+originPlaceList.get(i)+"'";
                if(i<originPlaceList.size()-1){
                    originPlaces=originPlaces+" or ";
                }
            }
            originPlaces=originPlaces+")";
            values.add(originPlaces);
        }
        if(effectList.size()>0){
            String effects="(";
            for(int i=0;i<effectList.size();i++){
                effects=effects+"effect='"+effectList.get(i)+"'";
                if(i<effectList.size()-1){
                    effects=effects+" or ";
                }
            }
            effects=effects+")";
            values.add(effects);
        }
        if(sqlIdList.size()>0){
            String sqlIds="(";
            for(int i=0;i<sqlIdList.size();i++){
                sqlIds=sqlIds+"sqlId='"+sqlIdList.get(i)+"'";
                if(i<sqlIdList.size()-1){
                    sqlIds=sqlIds+" or ";
                }
            }
            sqlIds=sqlIds+")";
            values.add(sqlIds);
        }
        if(priceList.size()>0&&priceList.get(0).length()>0){
            String prices="(";
            for(int i=0;i<priceList.size();i++){
                Double min=Double.parseDouble(priceList.get(i))-30;
                Double max=Double.parseDouble(priceList.get(i))+30;
                prices=prices+"(price>= "+String.valueOf(min)+" and price<= "+String.valueOf(max)+")";
                if(i<sqlIdList.size()-1){
                    prices=prices+" or ";
                }
            }
            prices=prices+")";
            values.add(prices);
        }
        //生成sql语句
        String sql="select distinct "+column+" from Commodity where ";
        for(int i=0;i<values.size();i++){
            sql=sql+values.get(i);
            if(i<values.size()-1){
                sql=sql+" and ";
            }
        }
        System.out.println("执行sql语句："+sql);
        return execSQLForValue(sql);
    }

//    public List selectSomeCommodity(String sql){
//
//   }

    public  List selectByColorScheme(String colorScheme){
        List<Commodity> list = new ArrayList<>();
        String sql = "select * from Commodity where colorScheme=?";
        list = jdbcTemplate.query(sql,new BeanPropertyRowMapper<Commodity>(Commodity.class),colorScheme);
        System.out.println(list.size());
        for(Commodity commodity:list){
            commodity.printMyself();
        }
        return list;
    }

    public void select(String sql){
        List<Commodity> list = new ArrayList<>();
        list=jdbcTemplate.query(sql,new BeanPropertyRowMapper<Commodity>(Commodity.class));
        System.out.println(list.size());
        for(Commodity commodity:list){
            commodity.printMyself();
        }
    }

    private List<Commodity> execSQLForCommoditys(String sql){
        return jdbcTemplate.query(sql,new BeanPropertyRowMapper<Commodity>(Commodity.class));
    }

    public List<Map<String,Object>> execSQLForValue(String sql){
        //执行sql语句,返回若干个值
        return jdbcTemplate.queryForList(sql);
    }

    private String changeColumnName(String s){
        if(s.equals("品牌")){
            return "brand";
        }
        if(s.equals("色系")){
            return "colorScheme";
        }
        if(s.equals("产地")){
            return "originPlace";
        }
        if(s.equals("类型")){
            return "commodityType";
        }
        if(s.equals("妆效")){
            return "effect";
        }
        if(s.equals("价格")){
            return "price";
        }
        if(s.equals("色号")){
            return "shade";
        }
        return "";
    }



}



