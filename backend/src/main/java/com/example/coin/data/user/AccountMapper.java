package com.example.coin.data.user;

import com.example.coin.po.Account;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface AccountMapper {
    Account getAccountByUserName(String userName);

    Account getAccountByEmail(String email);

    int addAccount(Account account);

    void uploadAvatar(int userId, String avatar);

    Account getAccountByUserId(int userId);

    int updateAccount(int id, String userName, String password, String avatar);

    int getMaxUserId();

    int deleteUser(String userName);
}
