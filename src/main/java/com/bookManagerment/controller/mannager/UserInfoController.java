package com.bookManagerment.controller.mannager;

import com.bookManagerment.entity.Reader;
import com.bookManagerment.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

@RequestMapping("manager/userInfo")
@RestController
public class UserInfoController {

    @Autowired
    private UserInfoService userInfoService;

    //获取图书分类
    @RequestMapping("/list")
    public ResponseEntity<List<Reader>> list(){
        return ResponseEntity.ok(userInfoService.userInfoList());
    }

    //获取图书分类
    @RequestMapping("/all")
    public ResponseEntity<List<Reader>> bookTypeListAll(){
        return ResponseEntity.ok(userInfoService.userInfoListAll());
    }

    //添加图书分类
    @PostMapping("/addBookType")
    public ResponseEntity<Void> addBookType(@RequestBody Reader reader){
        userInfoService.addUserInfo(reader);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }



    //修改一个图书分类
    @PutMapping
    public ResponseEntity<Void> modifyBookType(@RequestBody Reader reader){
        userInfoService.modifyUserInfo(reader);
        return ResponseEntity.ok().build();
    }


    //删除多个图书分类
    @DeleteMapping("/deleteUser")
    public ResponseEntity<Void> deleteUser(@RequestBody List<Integer> ids ){
        userInfoService.deleteBookTypes(ids);
        return ResponseEntity.ok().build();
    }


}
