package com.pursebao.manager.dao;


import com.pursebao.manager.pojo.vo.LoanChild;
import com.pursebao.manager.pojo.vo.ProductChild;

public interface LoanSelfMapper {


    LoanChild selectByPrimaryKey(String lid);

    /**
     * 跟新借款期限、还款方式
     * @param editproduct
     */
    void updateLoanByFK(ProductChild editproduct);


}