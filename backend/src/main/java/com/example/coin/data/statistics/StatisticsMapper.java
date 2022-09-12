package com.example.coin.data.statistics;

import com.example.coin.po.Entity;
import com.example.coin.po.Relation;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface StatisticsMapper {
    //统计某文件中实体的总数
    int getEntityNumTotal(int fileId);

    //统计某一类实体的个数
    int getEntityNumByType(int fileId,String entityType);

    //统计某文件中关系的总数
    int getRelationNumTotal(int fileId);

    //返回所有实体类型
    List<String> getAllEntityTypes(int fileId);

    //返回所有关系类型
    List<String> getAllRelationTypes(int fileId);

    //统计某一类关系的个数
    int getRelationNumByType(int fileId,String relationType);

    //统计某一实体的关系个数
    int getRelationNumByEntity(int fileId,String entityName);

    //返回某个类型的实体
    List<Entity> getEntitiesByType(int fileId,String entityType);

    //返回某个类型的关系
    List<Relation> getRelationsByType(int fileId,String relationType);

}
