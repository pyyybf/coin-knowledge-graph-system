package com.example.coin.integrationTest;

import com.example.coin.controller.question.QuestionController;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import java.util.ArrayList;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
@WebAppConfiguration
public class QuestionIntegrationTest {
    MockMvc mockMvc;
    @Autowired
    WebApplicationContext webApplicationContext;
    @Autowired
    QuestionController questionController;

    @Before
    public void setup(){
        mockMvc= MockMvcBuilders.standaloneSetup(questionController).build();
        //用这个也可以：mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
    }

    @Test
    public void testQuestionAndAnswer() throws Exception {
        List<String> questions = new ArrayList<String>();;
        questions.add("MAC经典子弹头一打康乃馨的色系和产地是什么？");
        questions.add("豆沙色或正红色的纪梵希口红有哪些？");
        questions.add("豆沙色的口红和染唇液有哪些？");
        questions.add("豆沙的法国产的纪梵希口红有哪些？");
        questions.add("和colorkeytokidoki唇釉戏梦伊甸园色系相同的美宝莲唇釉有哪些？");
        questions.add("价格150元左右的MAC口红有哪些？");
        questions.add("150元左右的MAC口红有哪些？");
        questions.add("美宝莲轻雾唇釉01的妆效怎样？");
        questions.add("MAC口红的产地有哪些？");
        questions.add("MAC有哪些唇釉？");
        questions.add("和YSL细管N204价格类似的纪梵希口红有哪些？");
        questions.add("和YSL细管N204价格类似的哑光的纪梵希口红有哪些？");
        questions.add("和YSL细管N204妆效相同的MAC口红有哪些？");
        questions.add("质地润泽的MAC口红有哪些？");
        questions.add("colorkey丝绒唇釉漫雾红莓的色号是多少？");
        questions.add("卡姿兰甜吻唇釉AM18的价格是多少？");
        questions.add("介绍一下colorkey丝绒唇釉人间樱桃、YSL圆管12和YSL方管N°1");
        questions.add("介绍一下你自己");
        for(String question:questions) {
            mockMvc.perform(MockMvcRequestBuilders
                    .get("/api/question/getAnswer")
                    .accept(MediaType.APPLICATION_JSON_UTF8_VALUE)
                    .param("question", question))
                    .andExpect(MockMvcResultMatchers.status().isOk())
                    .andDo(MockMvcResultHandlers.print());
        }
    }
}
