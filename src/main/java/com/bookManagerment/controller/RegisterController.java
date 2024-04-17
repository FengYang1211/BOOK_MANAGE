package com.bookManagerment.controller;

import com.bookManagerment.entity.Reader;
import com.bookManagerment.service.ReaderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RequestMapping("register")
@RestController
public class RegisterController {

    @Autowired
    private ReaderService readerService;

    //鐢ㄦ埛鍚嶆槸鍚﹀瓨鍦?
    @PostMapping("/account/{accountName}")
    @ResponseBody
    public ResponseEntity<Void> accountName(@PathVariable("accountName") String accountName){
        readerService.accountNameExist(accountName);
        return ResponseEntity.ok().build();
    }

    //鐢ㄦ埛娉ㄥ唽
    @PostMapping
    @ResponseBody
    public ResponseEntity<Void> registerReader(@RequestBody Reader reader){
        reader.builderReader();
        readerService.saveReader(reader);
        return ResponseEntity.ok().build();
    }

    //鍙戦€侀偖绠遍獙璇佺爜
    @PostMapping("/verifyMailCode/{account}/{email}")
    @ResponseBody
    public ResponseEntity<Void> verifyMailCode(@PathVariable("account") String account,
                                               @PathVariable("email") String email){
        readerService.verifyMailCode(account,email);
        return ResponseEntity.ok().build();
    }

}
