package com.example.coin.data.reader;

import com.example.coin.po.Entity;
import com.example.coin.po.Relation;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface ReadXMLMapper {
    int addXMLEntity(Entity entity);

    int addXMLRelation(Relation relation);
}
