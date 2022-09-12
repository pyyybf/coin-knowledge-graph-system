package com.example.coin.functionalTest;

import com.example.coin.TmallApplicationTest;
import com.example.coin.bl.user.AccountService;
import com.example.coin.vo.AccountForm;
import com.example.coin.vo.ResponseVO;
import com.example.coin.vo.UserInfo;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class AccountFunctionTest extends TmallApplicationTest {
    @Autowired
    AccountService accountService;

    @Test
    public void testLogin(){
        AccountForm accountForm=new AccountForm("admin","123456");
        ResponseVO result=accountService.login(accountForm);
        UserInfo userInfo=(UserInfo) result.getContent();
        Assert.assertEquals(1,userInfo.getId());
        Assert.assertEquals("admin",userInfo.getUserName());
        Assert.assertEquals("123@qq.com",userInfo.getEmail());
        Assert.assertEquals("admin",userInfo.getAccountType());
    }

    @Test
    public void testRegister(){
        int maxId=accountService.getMaxUserId();
        AccountForm accountForm=new AccountForm("yyjjjjjjjjj","123456","yyj@qq.com","");
        accountService.register(accountForm);
        accountService.deleteUser("yyjjjjjjjjj");
        Assert.assertEquals(maxId,accountService.getMaxUserId());
    }

}
