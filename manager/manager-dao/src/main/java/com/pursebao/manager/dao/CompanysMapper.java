package com.pursebao.manager.dao;

import com.pursebao.commons.pojo.po.Companys;
import com.pursebao.commons.pojo.po.CompanysExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CompanysMapper {
    long countByExample(CompanysExample example);

    int deleteByExample(CompanysExample example);

    int deleteByPrimaryKey(String cid);

    int insert(Companys record);

    int insertSelective(Companys record);

    List<Companys> selectByExample(CompanysExample example);

    Companys selectByPrimaryKey(String cid);

    int updateByExampleSelective(@Param("record") Companys record, @Param("example") CompanysExample example);

    int updateByExample(@Param("record") Companys record, @Param("example") CompanysExample example);

    int updateByPrimaryKeySelective(Companys record);

    int updateByPrimaryKey(Companys record);
}