package com.example.coin.unitTest;

import com.example.coin.CoinApplication;
import com.example.coin.bl.question.QuestionService;
import com.example.coin.blImpl.question.AnswerFinder;
import com.example.coin.data.commodity.CommodityMapper;
import com.example.coin.po.Fuzz;
import com.example.coin.vo.ResultVO;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

@SpringBootTest(classes = CoinApplication.class,webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@RunWith(SpringJUnit4ClassRunner.class)
public class QuestionServiceTest {
    @Autowired
    QuestionService questionService;
    @MockBean
    CommodityMapper commodityMapper;

    @Test
    public void testQuestion2Answer(){
        List<Fuzz> fuzzList=new ArrayList<>();
       Fuzz fuzz=new Fuzz();
       fuzz.setFuzzyWord1("colorkeytokidoki唇釉B628");
       fuzz.setFuzzyWord2("colorkeytokidoki唇釉戏梦伊甸园");
       fuzz.setSqlId("colorkeytokidoki唇釉B628");
       fuzzList.add(fuzz);
        Mockito.when(commodityMapper.getAllFuzzs()).thenReturn(fuzzList);
        ResultVO resultVO=questionService.QuestionAndAnswer("colorkeytokidoki唇釉戏梦伊甸园的色系是多少？");
        Assert.assertEquals(resultVO.getResult().toString()," 色系是草莓");
    }

}
