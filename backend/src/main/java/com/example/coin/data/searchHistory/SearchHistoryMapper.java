package com.example.coin.data.searchHistory;

import com.example.coin.po.SearchHistory;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface SearchHistoryMapper {
    //添加一条搜索记录
    int addSearchHistory(SearchHistory searchHistory);

    //返回某文件的最后10条搜索记录
    List<SearchHistory> getLast10SearchHistoriesByFileId(int fileId);

    //删除一条搜索记录
    int deleteSearchHistory(@Param("searchHistoryId") int searchHistoryId);

    //获得最大的搜索记录id
    int getMaxSearchHistoryId();
}
