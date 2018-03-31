package com.pursebao.manager.dao;

import com.pursebao.commons.pojo.po.Invest;
import com.pursebao.commons.pojo.po.InvestExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface InvestMapper {
    long countByExample(InvestExample example);

    int deleteByExample(InvestExample example);

    int deleteByPrimaryKey(String investId);

    int insert(Invest record);

    int insertSelective(Invest record);

    List<Invest> selectByExample(InvestExample example);

    Invest selectByPrimaryKey(String investId);

    int updateByExampleSelective(@Param("record") Invest record, @Param("example") InvestExample example);

    int updateByExample(@Param("record") Invest record, @Param("example") InvestExample example);

    int updateByPrimaryKeySelective(Invest record);

    int updateByPrimaryKey(Invest record);
}