package com.example.coin.controller.user;

import com.example.coin.bl.user.AccountService;
import com.example.coin.vo.AccountForm;
import com.example.coin.vo.ResponseVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @Author: panyue
 * @Date: 2021-05-26
 */
@RestController()
@RequestMapping("/api/user")
public class AccountController {
    @Autowired
    AccountService accountService;

    @GetMapping("/login")
    public ResponseVO login(@RequestParam(value = "email") String email, @RequestParam(value = "password") String password) {
        AccountForm accountForm = new AccountForm(email, password);
        return accountService.login(accountForm);
    }

    @PostMapping("/register")
    public ResponseVO register(@RequestParam(value = "userName") String userName, @RequestParam(value = "password") String password, @RequestParam(value = "email") String email, @RequestParam(value = "avatar") String avatar) {
        AccountForm accountForm = new AccountForm(userName, password, email, avatar);
        return accountService.register(accountForm);
    }

    @GetMapping("/getUserInfo")
    public ResponseVO getUserInfoById(@RequestParam(value = "userId") int userId) {
        return ResponseVO.buildSuccess(accountService.getUserInfoById(userId));
    }

    @PostMapping("/uploadAvatar")
    public ResponseVO uploadAvatar(@RequestParam(value = "userId") int userId, @RequestParam(value = "avatar") String avatar) {
        accountService.uploadAvatar(userId, avatar);
        return ResponseVO.buildSuccess();
    }

    @PostMapping("/{id}/updateUserInfo")
    public ResponseVO updateUserInfo(@RequestBody AccountForm accountForm, @PathVariable int id) {
        return ResponseVO.buildSuccess(accountService.updateUserInfo(id, accountForm.getUserName(), accountForm.getPassword(), accountForm.getAvatar()));
    }
}
