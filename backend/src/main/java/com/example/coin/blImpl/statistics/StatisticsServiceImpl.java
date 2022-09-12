package com.example.coin.blImpl.statistics;

import com.example.coin.bl.statistics.StatisticsService;
import com.example.coin.data.statistics.StatisticsMapper;
import com.example.coin.po.Entity;
import com.example.coin.po.Relation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StatisticsServiceImpl implements StatisticsService {
    @Autowired
    StatisticsMapper statisticsMapper;

    @Override
    public int getEntityNumTotal(int fileId) {
        int result=-1;
        try{
            result=statisticsMapper.getEntityNumTotal(fileId);
        }catch (Exception e){
            System.out.println("统计失败！");
        }
        return result;
    }

    @Override
    public int getEntityNumByType(int fileId, String entityType) {
        int result = -1;
        try {
            result = statisticsMapper.getEntityNumByType(fileId,entityType);
        } catch (Exception e) {
            System.out.println("统计失败！");
        }
        return result;
    }

    @Override
    public int getRelationNumTotal(int fileId) {
        int result=-1;
        try{
            result=statisticsMapper.getRelationNumTotal(fileId);
        }catch (Exception e){
            System.out.println("统计失败！");
        }
        return result;
    }

    @Override
    public int getRelationNumByType(int fileId, String relationType) {
        int result=-1;
        try{
            result=statisticsMapper.getRelationNumByType(fileId,relationType);
        }catch (Exception e){
            System.out.println("统计失败！");
        }
        return result;
    }

    @Override
    public int getRelationNumByEntity(int fileId, String entityName) {
        int result=-1;
        try{
            result=statisticsMapper.getRelationNumByEntity(fileId,entityName);
        }catch (Exception e){
            System.out.println("统计失败！");
        }
        return result;
    }

    @Override
    public List<Entity> getEntitiesByType(int fileId, String entityType) {
        return statisticsMapper.getEntitiesByType(fileId,entityType);
    }

    @Override
    public List<Relation> getRelationsByType(int fileId, String relationType) {
        return statisticsMapper.getRelationsByType(fileId,relationType);
    }

    @Override
    public List<String> getAllEntityTypes(int fileId) {
        return statisticsMapper.getAllEntityTypes(fileId);
    }

    @Override
    public List<String> getAllRelationTypes(int fileId) {
        return statisticsMapper.getAllRelationTypes(fileId);
    }
}
