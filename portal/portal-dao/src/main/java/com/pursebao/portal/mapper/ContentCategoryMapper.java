package com.pursebao.portal.mapper;

import com.pursebao.commons.pojo.po.ContentCategory;
import com.pursebao.commons.pojo.po.ContentCategoryExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ContentCategoryMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table content_category
     *
     * @mbggenerated
     */
    int countByExample(ContentCategoryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table content_category
     *
     * @mbggenerated
     */
    int deleteByExample(ContentCategoryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table content_category
     *
     * @mbggenerated
     */
    int insert(ContentCategory record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table content_category
     *
     * @mbggenerated
     */
    int insertSelective(ContentCategory record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table content_category
     *
     * @mbggenerated
     */
    List<ContentCategory> selectByExample(ContentCategoryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table content_category
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") ContentCategory record, @Param("example") ContentCategoryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table content_category
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") ContentCategory record, @Param("example") ContentCategoryExample example);
}