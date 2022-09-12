package com.example.coin.data.reader;

import com.example.coin.po.Entity;
import com.example.coin.po.SourceFile;
import com.example.coin.po.Relation;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface ReaderMapper {
    //初始化Entity
    int initEntity(Entity entity);

    //初始化Relation
    int initRelation(Relation relation);

    //初始化File
    int initFile(SourceFile file);

    //得到最大的fileId
    int getMaxFileId();

    List<SourceFile> getAllFiles();

    int deleteFileById(int fileId);

    int deleteEntityByFileId(int fileId);

    int deleteRelationByFileId(int fileId);

    //以下是测试时需要的：
    //清空Entity表
    void clearEntityTable();

    //清空Relation表
    void clearRelationTable();

    //清空File表
    void clearFileTable();

}
