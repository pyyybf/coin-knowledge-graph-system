package com.example.coin.blImpl.user;

import com.example.coin.bl.user.AccountService;
import com.example.coin.data.user.AccountMapper;
import com.example.coin.po.Account;
import com.example.coin.vo.AccountForm;
import com.example.coin.vo.ResponseVO;
import com.example.coin.vo.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccountServiceImpl implements AccountService {
    private final static String ACCOUNT_EXIST = "账号已存在";
    private final static String ACCOUNT_NOT_EXIST = "账号不存在";
    private final static String WRONG_PSW = "密码错误";

    @Autowired
    AccountMapper accountMapper;

    @Override
    public ResponseVO login(AccountForm accountForm) {
        Account res = accountMapper.getAccountByEmail(accountForm.getEmail());
        if (res == null) {
            return ResponseVO.buildFailure(ACCOUNT_NOT_EXIST);
        } else if (!res.getPassword().equals(accountForm.getPassword())) {
            return ResponseVO.buildFailure(WRONG_PSW);
        }
        return ResponseVO.buildSuccess(new UserInfo(res.getId(), res.getUserName(), res.getEmail(), res.getAvatar(), res.getAccountType()));
    }

    @Override
    public ResponseVO register(AccountForm accountForm) {
        if (accountMapper.getAccountByEmail(accountForm.getEmail()) != null) {
            return ResponseVO.buildFailure(ACCOUNT_EXIST);
        }
        Account account = new Account(accountForm.getUserName(), accountForm.getPassword(), accountForm.getEmail(), accountForm.getAvatar(), "user");
        return ResponseVO.buildSuccess(accountMapper.addAccount(account));
    }

    @Override
    public int getMaxUserId() {
        return accountMapper.getMaxUserId();
    }

    @Override
    public int deleteUser(String userName) {
        return accountMapper.deleteUser(userName);
    }

    @Override
    public void uploadAvatar(int userId, String avatar) {
        accountMapper.uploadAvatar(userId, avatar);
    }

    @Override
    public UserInfo getUserInfoById(int userId) {
        Account res = accountMapper.getAccountByUserId(userId);
        return new UserInfo(res.getId(), res.getUserName(), res.getEmail(), res.getAvatar(), res.getAccountType());
    }

    @Override
    public int updateUserInfo(int id, String userName, String password, String avatar) {
        return accountMapper.updateAccount(id, userName, password, avatar);
    }
}

