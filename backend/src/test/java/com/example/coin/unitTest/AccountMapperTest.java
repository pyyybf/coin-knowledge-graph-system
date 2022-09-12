package com.example.coin.unitTest;

import com.example.coin.TmallApplicationTest;
import com.example.coin.data.user.AccountMapper;
import com.example.coin.po.Account;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class AccountMapperTest extends TmallApplicationTest {
    @Autowired
    AccountMapper accountMapper;

    @Test
    public void testGetAccountByUserName(){
        Account account=accountMapper.getAccountByUserName("admin");
        Assert.assertEquals(account.getUserName(),"admin");
        Assert.assertEquals(account.getPassword(),"123456");
        Assert.assertEquals(account.getEmail(),"123@qq.com");
        Assert.assertEquals(account.getAccountType(),"admin");
    }
}
