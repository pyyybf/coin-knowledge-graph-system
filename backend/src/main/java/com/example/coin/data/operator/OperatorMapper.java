package com.example.coin.data.operator;

import com.example.coin.po.Entity;
import com.example.coin.po.Relation;
import com.example.coin.po.SourceFile;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author: pengyiyan
 * @Date: 2021-03-16
 */
@Mapper
@Repository
public interface OperatorMapper {

    SourceFile getFileById(int fileId);

    int getFileIdByName(@Param("fileName") String fileName);

    List<Entity> getEntities(@Param("fileId") int fileId);

    List<Relation> getRelations(@Param("fileId") int fileId);

    int addEntity(Entity entity);

    int addRelation(Relation relation);

    int updateEntityName(@Param("entityId") int entityId, @Param("name") String name);

    int updateEntityColor(@Param("entityId") int entityId, @Param("color") String color);

    int updateEntityShape(@Param("entityId") int entityId, @Param("shape") String shape);

    int updateEntityFontType(@Param("entityId") int entityId, @Param("fontType") int fontType);

    int updateEntityFontSize(@Param("entityId") int entityId, @Param("fontSize") int fontSize);

    int updateEntityX(@Param("entityId") int entityId, @Param("x") double x);

    int updateEntityY(@Param("entityId") int entityId, @Param("y") double y);

    int updateEntityX2(@Param("entityId") int entityId, @Param("x2") double x2);

    int updateEntityY2(@Param("entityId") int entityId, @Param("y2") double y2);

    int updateEntityType(@Param("entityId") int entityId, @Param("entityType") String entityType);

    int setEntityVisible(@Param("entityId") int entityId);

    int setEntityInvisible(@Param("entityId") int entityId);

    int setEntityNameVisible(@Param("entityId") int entityId);

    int setEntityNameInvisible(@Param("entityId") int entityId);

    int updateEntitySize(@Param("entityId") int entityId, @Param("entitySize") int entitySize);

    int updateRelationName(@Param("relationId") int relationId, @Param("name") String name);

    int updateRelationLine(@Param("relationId") int relationId, @Param("type") int type);

    int updateRelationEndpoint(@Param("relationId") int relationId, @Param("e1") String e1, @Param("e2") String e2);

    int updateRelationColor(@Param("relationId") int relationId, @Param("color") String color);

    int updateRelationType(@Param("relationId") int relationId, @Param("relationType") String relationType);

    int setRelationVisible(@Param("relationId") int relationId);

    int setRelationInvisible(@Param("relationId") int relationId);

    int setRelationLabelVisible(@Param("relationId") int relationId);

    int setRelationLabelInvisible(@Param("relationId") int relationId);

    int deleteEntity(@Param("entityId") int entityId);

    int deleteRelation(@Param("relationId") int relationId);

    double getFileZoom(@Param("fileId") int fileId);

    int updateFileZoom(@Param("fileId") int fileId,@Param("zoom") double zoom);

    double getFilePointX(@Param("fileId") int fileId);

    int updateFilePointX(@Param("fileId") int fileId,@Param("pointX") double pointX);

    double getFilePointY(@Param("fileId") int fileId);

    int updateFilePointY(@Param("fileId") int fileId,@Param("pointY") double pointY);

    double getFileZoom2(@Param("fileId") int fileId);

    double getFilePointX2(@Param("fileId") int fileId);

    double getFilePointY2(@Param("fileId") int fileId);

    int updateFileZoom2(@Param("fileId") int fileId,@Param("zoom2") double zoom2);

    int updateFilePointX2(@Param("fileId") int fileId,@Param("pointX2") double pointX2);

    int updateFilePointY2(@Param("fileId") int fileId,@Param("pointY2") double pointY2);


    //得到最大的entityId
    int getMaxEntityId();

    //得到最大的relationId
    int getMaxRelationId();

}
