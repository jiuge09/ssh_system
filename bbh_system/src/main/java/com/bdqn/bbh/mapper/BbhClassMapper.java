package com.bdqn.bbh.mapper;

import com.bdqn.bbh.entity.BbhClass;


import java.util.List;

public interface BbhClassMapper {
    /**
     * 查询
     * @param bbh
     * @return
     */
    List<BbhClass> bbhlist(BbhClass bbh);

    /**
     * 查询所有
     * @return
     */
    List<BbhClass> classList();

    /**
     * 根据编号删除
     * @param id
     * @return
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * 添加班级
     * @param bbh
     * @return
     */
    int insert(BbhClass bbh);

    int insertSelective(BbhClass record);

    BbhClass selectByPrimaryKey(Integer id);


    int updateByPrimaryKeySelective(BbhClass record);

    int updateByPrimaryKey(BbhClass bbh);

    BbhClass selectByname(String classname);
}