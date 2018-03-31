package com.pursebao.manager.dao;

import com.pursebao.commons.pojo.po.Loan;
import com.pursebao.commons.pojo.po.LoanExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface LoanMapper {
    long countByExample(LoanExample example);

    int deleteByExample(LoanExample example);

    int deleteByPrimaryKey(String lid);

    int insert(Loan record);

    int insertSelective(Loan record);

    List<Loan> selectByExample(LoanExample example);

    Loan selectByPrimaryKey(String lid);

    int updateByExampleSelective(@Param("record") Loan record, @Param("example") LoanExample example);

    int updateByExample(@Param("record") Loan record, @Param("example") LoanExample example);

    int updateByPrimaryKeySelective(Loan record);

    int updateByPrimaryKey(Loan record);
}