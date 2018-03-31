package com.pursebao.manager.dao;

import com.pursebao.commons.pojo.po.InvestOrders;
import com.pursebao.commons.pojo.po.InvestOrdersExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface InvestOrdersMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table invest_orders
     *
     * @mbggenerated
     */
    int countByExample(InvestOrdersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table invest_orders
     *
     * @mbggenerated
     */
    int deleteByExample(InvestOrdersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table invest_orders
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String oid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table invest_orders
     *
     * @mbggenerated
     */
    int insert(InvestOrders record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table invest_orders
     *
     * @mbggenerated
     */
    int insertSelective(InvestOrders record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table invest_orders
     *
     * @mbggenerated
     */
    List<InvestOrders> selectByExample(InvestOrdersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table invest_orders
     *
     * @mbggenerated
     */
    InvestOrders selectByPrimaryKey(String oid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table invest_orders
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") InvestOrders record, @Param("example") InvestOrdersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table invest_orders
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") InvestOrders record, @Param("example") InvestOrdersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table invest_orders
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(InvestOrders record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table invest_orders
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(InvestOrders record);
}