package com.pursebao.manager.dao;

import com.pursebao.manager.pojo.vo.ProductChild;

import java.util.List;

public interface ProductsSelfMapper {
   /* *//**
     * 关联查询出所有的投资产品
     *//*
    List<ProductChild> listInvestBypage(PageBean pagebean);

    *//**
     * 根据Id关联查询出某个投资产品所有信息
     *//*
    ProductChild selectInvestById(String pid);

    *//**
     * 查询所有投资产品数量
     *//*
    int countNumber();

    *//**
     * 修改单个产品的剩余可投金额
     *//*
    public void decSurplusMoney(InvestOrders order);*/

    /**
     * 后台展示所有上线产品
     * @return
     */
    public List<ProductChild> selectProducts();

    /**
     * 删除投资产品
     * @param pid
     */
    void deleteProductById(String pid);

    /**
     * 下线投资产品
     * @param pid
     */
    void updateProductLine(String pid);

    /**
     * 查询单个产品信息，回显编辑页面
     * @param pid
     * @return
     */
    ProductChild selectProductByPid(String pid);

    /**
     * 更新投资产品信息
     * @param editproduct
     */
    void updateProductById(ProductChild editproduct);
}
