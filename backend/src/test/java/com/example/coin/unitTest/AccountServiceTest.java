package com.example.coin.unitTest;

import com.example.coin.CoinApplication;
import com.example.coin.bl.user.AccountService;
import com.example.coin.data.user.AccountMapper;
import com.example.coin.po.Account;
import com.example.coin.vo.AccountForm;
import com.example.coin.vo.ResponseVO;
import com.example.coin.vo.UserInfo;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@SpringBootTest(classes = CoinApplication.class,webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@RunWith(SpringJUnit4ClassRunner.class)
public class AccountServiceTest {
    @Autowired
    AccountService accountService;
    @MockBean
    AccountMapper accountMapper;

    @Test
    public void testLogin(){
        Account res=new Account("admin","123456","123@qq.com","","admin");
        Mockito.when(accountMapper.getAccountByUserName("admin")).thenReturn(res);
        ResponseVO responseVO=accountService.login(new AccountForm("admin","123456"));
        UserInfo userInfo=(UserInfo)responseVO.getContent();
        Assert.assertEquals("admin",userInfo.getUserName());
        Assert.assertEquals("123@qq.com",userInfo.getEmail());
    }

    @Test
    public void testRegister(){
        AccountForm accountForm=new AccountForm("yyj","123456","yyj@qq.com","");
        Mockito.when(accountMapper.getAccountByUserName("yyj")).thenReturn(null);
        Account account=new Account("yyj","123456","yyj@qq.com","","user");
        Mockito.when(accountMapper.addAccount(account)).thenReturn(0);
        Assert.assertEquals(0,(int)accountService.register(accountForm).getContent());
    }
}
