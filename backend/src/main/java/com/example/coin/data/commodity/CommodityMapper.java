package com.example.coin.data.commodity;

import com.example.coin.po.Commodity;
import com.example.coin.po.Fuzz;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface CommodityMapper {
    List<Commodity> getAllCommodities();

    Commodity getCommodity(int id);

    List<Commodity> getPopularCommodities();

    List<Commodity> getCommodityByBrand(String brand);

    List<Commodity> getCommodityByCommodityType(String commodityType);

    List<Commodity> getCommodityByColorScheme(String colorScheme);

    List<Commodity> getCommodityByOriginPlace(String originPlace);

    List<Commodity> getCommodityByEffect(String effect);

    List<Commodity> getCommodityByPrice(double price);

    Commodity getCommodityBySqlId(String sqlId);

    List<Fuzz> getAllFuzzs();

    String getSQLId(String fuzzyWord);

    List<String> getCommentByCommodityId(int commodityId);

}
