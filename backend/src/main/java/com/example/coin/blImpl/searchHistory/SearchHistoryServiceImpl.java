package com.example.coin.blImpl.searchHistory;

import com.example.coin.bl.searchHistory.SearchHistoryService;
import com.example.coin.data.searchHistory.SearchHistoryMapper;
import com.example.coin.po.SearchHistory;
import com.example.coin.vo.ResponseVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SearchHistoryServiceImpl implements SearchHistoryService {
    @Autowired
    SearchHistoryMapper searchHistoryMapper;

    @Override
    public int addSearchHistory(SearchHistory searchHistory) {
        int result = -1;
        try {
            searchHistoryMapper.addSearchHistory(searchHistory);
            result = searchHistoryMapper.getMaxSearchHistoryId();
        } catch (Exception e) {
            System.out.println("搜索失败！");
        }
        return result;
    }

    @Override
    public List<SearchHistory> getLast10SearchHistoriesByFileId(int fileId) {
        System.out.println(fileId);
        List<SearchHistory> result = searchHistoryMapper.getLast10SearchHistoriesByFileId(fileId);
        System.out.println(result.size());
        System.out.println("======打印返回的最多10条搜索记录=====");
        for (int i = 0; i < result.size(); i++) {
            System.out.println("id:" + result.get(i).getId() + ",content:" + result.get(i).getContent());
        }
        return result;
    }

    @Override
    public ResponseVO deleteSearchHistory(int searchHistoryId) {
        try {
            searchHistoryMapper.deleteSearchHistory(searchHistoryId);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return ResponseVO.buildFailure("删除搜索记录失败！");
        }
        return ResponseVO.buildSuccess(true);
    }
}

