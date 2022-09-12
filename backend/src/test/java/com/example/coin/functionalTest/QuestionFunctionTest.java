package com.example.coin.functionalTest;

import com.example.coin.TmallApplicationTest;
import com.example.coin.bl.question.QuestionService;
import com.example.coin.vo.Edge;
import com.example.coin.vo.Node;
import com.example.coin.vo.ResultVO;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

/**
 * Questiton的功能测试
 */
public class QuestionFunctionTest extends TmallApplicationTest {
    @Autowired
    QuestionService questionService;

    @Test
    public void testQuestionAndAnswer() {
        List<String> questions = new ArrayList<String>();
        questions.add("美宝莲轻雾唇釉01的色系是什么？");
        questions.add("美宝莲轻雾唇釉01的价格是多少？");
        questions.add("美宝莲轻雾唇釉01的色系和产地是什么？");
        questions.add("豆沙色的美宝莲唇釉有哪些？");
        questions.add("烂番茄色的MAC口红有哪些？");
        questions.add("颜色复古的MAC口红有哪些？");
        questions.add("豆沙色或正红色的纪梵希口红有哪些？");
        questions.add("豆沙色的口红和染唇液有哪些？");
        questions.add("豆沙的法国产的纪梵希口红有哪些？");
        questions.add("和colorkeytokidoki唇釉戏梦伊甸园色系相同的美宝莲唇釉有哪些？");
        questions.add("价格150元左右的MAC口红有哪些？");
        questions.add("150元左右的MAC口红有哪些？");
        questions.add("美宝莲轻雾唇釉01的妆效怎样？");
        questions.add("MAC经典子弹头一打康乃馨的色系是什么？");
        questions.add("MAC口红的产地有哪些？");
        questions.add("MAC有哪些唇釉？");
        questions.add("和YSL细管N204价格类似的纪梵希口红有哪些？");
        questions.add("哑光的MAC口红有哪些？");
        questions.add("和YSL细管N204价格类似的哑光的纪梵希口红有哪些？");
        questions.add("和YSL细管N204妆效相同的MAC口红有哪些？");
        questions.add("颜色自然的colorkey唇釉有哪些？");
        questions.add("质地润泽的MAC口红有哪些？");
        questions.add("美国产的卡姿兰口红有哪些？");
        questions.add("colorkey丝绒唇釉漫雾红莓的色号是多少？");
        questions.add("卡姿兰甜吻唇釉AM18的价格是多少？");
        questions.add("介绍一下colorkey丝绒唇釉人间樱桃、YSL圆管12");
        questions.add("介绍一下colorkey丝绒唇釉人间樱桃和YSL圆管12");
        questions.add("介绍一下colorkey丝绒唇釉人间樱桃、YSL圆管12和YSL方管N°1");
        questions.add("介绍一下你自己");
        for (String question : questions) {
            System.out.println(question);
            ResultVO resultVO = questionService.QuestionAndAnswer(question);
            System.out.println("resultVO结果:" + resultVO.getResult());
            System.out.print("resultVO图节点:");
            for (Node node : resultVO.getGraphInfo().getNodes()) {
                System.out.print("ID:" + node.getId() + ",label:" + node.getLabel() + " ");
            }
            System.out.print("\n边:");
            for (Edge edge : resultVO.getGraphInfo().getEdges()) {
                System.out.print(edge.getSource() + "-" + edge.getTarget() + " ");
            }
            System.out.println("\n\n");
        }

    }
}
