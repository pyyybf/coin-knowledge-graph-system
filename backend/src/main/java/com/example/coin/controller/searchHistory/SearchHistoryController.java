package com.example.coin.controller.searchHistory;

import com.example.coin.bl.searchHistory.SearchHistoryService;
import com.example.coin.po.SearchHistory;
import com.example.coin.vo.ResponseVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @Author: yangyujia
 * @Date: 2021-04-04
 */
@RestController()
@RequestMapping("/api/searchHistory")
public class SearchHistoryController {

    @Autowired
    SearchHistoryService searchHistoryService;

    @GetMapping("/getSearchHistory")
    public ResponseVO getSearchHistory(@RequestParam(value = "fileId") int fileId) {
        return ResponseVO.buildSuccess(searchHistoryService.getLast10SearchHistoriesByFileId(fileId));
    }

    @PostMapping("/addSearch")
    public ResponseVO addSearch(@RequestParam(value = "fileId") int fileId,
                                @RequestParam(value = "searchText") String searchText
    ) {
        return ResponseVO.buildSuccess(searchHistoryService.addSearchHistory(new SearchHistory(fileId, searchText)));
    }

    @DeleteMapping("/deleteSearchHistory")
    public ResponseVO deleteSearch(@RequestParam(value = "searchId") int searchId) {
        return searchHistoryService.deleteSearchHistory(searchId);
    }
}
