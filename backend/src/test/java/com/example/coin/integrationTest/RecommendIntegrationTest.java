package com.example.coin.integration;


import com.example.coin.bl.recommend.RecommendService;
import com.example.coin.controller.recommend.RecommendController;
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

@RunWith(SpringRunner.class)
@SpringBootTest
@WebAppConfiguration
public class RecommendIntegrationTest {
    MockMvc mockMvc;
    @Autowired
    WebApplicationContext webApplicationContext;
    @Autowired
    RecommendController recommendController;

    @Before
    public void setup(){
        mockMvc= MockMvcBuilders.standaloneSetup(recommendController).build();
        //用这个也可以：mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
    }

    @Test
    public void testGetUserRecommend() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders
                .get("/api/recommend/getUserRecommend")
                .accept(MediaType.APPLICATION_JSON_UTF8_VALUE)
                .param("userId","2"))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andDo(MockMvcResultHandlers.print());
    }

    @Test
    public void testCommodityRecommend() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders
                .get("/api/recommend/getCommodityRecommend")
                .accept(MediaType.APPLICATION_JSON_UTF8_VALUE)
                .param("commodityId","2"))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andDo(MockMvcResultHandlers.print());
    }

    @Test
    public void testPopularRecommend() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders
                .get("/api/recommend/getPopularRecommend")
                .accept(MediaType.APPLICATION_JSON_UTF8_VALUE))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andDo(MockMvcResultHandlers.print());
    }
}
