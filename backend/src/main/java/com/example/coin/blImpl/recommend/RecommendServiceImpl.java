package com.example.coin.blImpl.recommend;

import com.example.coin.bl.exporter.ExporterService;
import com.example.coin.bl.recommend.RecommendService;
import com.example.coin.data.commodity.CommodityMapper;
import com.example.coin.po.Commodity;
import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.impl.model.file.FileDataModel;
import org.apache.mahout.cf.taste.impl.recommender.GenericItemBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.TanimotoCoefficientSimilarity;
import org.apache.mahout.cf.taste.similarity.ItemSimilarity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.apache.mahout.cf.taste.impl.model.jdbc.MySQLJDBCDataModel;
import org.apache.mahout.cf.taste.impl.neighborhood.NearestNUserNeighborhood;
import org.apache.mahout.cf.taste.impl.recommender.GenericUserBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.PearsonCorrelationSimilarity;
import org.apache.mahout.cf.taste.model.DataModel;
import org.apache.mahout.cf.taste.model.JDBCDataModel;
import org.apache.mahout.cf.taste.neighborhood.UserNeighborhood;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.recommender.Recommender;
import org.apache.mahout.cf.taste.similarity.UserSimilarity;

import java.sql.*;
import java.util.*;
import java.io.*;
import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;


//import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;


@Service
public class RecommendServiceImpl implements RecommendService {
    @Autowired
    CommodityMapper commodityMapper;

    @Autowired
    ExporterService exporterService;

    @Override
    public List<Commodity> getUserRecommend(int userId) throws TasteException, SQLException, IOException {
//        MysqlDataSource dataSource=new MysqlDataSource();
//        dataSource.setServerName("localhost");
//        dataSource.setUser("root");
//        dataSource.setPassword("root");
//        dataSource.setDatabaseName("coin");

//        JDBCDataModel jdbcDataModel=new MySQLJDBCDataModel(dataSource,"Collect","userId","commodityId","val",null);
//        DataModel model=jdbcDataModel;

//        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/coin?"+"user=root&password=root&serverTimezone=GMT%2B8");
//        Statement state = conn.createStatement();
//        String querySql = "select * from collect";
//        ResultSet result = state.executeQuery(querySql);

//        HikariConfig config = new HikariConfig();
//        System.out.println("here");
//        config.setDataSourceClassName("com.mysql.cj.jdbc.Driver");
//        config.addDataSourceProperty("url", "jdbc:mysql://localhost:3306/coin?serverTimezone=GMT%2B8");
//        config.addDataSourceProperty("user","root");
//        config.addDataSourceProperty("password", "root");
//
//        config.setMaximumPoolSize(200);
//        config.setConnectionTimeout(1000);
//        config.setIdleTimeout(60000);
//        config.setMaxLifetime(180000);
//        HikariDataSource dataSource = new HikariDataSource(config);


//        JDBCDataModel jdbcDataModel=new MySQLJDBCDataModel(dataSource,"Collect","userId","commodityId","val",null);
//        DataModel model=jdbcDataModel;
        exporterService.exportCSV();
        DataModel model=new FileDataModel(new File("collect.csv"));

        UserSimilarity similarity=new TanimotoCoefficientSimilarity(model);

        UserNeighborhood neighborhood=new NearestNUserNeighborhood(50,similarity,model);

        Recommender recommender=new GenericUserBasedRecommender(model,neighborhood,similarity);

        List<RecommendedItem> recommendItemList=recommender.recommend(userId,5);

        List<Commodity> commodityList=new ArrayList<Commodity>();

        for(RecommendedItem recommendation:recommendItemList){
            System.out.println(recommendation);
            commodityList.add(commodityMapper.getCommodity(Integer.valueOf(String.valueOf(recommendation.getItemID()))));
        }
        if(commodityList.size()<8) {
            List<Commodity> plusrecommend = getPopularRecommend();
            int index=0;
            while(commodityList.size()<8){
                if(commodityList.contains(plusrecommend.get(index))){
                    index++;
                }else{
                    commodityList.add(plusrecommend.get(index));
                    index++;
                }
            }
        }


        return commodityList;
    }

    @Override
    public List<Commodity> getCommodityRecommend(int commodityId) throws TasteException, SQLException, IOException {

//        HikariConfig config = new HikariConfig();
//        config.setDataSourceClassName("com.mysql.cj.jdbc.Driver");
//        config.addDataSourceProperty("url", "jdbc:mysql://localhost:3306/coin?serverTimezone=GMT%2B8");
//        config.addDataSourceProperty("user","root");
//        config.addDataSourceProperty("password", "root");
//
//        config.setMaximumPoolSize(200);
//        config.setConnectionTimeout(1000);
//        config.setIdleTimeout(60000);
//        config.setMaxLifetime(180000);
//        HikariDataSource dataSource = new HikariDataSource(config);
//
//
//        JDBCDataModel jdbcDataModel=new MySQLJDBCDataModel(dataSource,"Collect","userId","commodityId","val",null);
//        DataModel model=jdbcDataModel;

        exporterService.exportCSV();
        DataModel model=new FileDataModel(new File("collect.csv"));

        ItemSimilarity similarity=new TanimotoCoefficientSimilarity(model);

        //UserNeighborhood neighborhood=new NearestNUserNeighborhood(6,similarity,model);

        GenericItemBasedRecommender recommender=new GenericItemBasedRecommender(model,similarity);

        List<RecommendedItem> recommendItemList=recommender.mostSimilarItems(commodityId,5);

        List<Commodity> commodityList=new ArrayList<Commodity>();

        for(RecommendedItem recommendation:recommendItemList){
            System.out.println(recommendation);
            commodityList.add(commodityMapper.getCommodity(Integer.valueOf(String.valueOf(recommendation.getItemID()))));
        }

        if(commodityList.size()<5) {
            List<Commodity> plusrecommend = getPopularRecommend();
            int index=0;
            while(commodityList.size()<5){
                if(commodityList.contains(plusrecommend.get(index))){
                    index++;
                }else{
                    commodityList.add(plusrecommend.get(index));
                    index++;
                }
            }
        }
        return commodityList;
    }

    @Override
    public List<Commodity> getPopularRecommend(){
        List<Commodity> commodityList=commodityMapper.getPopularCommodities();

        return commodityList;
    }

//    public void exportCSV(){
//        String jdbcURL = "jdbc:mysql://localhost:3306/coin?serverTimezone=GMT%2B8&useSSL=false";
//        String username = "root";
//        String password = "root";
//
//        String csvFilePath = "collect.csv";
//
//        try (Connection connection = DriverManager.getConnection(jdbcURL, username, password)) {
//            String sql = "SELECT * FROM Collect";
//
//            Statement statement = connection.createStatement();
//
//            ResultSet result = statement.executeQuery(sql);
//
//            BufferedWriter fileWriter = new BufferedWriter(new FileWriter(csvFilePath));
//
//            // write header line containing column names
//            //fileWriter.write("userId,commodityId,val");
//
//            while (result.next()) {
//                int userId = result.getInt("userId");
//                int commodityId = result.getInt("commodityId");
//                String val = result.getString("val");
//
//                String line = String.format("%d,%d,%s",
//                        userId, commodityId, val);
//
//                fileWriter.newLine();
//                fileWriter.write(line);
//            }
//
//            statement.close();
//            fileWriter.close();
//
//        } catch (SQLException e) {
//            System.out.println("Datababse error:");
//            e.printStackTrace();
//        } catch (IOException e) {
//            System.out.println("File IO error:");
//            e.printStackTrace();
//        }
//    }

}
