package com.example.coin.bl.statistics;

import com.example.coin.po.Entity;
import com.example.coin.po.Relation;

import java.util.List;

/**
 * @Author: yangyujia
 * @Date: 2021-04-04
 * 统计相关
 */
public interface StatisticsService {
    /**
     * 统计某文件中实体总数
     * @param fileId
     * @return
     */
    int getEntityNumTotal(int fileId);

    /**
     * 统计某文件中某一类实体的个数
     * @param fileId
     * @param entityType
     * @return
     */
    int getEntityNumByType(int fileId,String entityType);

    /**
     * 返回所有实体类型
     * @param fileId
     * @return
     */
    List<String> getAllEntityTypes(int fileId);

    /**
     * 返回所有关系类型
     * @param fileId
     * @return
     */
    List<String> getAllRelationTypes(int fileId);

    /**
     * 统计某文件中关系的总数
     * @param fileId
     * @return
     */
    int getRelationNumTotal(int fileId);

    /**
     * 统计某文件中某一类关系的个数
     * @param fileId
     * @param relationType
     * @return
     */
    int getRelationNumByType(int fileId,String relationType);

    /**
     * 统计某文件中某个实体的关系个数
     * @param fileId
     * @param entityName
     * @return
     */
    int getRelationNumByEntity(int fileId,String entityName);

    /**
     * 返回某个类型的实体
     * @param fileId
     * @param entityType
     * @return
     */
    List<Entity> getEntitiesByType(int fileId, String entityType);

    /**
     * 返回某个类型的关系
     * @param fileId
     * @param relationType
     * @return
     */
    List<Relation> getRelationsByType(int fileId, String relationType);

}
