package com.example.coin.unitTest;

import com.example.coin.CoinApplication;
import com.example.coin.bl.exporter.ExporterService;
import com.example.coin.bl.recommend.RecommendService;
import com.example.coin.data.commodity.CommodityMapper;
import com.example.coin.data.exporter.ExporterMapper;
import com.example.coin.po.Commodity;
import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.impl.model.file.FileDataModel;
import org.apache.mahout.cf.taste.impl.neighborhood.NearestNUserNeighborhood;
import org.apache.mahout.cf.taste.impl.recommender.GenericItemBasedRecommender;
import org.apache.mahout.cf.taste.impl.recommender.GenericUserBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.TanimotoCoefficientSimilarity;
import org.apache.mahout.cf.taste.model.DataModel;
import org.apache.mahout.cf.taste.neighborhood.UserNeighborhood;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.recommender.Recommender;
import org.apache.mahout.cf.taste.similarity.ItemSimilarity;
import org.apache.mahout.cf.taste.similarity.UserSimilarity;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@SpringBootTest(classes = CoinApplication.class, webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@RunWith(SpringJUnit4ClassRunner.class)
public class RecommendServiceTest {
    @Autowired
    RecommendService recommendService;
    @MockBean
    CommodityMapper commodityMapper;

    @Test
    public void testUserRecommend() throws IOException, TasteException {
        DataModel model=new FileDataModel(new File("src/test/java/com/example/coin/testFile/recommend.csv"));

        UserSimilarity similarity=new TanimotoCoefficientSimilarity(model);

        UserNeighborhood neighborhood=new NearestNUserNeighborhood(5,similarity,model);

        Recommender recommender=new GenericUserBasedRecommender(model,neighborhood,similarity);

        List<RecommendedItem> recommendItemList=recommender.recommend(4,3);

        Assert.assertEquals(105,recommendItemList.get(0).getItemID());
    }

    @Test
    public void testCommodityRecommend() throws IOException, TasteException {

        DataModel model=new FileDataModel(new File("src/test/java/com/example/coin/testFile/recommend.csv"));

        ItemSimilarity similarity=new TanimotoCoefficientSimilarity(model);

        GenericItemBasedRecommender recommender=new GenericItemBasedRecommender(model,similarity);

        List<RecommendedItem> recommendItemList=recommender.mostSimilarItems(104,1);

        Assert.assertEquals(101,recommendItemList.get(0).getItemID());
    }

    @Test
    public void testPopularRecommend(){

        List<Commodity> test=new ArrayList<>();

        Mockito.when(commodityMapper.getPopularCommodities()).thenReturn(test);

        Assert.assertEquals(0,test.size());
    }

}
