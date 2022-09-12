package com.example.coin.integration;


import com.example.coin.controller.recommend.RecommendController;
import com.example.coin.controller.similarity.SimilarityController;
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
public class SimilarityIntegrationTest {
    MockMvc mockMvc;
    @Autowired
    WebApplicationContext webApplicationContext;
    @Autowired
    SimilarityController similarityController;

    @Before
    public void setup(){
        mockMvc= MockMvcBuilders.standaloneSetup(similarityController).build();
        //用这个也可以：mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
    }

    @Test
    public void testGetAllSimilarity() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders
                .get("/api/similarity/getAllSimilarity")
                .accept(MediaType.APPLICATION_JSON_UTF8_VALUE)
                .param("commodityId","2")
                .param("similarityType","0"))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andDo(MockMvcResultHandlers.print());
    }

}
