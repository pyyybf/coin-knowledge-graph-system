package com.example.coin.functionalTest;

import com.example.coin.CoinApplication;
import com.example.coin.blImpl.question.AnswerFinder;
import com.example.coin.blImpl.question.QGItem;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;

/**
 * 专门测试AnswerFinder的功能
 */
@SpringBootTest(classes = CoinApplication.class,webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@RunWith(SpringJUnit4ClassRunner.class)
public class AnswerFinderTest {
    @Autowired
    AnswerFinder answerFinder;

    @Test
    public void test1(){
        //AnswerFinder answerFinder=new AnswerFinder();
        QGItem item1=new QGItem(1, QGItem.QGItemType.valueOf("question"),"什么");
        QGItem item2=new QGItem(2, QGItem.QGItemType.valueOf("column"),"色系");
        QGItem item3=new QGItem(3, QGItem.QGItemType.valueOf("attr"),"美宝莲轻雾唇釉01");
        item1.addChild(item2);
        item2.addChild(item3);
        ArrayList<QGItem> DFSResult=new ArrayList<>();
        DFSResult.add(item1);
        DFSResult.add(item2);
        DFSResult.add(item3);
        answerFinder.setDFSResult(DFSResult);
        answerFinder.findAnswer();
    }
}
