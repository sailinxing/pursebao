package com.pursebao.manager.dao;

import com.pursebao.commons.pojo.po.ComAccount;
import com.pursebao.commons.pojo.po.ComAccountExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ComAccountMapper {
    long countByExample(ComAccountExample example);

    int deleteByExample(ComAccountExample example);

    int deleteByPrimaryKey(String cid);

    int insert(ComAccount record);

    int insertSelective(ComAccount record);

    List<ComAccount> selectByExample(ComAccountExample example);

    ComAccount selectByPrimaryKey(String cid);

    int updateByExampleSelective(@Param("record") ComAccount record, @Param("example") ComAccountExample example);

    int updateByExample(@Param("record") ComAccount record, @Param("example") ComAccountExample example);

    int updateByPrimaryKeySelective(ComAccount record);

    int updateByPrimaryKey(ComAccount record);
}