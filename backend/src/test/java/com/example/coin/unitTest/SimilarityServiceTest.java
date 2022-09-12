package com.example.coin.unitTest;


import com.example.coin.CoinApplication;
import com.example.coin.bl.similarity.SimilarityService;
import com.example.coin.data.commodity.CommodityMapper;
import com.example.coin.po.Commodity;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

@SpringBootTest(classes = CoinApplication.class, webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@RunWith(SpringJUnit4ClassRunner.class)
public class SimilarityServiceTest {

    @Autowired
    SimilarityService similarityService;
    @MockBean
    CommodityMapper commodityMapper;

    @Test
    public void testSimilarity(){
        Commodity testNode=new Commodity();
        testNode.setId(256);
        testNode.setBrand("娇兰");
        testNode.setCommodityType("口红");
        testNode.setColorScheme("橘红");
        testNode.setEffect("哑光/雾面");
        testNode.setPrice(280);
        Commodity testNode1=new Commodity();
        Commodity testNode2=new Commodity();
        Commodity testNode3=new Commodity();
        Commodity testNode4=new Commodity();
        Commodity testNode5=new Commodity();

        testNode1.setId(1000);
        testNode1.setBrand("mac");
        testNode1.setCommodityType("口红");
        testNode1.setColorScheme("橘红");
        testNode1.setEffect("哑光/雾面");
        testNode1.setPrice(280);
        List<Commodity> color=new ArrayList<>();
        color.add(testNode1);

        testNode2.setId(1001);
        testNode2.setBrand("娇兰");
        testNode2.setCommodityType("唇釉");
        testNode2.setColorScheme("番茄");
        testNode2.setEffect("丝绒");
        testNode2.setPrice(240);
        List<Commodity> brand=new ArrayList<>();
        brand.add(testNode2);

        testNode3.setId(1002);
        testNode3.setBrand("colorKey");
        testNode3.setCommodityType("口红");
        testNode3.setColorScheme("番茄");
        testNode3.setEffect("丝绒");
        testNode3.setPrice(240);
        List<Commodity> type=new ArrayList<>();
        type.add(testNode3);

        testNode4.setId(1003);
        testNode4.setBrand("兰蔻");
        testNode4.setCommodityType("护唇");
        testNode4.setColorScheme("番茄");
        testNode4.setEffect("哑光/雾面");
        testNode4.setPrice(240);
        List<Commodity> effect=new ArrayList<>();
        effect.add(testNode4);

        testNode5.setId(1004);
        testNode5.setBrand("兰蔻");
        testNode5.setCommodityType("护唇");
        testNode5.setColorScheme("番茄");
        testNode5.setEffect("丝绒");
        testNode5.setPrice(270);
        List<Commodity> price=new ArrayList<>();
        price.add(testNode5);


        Mockito.when(commodityMapper.getCommodity(256)).thenReturn(testNode);
        Mockito.when(commodityMapper.getCommodityByBrand("娇兰")).thenReturn(brand);
        Mockito.when(commodityMapper.getCommodityByCommodityType("口红")).thenReturn(type);
        Mockito.when(commodityMapper.getCommodityByColorScheme("橘红")).thenReturn(color);
        Mockito.when(commodityMapper.getCommodityByEffect("哑光/雾面")).thenReturn(effect);
        Mockito.when(commodityMapper.getCommodityByPrice(280)).thenReturn(price);

        Mockito.when(commodityMapper.getCommodity(1000)).thenReturn(testNode1);

        List<Commodity> result=new ArrayList<>();

        result=similarityService.getAllSimilarity(256,0);


        Assert.assertEquals("mac",result.get(0).getBrand());


    }

}
