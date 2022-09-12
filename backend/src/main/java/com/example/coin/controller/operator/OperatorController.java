package com.example.coin.controller.operator;

import com.aliyun.oss.OSSClient;
import com.example.coin.bl.operator.OperatorService;
import com.example.coin.po.Entity;
import com.example.coin.po.Relation;
import com.example.coin.vo.ResponseVO;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.XMLWriter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.*;

/**
 * @Author: panyue
 * @Date: 2021-03-19
 */
@RestController()
@RequestMapping("/api/operator")
public class OperatorController {
    @Autowired
    OperatorService operatorService;

    @GetMapping("/getEntities")
    public ResponseVO getEntities(@RequestParam(value = "fileId") int fileId) {
        return ResponseVO.buildSuccess(operatorService.getEntities(fileId));
    }

    @GetMapping("/getRelations")
    public ResponseVO getRelations(@RequestParam(value = "fileId") int fileId) {
        return ResponseVO.buildSuccess(operatorService.getRelations(fileId));
    }

//    @PostMapping("/addEntity")
//    public ResponseVO addEntity(@RequestParam(value = "fileId") int fileId,
//                                @RequestParam(value = "name") String name,
//                                @RequestParam(value = "color") String color,
//                                @RequestParam(value = "entityType") String entityType
//    ) {
//        return operatorService.addEntity(new Entity(name, fileId, color, entityType));
//    }

    @PostMapping("/addRelation")
    public ResponseVO addRelation(@RequestParam(value = "fileId") int fileId,
                                  @RequestParam(value = "label") String name,
                                  @RequestParam(value = "source") String e1,
                                  @RequestParam(value = "target") String e2,
                                  @RequestParam(value = "type") int type,
                                  @RequestParam(value = "relationType") String relationType
    ) {
        return operatorService.addRelation(new Relation(name, fileId, e1, e2, type, relationType));
    }

    @DeleteMapping("/deleteEntity")
    public ResponseVO deleteEntity(@RequestParam(value = "id") int id) {
        return operatorService.deleteEntity(id);
    }

    @DeleteMapping("/deleteRelation")
    public ResponseVO deleteRelation(@RequestParam(value = "id") int id) {
        return operatorService.deleteRelation(id);
    }

    @PutMapping("/updateEntity")
    public ResponseVO updateEntity(@RequestParam(value = "id") int id,
                                   @RequestParam(value = "name") String name,
                                   @RequestParam(value = "color") String color,
                                   @RequestParam(value = "shape") String shape,
                                   @RequestParam(value = "entityType") String entityType,
                                   @RequestParam(value = "entitySize") int entitySize,
                                   @RequestParam(value = "fontSize") int fontSize
    ) {
        operatorService.updateEntityName(id, name);
        operatorService.updateEntityShape(id, shape);
        operatorService.updateEntityType(id, entityType);
        operatorService.updateEntitySize(id, entitySize);
        operatorService.updateEntityFontSize(id, fontSize);
        return operatorService.updateEntityColor(id, color);

    }

    @PutMapping("/updateRelation")
    public ResponseVO updateRelation(@RequestParam(value = "id") int id,
                                     @RequestParam(value = "relationName") String name,
                                     @RequestParam(value = "source") String e1,
                                     @RequestParam(value = "target") String e2,
                                     @RequestParam(value = "lineType") int type,
                                     @RequestParam(value = "relationType") String relationType
    ) {
        operatorService.updateRelationName(id, name);
        operatorService.updateRelationLine(id, type);
        operatorService.updateRelationType(id, relationType);
        return operatorService.updateRelationEndpoint(id, e1, e2);
    }

    @PutMapping("/updateEntityPosition")
    public ResponseVO updateEntityPosition(@RequestParam(value = "entityId") int entityId,
                                           @RequestParam(value = "x") double x,
                                           @RequestParam(value = "y") double y
    ) {
        operatorService.updateEntityX(entityId, x);
        return operatorService.updateEntityY(entityId, y);
    }
    @PutMapping("/setRelationLabelVisibleOrNot")
    public ResponseVO setRelationLabelVisibleOrNot(@RequestParam(value="relationId") int relationId,
                                                   @RequestParam(value="labelVisible") boolean labelVisible
    ){
        return operatorService.setRelationLabelVisibleOrNot(relationId,labelVisible);
    }
    @GetMapping("/getCanvasPointX")
    public ResponseVO getCanvasPointX(@RequestParam(value = "fileId") int fileId) {
        return ResponseVO.buildSuccess(operatorService.getFilePointX(fileId));
    }

    @GetMapping("/getCanvasPointY")
    public ResponseVO getCanvasPointY(@RequestParam(value = "fileId") int fileId) {
        return ResponseVO.buildSuccess(operatorService.getFilePointY(fileId));
    }

    @GetMapping("/getCanvasZoom")
    public ResponseVO getCanvasZoom(@RequestParam(value = "fileId") int fileId) {
        return ResponseVO.buildSuccess(operatorService.getFileZoom(fileId));
    }

    @PutMapping("/updateEntityParade")
    public ResponseVO updateEntityParade(@RequestParam(value = "entityId") int entityId,
                                           @RequestParam(value = "x2") double x2,
                                           @RequestParam(value = "y2") double y2
    ){
        operatorService.updateEntityX2(entityId, x2);
        return operatorService.updateEntityY2(entityId,y2);
    }
    @GetMapping("/getCanvasParade")
    public ResponseVO getCanvasParade(@RequestParam(value = "fileId") int fileId) {
        return ResponseVO.buildSuccess(operatorService.getZoom2PointX2PointY2(fileId));
    }

    @PutMapping("/updateCanvasParade")
    public ResponseVO updateCanvasParade(@RequestParam(value = "fileId") int fileId,
                                         @RequestParam(value = "pointX2") double pointX2,
                                         @RequestParam(value = "pointY2") double pointY2,
                                         @RequestParam(value = "zoom2") double zoom2
    ){
//        System.out.println(pointX2);
//        System.out.println(pointY2);
//        System.out.println(zoom2);
        return operatorService.updateZoom2PointX2PointY2(fileId, zoom2,pointX2, pointY2);
    }

    @PutMapping("/updateCanvasPosition")
    public ResponseVO updateCanvasPosition(@RequestParam(value = "fileId") int fileId,
                                           @RequestParam(value = "pointX") double pointX,
                                           @RequestParam(value = "pointY") double pointY,
                                           @RequestParam(value = "zoom") double zoom
    ) {
        operatorService.updateFileZoom(fileId, zoom);
        operatorService.updateFilePointX(fileId, pointX);
        return operatorService.updateFilePointY(fileId, pointY);
    }


    //PS:我在OperatorService里已经写好了一次性更新整个实体/关系的updateEntity、updateRelation，可以把上面那两个改了


}