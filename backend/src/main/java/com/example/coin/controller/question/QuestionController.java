package com.example.coin.controller.question;

import com.example.coin.bl.question.QuestionService;
import com.example.coin.vo.GraphInfo;
import com.example.coin.vo.ResponseVO;
import com.example.coin.vo.ResultVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author: panyue
 * @Date: 2021-06-09
 */
@RestController()
@RequestMapping("/api/question")
public class QuestionController {
    @Autowired
    QuestionService questionService;

    @GetMapping("/getAnswer")
    public ResultVO getAnswer(@RequestParam(value = "question") String question) {
        try {
            return questionService.QuestionAndAnswer(question);
        }catch (Exception e){
            return ResultVO.buildFailure("对不起，我不明白。");
        }
    }
}
