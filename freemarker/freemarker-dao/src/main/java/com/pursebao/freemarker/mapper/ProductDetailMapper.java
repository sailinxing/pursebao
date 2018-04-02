package com.pursebao.freemarker.mapper;


import com.pursebao.freemarker.pojo.vo.ProductDetail;



public interface ProductDetailMapper {
    ProductDetail selectProductById(String pid);
}