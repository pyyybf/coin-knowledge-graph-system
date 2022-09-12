package com.example.coin.bl.operator;

import com.example.coin.po.Entity;
import com.example.coin.po.Relation;
import com.example.coin.vo.ResponseVO;

import java.util.List;



/**
 * @Author: pengyiyan
 * @Date: 2021-03-15
 * （个人认为，显示页面上的实体和关系需要不同的显示，添加的时候最好也是不一样的方法）
 */

/**
 * yangyujia 迭代二补充了一次性更新实体的所有属性和关系的所有属性的updateEntity、updateRelation方法
 */

public interface OperatorService {

    /**
     * 返回某文件下的实体列表
     *
     * @param fileId
     * @return
     */
    List<Entity> getEntities(int fileId);

    /**
     * 返回某文件下的关系列表
     *
     * @param fileId
     * @return
     */
    List<Relation> getRelations(int fileId);

    /**
     * 增加一个实体
     *
     * @param entity
     * @return
     */
//    ResponseVO addEntity(Entity entity);

    /**
     * 增加一个关系
     *
     * @param relation
     * @return
     */
    ResponseVO addRelation(Relation relation);

    /**
     * 一次性更新整个实体
     * @param entityId
     * @param entityName
     * @param color
     * @param shape
     * @param fontType
     * @param fontSize
     * @param entityType
     * @param x
     * @param y
     * @param x2
     * @param y2
     * @param visible
     * @param nameVisible
     * @param entitySize
     * @return
     */
    ResponseVO updateEntity(int entityId,String entityName,String color,String shape,int fontType,int fontSize,String entityType,double x,double y,double x2,double y2,boolean visible,boolean nameVisible,int entitySize);

    /**
     * 一次性更新整个关系
     * @param relationId
     * @param relationName
     * @param e1
     * @param e2
     * @param lineType
     * @param visible
     * @param labelVisible
     * @param color
     * @param relationType
     * @return
     */
    ResponseVO updateRelation(int relationId,String relationName,String e1,String e2,int lineType,boolean visible,boolean labelVisible,String color,String relationType);

    /**
     * 修改实体名称
     *
     * @param entityId
     * @return
     */
    ResponseVO updateEntityName(int entityId, String name);

    /**
     * 修改实体颜色
     *
     * @param entityId
     * @return
     */
    ResponseVO updateEntityColor(int entityId, String color);

    /**
     * 修改实体形状
     *
     * @param entityId
     * @return
     */
    ResponseVO updateEntityShape(int entityId, String shape);

    /**
     * 修改实体字体类型
     * @param entityId
     * @param fontType
     * @return
     */
    ResponseVO updateEntityFontType(int entityId,int fontType);

    /**
     * 修改实体字体大小
     * @param entityId
     * @param fontSize
     * @return
     */
    ResponseVO updateEntityFontSize(int entityId,int fontSize);

    /**
     * 修改实体x坐标
     * @param entityId
     * @param x
     * @return
     */
    ResponseVO updateEntityX(int entityId,double x);

    /**
     * 修改实体y坐标
     * @param entityId
     * @param y
     * @return
     */
    ResponseVO updateEntityY(int entityId,double y);

    /**
     * 修改实体x2坐标
     * @param entityId
     * @param x2
     * @return
     */
    ResponseVO updateEntityX2(int entityId,double x2);

    /**
     * 修改实体y2坐标
     * @param entityId
     * @param y2
     * @return
     */
    ResponseVO updateEntityY2(int entityId,double y2);

    /**
     * 修改实体大小
     * @param entityId
     * @param entitySize
     * @return
     */
    ResponseVO updateEntitySize(int entityId,int entitySize);

    /**
     * 修改实体类型
     *
     * @param entityId
     * @return
     */
    ResponseVO updateEntityType(int entityId, String entityType);

    /**
     * 设置整个实体可见或不可见
     *
     * @param entityId
     * @return
     */
    ResponseVO setEntityVisibleOrNot(int entityId,boolean visible);

    /**
     * 设置实体名字可见或不可见
     *
     * @param entityId
     * @return
     */
    ResponseVO setEntityNameVisibleOrNot(int entityId,boolean nameVisible);

    /**
     * 修改关系名称
     *
     * @param relationId
     * @return
     */
    ResponseVO updateRelationName(int relationId, String name);

    /**
     * 修改关系线的类型
     *
     * @param relationId
     * @return
     */
    ResponseVO updateRelationLine(int relationId, int type);

    /**
     * 修改关系线的起点和终点
     *
     * @param relationId
     * @return
     */
    ResponseVO updateRelationEndpoint(int relationId, String e1, String e2);

    /**
     * 修改关系颜色
     *
     * @param relationId
     * @return
     */
    ResponseVO updateRelationColor(int relationId, String color);

    /**
     * 修改关系类型
     *
     * @param relationId
     * @return
     */
    ResponseVO updateRelationType(int relationId, String relationType);

    /**
     * 设置整个关系可见或不可见
     *
     * @param relationId
     * @return
     */
    ResponseVO setRelationVisibleOrNot(int relationId,boolean visible);

    /**
     * 设置关系标签可见或不可见
     *
     * @param relationId
     * @return
     */
    ResponseVO setRelationLabelVisibleOrNot(int relationId,boolean labelVisible);

    /**
     * 删除实体
     *
     * @param entityId
     * @return
     */
    ResponseVO deleteEntity(int entityId);

    /**
     * 删除实体关系
     *
     * @param relationId
     * @return
     */
    ResponseVO deleteRelation(int relationId);

    /**
     * 获得某文件的zoom
     * @param fileId
     * @return
     */
    double getFileZoom(int fileId);

    /**
     * 更新某文件的zoom
     * @param fileId、zoom
     * @return
     */
    ResponseVO updateFileZoom(int fileId,double zoom);
    /**
     * 获得某文件的PointX
     * @param fileId
     * @return
     */
    double getFilePointX(int fileId);

    /**
     * 更新某文件的PointX
     * @param fileId、pointX
     * @return
     */
    ResponseVO updateFilePointX(int fileId,double pointX);
    /**
     * 获得某文件的PointY
     * @param fileId
     * @return
     */
    double getFilePointY(int fileId);

    /**
     * 更新某文件的PointY
     * @param fileId、pointY
     * @return
     */
    ResponseVO updateFilePointY(int fileId,double pointY);

    /**
     * 一次性获得某文件的zoom2、pointX2、pointY2
     * @param fileId
     * @return
     */
    List<Double> getZoom2PointX2PointY2(int fileId);

    /**
     * 一次性更新某文件的zoom2、pointX2、pointY2
     * @param fileId
     * @param zoom2
     * @param pointX2
     * @param pointY2
     * @return
     */
    ResponseVO updateZoom2PointX2PointY2(int fileId,double zoom2,double pointX2,double pointY2);



}
