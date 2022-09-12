package com.example.coin.data.exporter;

import com.example.coin.po.Entity;
import com.example.coin.po.Relation;
import com.example.coin.po.SourceFile;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface ExporterMapper {
    //获取某文件所有Entity
    List<Entity> getFileEntities(@Param("fileId") int fileId);

    //获取某文件所有Relation
    List<Relation> getFileRelations(@Param("fileId") int fileId);

    SourceFile getFileById(int fileId);
}
