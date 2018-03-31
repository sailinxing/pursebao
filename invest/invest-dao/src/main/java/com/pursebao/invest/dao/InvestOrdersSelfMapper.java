package com.pursebao.invest.dao;

import com.pursebao.invest.pojo.vo.InvestOrdersChild;

import java.util.List;
import java.util.Map;

public interface InvestOrdersSelfMapper extends InvestOrdersMapper {

    /**
     * 查寻某个产品被投资的记录
     * @param pid
     * @return
     */
    List<InvestOrdersChild> selectByPid(String pid);

    /**
     * 分页查询单个产品投资记录
     * @param map
     * @return
     */
    List<InvestOrdersChild> selectRecodeByPage(Map<String, Object> map);

    /**
     * 查询投资记录的总条数
     */
    int countNumber(String pid);

}