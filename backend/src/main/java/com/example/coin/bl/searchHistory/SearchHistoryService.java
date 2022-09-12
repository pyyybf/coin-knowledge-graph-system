package com.example.coin.bl.searchHistory;

import com.example.coin.po.SearchHistory;
import com.example.coin.vo.ResponseVO;

import java.util.List;

/**
 * @Author: yangyujia
 * @Date: 2021-04-04
 * 搜索相关
 */
public interface SearchHistoryService {
    /**
    * 添加一条搜索记录
    * @param searchHistory
    * @return
    */
    int addSearchHistory(SearchHistory searchHistory);

    /**
     * 返回某个文件的最近10条搜索记录
     * @param fileId
     * @return
     */
    List<SearchHistory> getLast10SearchHistoriesByFileId(int fileId);

    /**
     * 删除一条搜索记录
     * @param searchHistoryId
     * @return
     */
    ResponseVO deleteSearchHistory(int searchHistoryId);
}
