package com.pursebao.manager.dao;

import com.pursebao.manager.pojo.dto.MXDPageBean;
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
    public List<ProductChild> selectProducts(MXDPageBean pagebean);

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

    /**
     * 修改产品上下线状态
     * @param productChild
     */
    void updateProductStatus(ProductChild productChild);

    /**
     * 获得所有上线产品的数量
     * @return
     */
    int getCountbnumber();

    /**
     * 按条件查询所有投资产品信息
     * @param pagebean
     * @return
     */
    List<ProductChild> selectProductsByCondition(MXDPageBean pagebean);

    /**
     *  按条件查询所有上线产品总数
     * @param pagebean
     * @return
     */
    int getCountbnumberByCondition(MXDPageBean pagebean);
}
