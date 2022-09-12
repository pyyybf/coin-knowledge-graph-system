package com.example.coin.integration;

import com.example.coin.controller.collect.CollectController;
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
public class CollectIntegrationTest {
    MockMvc mockMvc;
    @Autowired
    WebApplicationContext webApplicationContext;
    @Autowired
    CollectController collectController;

    @Before
    public void setup(){
        mockMvc= MockMvcBuilders.standaloneSetup(collectController).build();
        //用这个也可以：mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
    }

    @Test
    public void testGetCollectedCommodityIdListByUserId() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders
                .get("/api/collect/getCollectedCommodityIdListByUserId")
                .accept(MediaType.APPLICATION_JSON_UTF8_VALUE)
                .param("userId","2"))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andDo(MockMvcResultHandlers.print());
    }

    @Test
    public void testGetNewestCollectedCommodityListByUserId() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders
                .get("/api/collect/getNewestCollectedCommodityListByUserId")
                .accept(MediaType.APPLICATION_JSON_UTF8_VALUE)
                .param("userId","2"))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andDo(MockMvcResultHandlers.print());
    }

    @Test
    public void testGetCollectedCommodityListByUserId() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders
                .get("/api/collect/getCollectedCommodityListByUserId")
                .accept(MediaType.APPLICATION_JSON_UTF8_VALUE)
                .param("userId","2"))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andDo(MockMvcResultHandlers.print());
    }

    @Test
    public void testGetCollectListByUserId() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders
                .get("/api/collect/getCollectListByUserId")
                .accept(MediaType.APPLICATION_JSON_UTF8_VALUE)
                .param("userId","2"))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andDo(MockMvcResultHandlers.print());
    }
}
