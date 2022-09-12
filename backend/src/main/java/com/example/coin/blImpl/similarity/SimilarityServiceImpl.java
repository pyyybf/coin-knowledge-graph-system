package com.example.coin.blImpl.similarity;

import com.example.coin.bl.similarity.SimilarityService;
import com.example.coin.po.Commodity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.coin.data.commodity.CommodityMapper;

import java.util.*;


@Service
public class SimilarityServiceImpl implements SimilarityService {
    @Autowired
    CommodityMapper commodityMapper;

    @Override
    public List<Commodity> getAllSimilarity(int commodityId, int similarityType) {

        List<List> rateType = new ArrayList<>(); //比例
        List<Double> allFirst = new ArrayList<>();  //0:正常 默认全部
        allFirst.add(0.2);
        allFirst.add(0.2);
        allFirst.add(0.2);
        allFirst.add(0.2);
        allFirst.add(0.2);
        rateType.add(allFirst);

        List<Double> effectFirst = new ArrayList<>();//1: 功效偏好
        effectFirst.add(0.05);
        effectFirst.add(0.05);
        effectFirst.add(0.2);
        effectFirst.add(0.6);
        effectFirst.add(0.1);
        rateType.add(effectFirst);

        List<Double> priceFirst = new ArrayList<>(); //2:价格优先
        priceFirst.add(0.05); //brand
        priceFirst.add(0.3); //name
        priceFirst.add(0.5); //colorScheme
        priceFirst.add(0.15); //effect
        priceFirst.add(0.0); //price
        rateType.add(priceFirst);

        Commodity node = commodityMapper.getCommodity(commodityId); //取得商品
        List<Commodity> result = new ArrayList<>(); //返回列表
        List<List> re = new ArrayList<>(); //中间list
        List<String> commodityList = new ArrayList<>();  //商品属性
        HashMap<Integer, Double> ratemap = new HashMap<>();

        commodityList.add(String.valueOf(node.getId()));
        commodityList.add(String.valueOf(node.getBrand()));
        commodityList.add(String.valueOf(node.getCommodityType()));
        commodityList.add(String.valueOf(node.getColorScheme()));
        commodityList.add(String.valueOf(node.getEffect()));
        commodityList.add(String.valueOf(node.getPrice()));
        //id,brand,commodityType,colorScheme,effect,price

        List<Commodity> brand = commodityMapper.getCommodityByBrand(commodityList.get(1));
        filterCommodity(ratemap, brand, rateType, commodityList, similarityType);

        List<Commodity> type = commodityMapper.getCommodityByCommodityType(commodityList.get(2));
        filterCommodity(ratemap, type, rateType, commodityList, similarityType);

        List<Commodity> color = commodityMapper.getCommodityByColorScheme(commodityList.get(3));
        filterCommodity(ratemap, color, rateType, commodityList, similarityType);

        List<Commodity> effect = commodityMapper.getCommodityByEffect(commodityList.get(4));
        filterCommodity(ratemap, effect, rateType, commodityList, similarityType);

        List<Commodity> price = commodityMapper.getCommodityByPrice(Double.parseDouble(commodityList.get(5)));
        filterCommodity(ratemap, price, rateType, commodityList, similarityType);

        //id,brand,commodityType,colorScheme,effect,price

        //rate排序
        List<Map.Entry<Integer, Double>> infoIds =
                new ArrayList<Map.Entry<Integer, Double>>(ratemap.entrySet());

        Collections.sort(infoIds, new Comparator<Map.Entry<Integer, Double>>() {
            public int compare(Map.Entry<Integer, Double> o1, Map.Entry<Integer, Double> o2) {
                //return (o2.getValue() - o1.getValue());
                return (o1.getValue()).compareTo(o2.getValue());
            }
        });

        //System.out.println(infoIds);

        for (int i = infoIds.size() - 1; i > infoIds.size() - 11 && i >= 0; i--) {
            result.add(commodityMapper.getCommodity(infoIds.get(i).getKey()));
        }

        // System.out.println(result);
        System.out.println("==================打印结果================");
        for (int i = 0; i < result.size(); i++) {
            System.out.println(result.get(i).getSqlId());
        }
        return result;
    }

    public void filterCommodity(HashMap<Integer, Double> ratemap, List<Commodity> addToRe, List<List> rateType, List<String> commodityList, int type) {
        for (int i = 0; i < addToRe.size(); i++) {
            double rate = 0.0;
            if (addToRe.get(i).getBrand().equals(commodityList.get(1))) {
                rate = rate + Double.parseDouble(String.valueOf(rateType.get(type).get(0)));
            }
            if (addToRe.get(i).getCommodityType().equals(commodityList.get(2))) {
                rate = rate + Double.parseDouble(String.valueOf(rateType.get(type).get(1)));
            }
            if (addToRe.get(i).getColorScheme().equals(commodityList.get(3))) {
                rate = rate + Double.parseDouble(String.valueOf(rateType.get(type).get(2)));
            }
            if (addToRe.get(i).getEffect().equals(commodityList.get(4))) {
//                System.out.println(Double.parseDouble(String.valueOf(rateType.get(type).get(3))));
                rate = rate + Double.parseDouble(String.valueOf(rateType.get(type).get(3)));
            }
            if (Math.abs(Double.parseDouble(String.valueOf(addToRe.get(i).getPrice())) - Double.parseDouble((commodityList.get(5)))) <= 30.0) {
                rate = rate + Double.parseDouble(String.valueOf(rateType.get(type).get(4)));
            }
            if (rate >= 0.8) {
                if (Integer.parseInt(String.valueOf(addToRe.get(i).getId())) != Integer.parseInt(commodityList.get(0))) {
                    ratemap.put(Integer.valueOf(String.valueOf(addToRe.get(i).getId())), rate);
                }
            }
        }
    }


}
