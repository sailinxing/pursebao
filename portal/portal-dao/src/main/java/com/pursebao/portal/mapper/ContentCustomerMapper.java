package com.pursebao.portal.mapper;


import com.pursebao.commons.pojo.po.Loan;
import com.pursebao.commons.pojo.po.Products;
import com.pursebao.portal.pojo.vo.ProductCustomer;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ContentCustomerMapper {
    List<Loan> selectAllLoanContent(@Param("offset") Integer offset, @Param("limit") Integer limit);
    ProductCustomer selectRateProduct();
    ProductCustomer selectTimeProduct();
}