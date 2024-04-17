package com.bookManagerment.service;

import com.bookManagerment.entity.BookType;
import com.bookManagerment.entity.Books;
import com.bookManagerment.entity.Reader;
import com.bookManagerment.enums.ExceptionEnum;
import com.bookManagerment.exception.LyException;
import com.bookManagerment.mapper.ReaderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

@Service
public class UserInfoService {

    @Autowired
    private ReaderMapper readerMapper;


    //获取用户
    public List<Reader> userInfoListAll(){
        List<Reader> list = readerMapper.selectAll();
        if(CollectionUtils.isEmpty(list)){  //图书类别不存在
            throw new LyException(ExceptionEnum.BOOK_TYPE_NOT_FOUND);
        }
        return list;
    }

    //获取用户信息
    public List<Reader> userInfoList(){
        Example example = new Example(Reader.class);
        example.createCriteria().andNotEqualTo("rId",1);
        example.orderBy("rId").asc();
        List<Reader> list = readerMapper.selectByExample(example);
        if(CollectionUtils.isEmpty(list)){  //图书类别不存在
            throw new LyException(ExceptionEnum.USER_NOT_FOUND);
        }
        return list;
    }

    //添加用户
    public void addUserInfo(Reader reader) {
        if(existBookName(reader.getAccount())){  //分类名已存在
            throw new LyException(ExceptionEnum.USER_EXIST);
        }
        int i = readerMapper.insertSelective(reader);
        if(i<0){    //添加失败
            throw new LyException(ExceptionEnum.ADD_BOOK_TYPE_FAIL);
        }
    }




    //修改用户信息
    @Transactional
    public void modifyUserInfo(Reader reader) {
        /*if(existBookName(reader.getAccount())){  //用户名称已存在
            throw new LyException(ExceptionEnum.USER_EXIST);
        }*/
        int countBookType = readerMapper.selectCount(new Reader(reader.getAccount().toString()));
        if(countBookType<=0){
            throw new LyException(ExceptionEnum.UPDATE_BOOK_TYPE_FAIL);
        }
        //修改用户信息
        int i = readerMapper.updateByPrimaryKey(reader);
        if(i<0){ //修改失败
            throw new LyException(ExceptionEnum.UPDATE_BOOK_TYPE_FAIL);
        }
    }

    //判断用户是否存在
    private boolean existBookName(String tName){
        return !CollectionUtils.isEmpty(readerMapper.select(new Reader(tName)));
    }

    /*
    删除多个图书分类*/
    @Transactional
    public void deleteBookTypes(List<Integer> ids) {
        for (Integer id : ids) {
            int count = readerMapper.selectCount(new Reader(id));
            if(count<=0){
                throw new LyException(ExceptionEnum.DELETE_BOOK_TYPE_FAIL);
            }
            int i = readerMapper.deleteByPrimaryKey(id);

            if(i<0){ //删除失败
                throw new LyException(ExceptionEnum.DELETE_BOOK_TYPE_FAIL);
            }
        }
    }
}
