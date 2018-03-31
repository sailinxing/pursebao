package com.pursebao.manager.dao;

import com.pursebao.commons.pojo.po.LoanStatus;
import com.pursebao.commons.pojo.po.LoanStatusExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface LoanStatusMapper {
    long countByExample(LoanStatusExample example);

    int deleteByExample(LoanStatusExample example);

    int deleteByPrimaryKey(String repaymentId);

    int insert(LoanStatus record);

    int insertSelective(LoanStatus record);

    List<LoanStatus> selectByExample(LoanStatusExample example);

    LoanStatus selectByPrimaryKey(String repaymentId);

    int updateByExampleSelective(@Param("record") LoanStatus record, @Param("example") LoanStatusExample example);

    int updateByExample(@Param("record") LoanStatus record, @Param("example") LoanStatusExample example);

    int updateByPrimaryKeySelective(LoanStatus record);

    int updateByPrimaryKey(LoanStatus record);
}