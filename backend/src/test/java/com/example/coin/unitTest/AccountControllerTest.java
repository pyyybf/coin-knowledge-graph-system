package com.example.coin.unitTest;

import com.example.coin.bl.user.AccountService;
import com.example.coin.controller.user.AccountController;
import com.example.coin.po.Account;
import com.example.coin.vo.AccountForm;
import com.example.coin.vo.ResponseVO;
import com.example.coin.vo.UserInfo;
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
public class AccountControllerTest {
    MockMvc mockMvc;
    @Autowired
    WebApplicationContext webApplicationContext;
    @Autowired
    AccountController accountController;
    @MockBean
    AccountService accountService;

    @Before
    public void setup(){
        mockMvc= MockMvcBuilders.standaloneSetup(accountController).build();
        //用这个也可以：mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
    }

    @Test
    public void testLogin() throws Exception {
        AccountForm accountForm = new AccountForm("admin", "123456");
        Account res=new Account("admin","123456","123@qq.com","","admin");
        Mockito.when(accountService.login(accountForm)).thenReturn(ResponseVO.buildSuccess(new UserInfo(res.getId(), res.getUserName(), res.getEmail(), res.getAvatar(), res.getAccountType())));
        mockMvc.perform(MockMvcRequestBuilders
                .get("/api/user/login")
                .accept(MediaType.APPLICATION_JSON_UTF8_VALUE)
                .param("userName","admin")
                .param("password","123456"))
                .andDo(MockMvcResultHandlers.print())
                .andExpect(MockMvcResultMatchers.status().isOk());
    }

    @Test
    public void testRegister() throws Exception{
        AccountForm accountForm = new AccountForm("yyj", "123456","yyj@qq.com","");
        Account account = new Account(accountForm.getUserName(), accountForm.getPassword(), accountForm.getEmail(), accountForm.getAvatar(), "user");
        Mockito.when(accountService.register(accountForm)).thenReturn(ResponseVO.buildSuccess(0));
        mockMvc.perform(MockMvcRequestBuilders
                .post("/api/user/register")
                .accept(MediaType.APPLICATION_JSON_UTF8_VALUE)
                .param("userName","yyj")
                .param("password","123456")
                .param("email","yyj@qq.com")
                .param("avatar",""))
                .andDo(MockMvcResultHandlers.print())
                .andExpect(MockMvcResultMatchers.status().isOk());
    }
}
