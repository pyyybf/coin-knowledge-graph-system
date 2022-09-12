package com.example.coin.bl.user;

import com.example.coin.vo.AccountForm;
import com.example.coin.vo.ResponseVO;
import com.example.coin.vo.UserInfo;

import java.util.List;

/**
 * @Author: panyue
 * @Date: 2021-05-26
 * 登录注册
 */
public interface AccountService {
    /**
     * 登录
     *
     * @param accountForm
     * @return
     */
    ResponseVO login(AccountForm accountForm);

    /**
     * 注册
     *
     * @param accountForm
     * @return
     */
    ResponseVO register(AccountForm accountForm);

    /**
     * 上传头像
     *
     * @param userId
     * @param avatar
     * @return
     */
    void uploadAvatar(int userId, String avatar);

    /**
     * 获取用户信息
     *
     * @param userId
     * @return
     */
    UserInfo getUserInfoById(int userId);

    int updateUserInfo(int id, String userName, String password, String avatar);


    int getMaxUserId();

    int deleteUser(String userName);

}
