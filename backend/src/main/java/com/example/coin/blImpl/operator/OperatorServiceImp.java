package com.example.coin.blImpl.operator;

import com.example.coin.bl.operator.OperatorService;
import com.example.coin.data.operator.OperatorMapper;
import com.example.coin.po.Entity;
import com.example.coin.po.Relation;
import com.example.coin.po.SourceFile;
import com.example.coin.vo.ResponseVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class OperatorServiceImp implements OperatorService {
    private final static String ENTITY_EXIST = "实体已存在";
    private final static String RELATION_EXIST = "关系已存在";
    private final static String UPDATE_ERROR = "编辑失败";
    private final static String DELETE_ERROR = "删除失败";

    @Autowired
    OperatorMapper operatorMapper;

    @Override
    public List<Entity> getEntities(int fileId) {
//        List<Entity> tmp = operatorMapper.getEntities(fileId);
//        for (int i = 0; i < tmp.size(); i++) {
//            System.out.println(tmp.get(i).getShape());
//        }
        return operatorMapper.getEntities(fileId);
    }

    @Override
    public List<Relation> getRelations(int fileId) {
//        List<Relation> tmp = operatorMapper.getRelations(fileId);
//        for (int i = 0; i < tmp.size(); i++) {
//            System.out.println(tmp.get(i).getId());
//        }
        return operatorMapper.getRelations(fileId);
    }

//    @Override
//    public ResponseVO addEntity(Entity entity) {
//        int fileId = entity.getFileId();
//        List<Entity> entityList = operatorMapper.getEntities(fileId);
//        for (Entity e : entityList) {
//            //如果在同文件中存在重复实体
//            if (e.getName().equals(entity.getName())) {
//                return ResponseVO.buildFailure(ENTITY_EXIST);
//            }
//        }
//        operatorMapper.addEntity(entity);
//        return ResponseVO.buildSuccess(operatorMapper.getMaxEntityId());
//    }

    @Override
    public ResponseVO addRelation(Relation relation) {
        int fileId = relation.getFileId();
        List<Relation> relationList = operatorMapper.getRelations(fileId);
        for (Relation r : relationList) {
            //这里是不是还要判断插入的e1e2是否存在于目标文件中？
            if (r.getName().equals(relation.getName()) && r.getE1().equals(relation.getE1()) && r.getE2().equals(relation.getE2())) {
                return ResponseVO.buildFailure(RELATION_EXIST);
            }
        }
        operatorMapper.addRelation(relation);
        return ResponseVO.buildSuccess(operatorMapper.getMaxRelationId());
    }

    @Override
    public ResponseVO updateEntity(int entityId, String entityName, String color, String shape, int fontType, int fontSize, String entityType, double x, double y,double x2, double y2, boolean visible, boolean nameVisible, int entitySize) {
        try {
            operatorMapper.updateEntityName(entityId, entityName);
            operatorMapper.updateEntityColor(entityId,color);
            operatorMapper.updateEntityShape(entityId,shape);
            operatorMapper.updateEntityFontType(entityId,fontType);
            operatorMapper.updateEntityFontSize(entityId,fontSize);
            operatorMapper.updateEntityType(entityId,entityType);
            operatorMapper.updateEntityX(entityId,x);
            operatorMapper.updateEntityY(entityId,y);
            operatorMapper.updateEntityX2(entityId,x2);
            operatorMapper.updateEntityY2(entityId,y2);
            operatorMapper.updateEntitySize(entityId,entitySize);
            if(visible){
                operatorMapper.setEntityInvisible(entityId);
            }
            else{
                operatorMapper.setEntityInvisible(entityId);
            }
            if(nameVisible){
                operatorMapper.setEntityNameVisible(entityId);
            }
            else{
                operatorMapper.setEntityNameInvisible(entityId);
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(UPDATE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO updateRelation(int relationId, String relationName, String e1, String e2, int lineType, boolean visible, boolean labelVisible, String color, String relationType) {
        try{
            operatorMapper.updateRelationName(relationId,relationName);
            operatorMapper.updateRelationEndpoint(relationId,e1,e2);
            operatorMapper.updateRelationLine(relationId,lineType);
            operatorMapper.updateRelationColor(relationId,color);
            operatorMapper.updateRelationType(relationId,relationType);
            if(visible){
                operatorMapper.setRelationVisible(relationId);
            }
            else{
                operatorMapper.setRelationInvisible(relationId);
            }
            if(labelVisible){
                operatorMapper.setRelationLabelVisible(relationId);
            }
            else{
                operatorMapper.setRelationLabelInvisible(relationId);
            }

        }catch (Exception e) {
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(UPDATE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO updateEntityName(int entityId, String name) {
        try {
            operatorMapper.updateEntityName(entityId, name);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(UPDATE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO updateEntityColor(int entityId, String color) {
        try {
            operatorMapper.updateEntityColor(entityId, color);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(UPDATE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO updateEntityShape(int entityId, String shape) {
        try {
            operatorMapper.updateEntityShape(entityId, shape);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(UPDATE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO updateEntityFontType(int entityId, int fontType) {
        try{
            operatorMapper.updateEntityFontType(entityId,fontType);
        }catch (Exception e){
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(UPDATE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO updateEntityFontSize(int entityId, int fontSize) {
        try{
            operatorMapper.updateEntityFontSize(entityId,fontSize);
        }catch (Exception e){
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(UPDATE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO updateEntityX(int entityId, double x) {
        try{
            operatorMapper.updateEntityX(entityId,x);
        }catch (Exception e){
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(UPDATE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO updateEntityY(int entityId, double y) {
        try{
            operatorMapper.updateEntityY(entityId,y);
        }catch (Exception e){
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(UPDATE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }
    @Override
    public ResponseVO updateEntityX2(int entityId, double x2) {
        try{
            operatorMapper.updateEntityX2(entityId,x2);
        }catch (Exception e){
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(UPDATE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO updateEntityY2(int entityId, double y2) {
        try{
            operatorMapper.updateEntityY2(entityId,y2);
        }catch (Exception e){
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(UPDATE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO updateEntitySize(int entityId, int entitySize) {
        try{
            operatorMapper.updateEntitySize(entityId,entitySize);
        }catch (Exception e){
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(UPDATE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO updateEntityType(int entityId, String entityType) {
        try{
            operatorMapper.updateEntityType(entityId,entityType);
        }catch (Exception e){
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(UPDATE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO setEntityVisibleOrNot(int entityId, boolean visible) {
        try{
            if(visible){
                operatorMapper.setEntityVisible(entityId);
            }
            else{
                operatorMapper.setEntityInvisible(entityId);
            }
        }catch (Exception e){
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(UPDATE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO setEntityNameVisibleOrNot(int entityId, boolean nameVisible) {
        try{
            if(nameVisible){
                operatorMapper.setEntityNameVisible(entityId);
            }
            else{
                operatorMapper.setEntityNameInvisible(entityId);
            }
        }catch (Exception e){
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(UPDATE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO updateRelationName(int relationId, String name) {
        try {
            operatorMapper.updateRelationName(relationId, name);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(UPDATE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO updateRelationLine(int relationId, int type) {
        try {
            operatorMapper.updateRelationLine(relationId, type);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(UPDATE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO updateRelationEndpoint(int relationId, String e1, String e2) {
        try {
            operatorMapper.updateRelationEndpoint(relationId, e1, e2);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(UPDATE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO updateRelationColor(int relationId, String color) {
        try {
            operatorMapper.updateRelationColor(relationId,color);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(UPDATE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO updateRelationType(int relationId, String relationType) {
        try {
            operatorMapper.updateRelationType(relationId,relationType);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(UPDATE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO setRelationVisibleOrNot(int relationId, boolean visible) {
        try{
            if(visible){
                operatorMapper.setRelationVisible(relationId);
            }
            else{
                operatorMapper.setRelationInvisible(relationId);
            }
        }catch (Exception e){
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(UPDATE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO setRelationLabelVisibleOrNot(int relationId, boolean labelVisible) {
        try{
            if(labelVisible){
                operatorMapper.setRelationLabelVisible(relationId);
            }
            else{
                operatorMapper.setRelationLabelInvisible(relationId);
            }
        }catch (Exception e){
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(UPDATE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO deleteEntity(int entityId) {
        try {
            operatorMapper.deleteEntity(entityId);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(DELETE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO deleteRelation(int relationId) {
        try {
            operatorMapper.deleteRelation(relationId);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure(DELETE_ERROR);
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public double getFileZoom(int fileId) {
        return operatorMapper.getFileZoom(fileId);
    }

    @Override
    public double getFilePointX(int fileId) {
        return operatorMapper.getFilePointX(fileId);
    }

    @Override
    public double getFilePointY(int fileId) {
        return operatorMapper.getFilePointY(fileId);
    }

    @Override
    public ResponseVO updateFileZoom(int fileId, double zoom) {
        try {
            operatorMapper.updateFileZoom(fileId,zoom);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure("更新失败！");
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO updateFilePointX(int fileId, double pointX) {
        try {
            operatorMapper.updateFilePointX(fileId,pointX);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure("更新失败！");
        }
        return ResponseVO.buildSuccess(true);
    }

    @Override
    public ResponseVO updateFilePointY(int fileId, double pointY) {
        try {
            operatorMapper.updateFilePointY(fileId,pointY);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure("更新失败！");
        }
        return ResponseVO.buildSuccess(true);

    }

    @Override
    public List<Double> getZoom2PointX2PointY2(int fileId) {
        List<Double> result=new ArrayList<>();
        result.add(operatorMapper.getFileZoom2(fileId));
        result.add(operatorMapper.getFilePointX2(fileId));
        result.add(operatorMapper.getFilePointY2(fileId));
        return result;
    }

    @Override
    public ResponseVO updateZoom2PointX2PointY2(int fileId, double zoom2, double pointX2, double pointY2) {
        try {
            operatorMapper.updateFileZoom2(fileId,zoom2);
            operatorMapper.updateFilePointX2(fileId,pointX2);
            operatorMapper.updateFilePointY2(fileId,pointY2);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure("更新失败！");
        }
        return ResponseVO.buildSuccess(true);
    }
}
