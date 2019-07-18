package com.bdqn.bbh.mapper;

import com.bdqn.bbh.entity.User;
import com.bdqn.bbh.util.QueryCondition;


import java.util.List;

public interface UserMapper {

    List <User> findByCondition(QueryCondition condition);

    User selectByPrimaryKey(Integer id);

    List<User> findStudentById(Integer id, Integer payId);

    User selectByNamePass(User user);

    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}