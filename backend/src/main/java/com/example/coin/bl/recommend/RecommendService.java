package com.example.coin.bl.recommend;

import com.example.coin.po.Commodity;
import org.apache.mahout.cf.taste.common.TasteException;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public interface RecommendService {

    List<Commodity> getUserRecommend(int userId) throws TasteException, SQLException, IOException;

    List<Commodity> getCommodityRecommend(int commodityId) throws TasteException, SQLException, IOException;

    List<Commodity> getPopularRecommend();
}
