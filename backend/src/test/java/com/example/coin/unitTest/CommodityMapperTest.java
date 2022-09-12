package com.example.coin.unitTest;

import com.example.coin.TmallApplicationTest;
import com.example.coin.data.commodity.CommodityMapper;
import com.example.coin.po.Commodity;
import com.example.coin.po.Fuzz;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class CommodityMapperTest extends TmallApplicationTest {
    @Autowired
    CommodityMapper commodityMapper;

    @Test
    public void testGetAllCommodies(){
        List<Commodity> lc=commodityMapper.getAllCommodities();
        for (Commodity commodity : lc) {
            commodity.printMyself();
        }
    }

    @Test
    public void testGetCommodity(){
        Commodity commodity=commodityMapper.getCommodity(1);
        commodity.printMyself();
    }

    @Test
    public void testGetCommodityByCommodityType(){
        System.out.println("=======testGetCommodityByCommodityType======");
        List<Commodity> lc=commodityMapper.getCommodityByCommodityType("唇釉");
        System.out.println(lc.size());
        for (Commodity commodity : lc) {
            commodity.printMyself();
        }
    }

    @Test
    public void testGetCommodityByBrand(){
        System.out.println("=======testGetCommodityByBrand======");
        List<Commodity> lc=commodityMapper.getCommodityByBrand("美宝莲");
        for (Commodity commodity : lc) {
            commodity.printMyself();
        }
    }



    @Test
    public void testGetCommodityByColorScheme(){
        System.out.println("=======testGetCommodityByColorScheme======");
        List<Commodity> lc=commodityMapper.getCommodityByColorScheme("血浆");
        for (Commodity commodity : lc) {
            commodity.printMyself();
        }
    }

    @Test
    public void testGetCommodityByOriginPlace(){
        System.out.println("=======testGetCommodityByOriginPlace======");
        List<Commodity> lc=commodityMapper.getCommodityByOriginPlace("韩国");
        System.out.println(lc.size());
        for (Commodity commodity : lc) {
            commodity.printMyself();
        }
    }

    @Test
    public void testGetCommodityByEffect(){
        System.out.println("=======testGetCommodityByEffect======");
        List<Commodity> lc=commodityMapper.getCommodityByEffect("自然/裸妆");
        for (Commodity commodity : lc) {
            commodity.printMyself();
        }
    }

    @Test
    public void testGetCommodityBySqlId(){
        System.out.println("=======testGetCommodityBySqlId======");
        Commodity commodity=commodityMapper.getCommodityBySqlId("colorkey丝绒唇釉R617");
        commodity.printMyself();

    }

    @Test
    public void testGetAllFuzzs(){
        List<Fuzz> fuzzList=commodityMapper.getAllFuzzs();
        for(Fuzz fuzz:fuzzList){
            System.out.println(fuzz.toString());
        }
    }

    @Test
    public void testGetSQLId(){
        String sqlId=commodityMapper.getSQLId("MAC经典子弹头Dozen Carnations");
        String sqlId2=commodityMapper.getSQLId("MAC经典子弹头一打康乃馨");
        Assert.assertEquals("MAC经典子弹头232",sqlId);
        Assert.assertEquals("MAC经典子弹头232",sqlId2);
    }


}
