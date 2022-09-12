package com.example.coin.unitTest;

import com.example.coin.bl.question.QuestionService;
import com.example.coin.controller.question.QuestionController;
import com.example.coin.vo.ResultVO;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

@RunWith(SpringRunner.class)
@SpringBootTest
@WebAppConfiguration
public class QuestionControllerTest {
    MockMvc mockMvc;
    @Autowired
    WebApplicationContext webApplicationContext;
    @Autowired
    QuestionController questionController;
    @MockBean
    QuestionService questionService;

    @Before
    public void setup(){
        mockMvc= MockMvcBuilders.standaloneSetup(questionController).build();
        //用这个也可以：mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
    }

    /**
     * 测试QuestionController.getAnswer方法
     */
    @Test
    public void testGetAnswer() throws Exception{
        ResultVO resultVO=new ResultVO();
        Mockito.when(questionService.QuestionAndAnswer("美宝莲轻雾唇釉01的色系是什么？")).thenReturn(resultVO);
        mockMvc.perform(MockMvcRequestBuilders
                .get("/api/question/getAnswer")
                .accept(MediaType.APPLICATION_JSON_UTF8_VALUE)
                .param("question","美宝莲轻雾唇釉01的色系是什么？"))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andDo(MockMvcResultHandlers.print());
    }

}
