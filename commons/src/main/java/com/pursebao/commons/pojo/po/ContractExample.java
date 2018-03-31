package com.pursebao.commons.pojo.po;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class ContractExample implements Serializable {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table contract
     *
     * @mbggenerated
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table contract
     *
     * @mbggenerated
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table contract
     *
     * @mbggenerated
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table contract
     *
     * @mbggenerated
     */
    public ContractExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table contract
     *
     * @mbggenerated
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table contract
     *
     * @mbggenerated
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table contract
     *
     * @mbggenerated
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table contract
     *
     * @mbggenerated
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table contract
     *
     * @mbggenerated
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table contract
     *
     * @mbggenerated
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table contract
     *
     * @mbggenerated
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table contract
     *
     * @mbggenerated
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table contract
     *
     * @mbggenerated
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table contract
     *
     * @mbggenerated
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table contract
     *
     * @mbggenerated
     */
    protected abstract static class GeneratedCriteria implements Serializable{
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andConIdIsNull() {
            addCriterion("con_id is null");
            return (Criteria) this;
        }

        public Criteria andConIdIsNotNull() {
            addCriterion("con_id is not null");
            return (Criteria) this;
        }

        public Criteria andConIdEqualTo(String value) {
            addCriterion("con_id =", value, "conId");
            return (Criteria) this;
        }

        public Criteria andConIdNotEqualTo(String value) {
            addCriterion("con_id <>", value, "conId");
            return (Criteria) this;
        }

        public Criteria andConIdGreaterThan(String value) {
            addCriterion("con_id >", value, "conId");
            return (Criteria) this;
        }

        public Criteria andConIdGreaterThanOrEqualTo(String value) {
            addCriterion("con_id >=", value, "conId");
            return (Criteria) this;
        }

        public Criteria andConIdLessThan(String value) {
            addCriterion("con_id <", value, "conId");
            return (Criteria) this;
        }

        public Criteria andConIdLessThanOrEqualTo(String value) {
            addCriterion("con_id <=", value, "conId");
            return (Criteria) this;
        }

        public Criteria andConIdLike(String value) {
            addCriterion("con_id like", value, "conId");
            return (Criteria) this;
        }

        public Criteria andConIdNotLike(String value) {
            addCriterion("con_id not like", value, "conId");
            return (Criteria) this;
        }

        public Criteria andConIdIn(List<String> values) {
            addCriterion("con_id in", values, "conId");
            return (Criteria) this;
        }

        public Criteria andConIdNotIn(List<String> values) {
            addCriterion("con_id not in", values, "conId");
            return (Criteria) this;
        }

        public Criteria andConIdBetween(String value1, String value2) {
            addCriterion("con_id between", value1, value2, "conId");
            return (Criteria) this;
        }

        public Criteria andConIdNotBetween(String value1, String value2) {
            addCriterion("con_id not between", value1, value2, "conId");
            return (Criteria) this;
        }

        public Criteria andConNameIsNull() {
            addCriterion("con_name is null");
            return (Criteria) this;
        }

        public Criteria andConNameIsNotNull() {
            addCriterion("con_name is not null");
            return (Criteria) this;
        }

        public Criteria andConNameEqualTo(String value) {
            addCriterion("con_name =", value, "conName");
            return (Criteria) this;
        }

        public Criteria andConNameNotEqualTo(String value) {
            addCriterion("con_name <>", value, "conName");
            return (Criteria) this;
        }

        public Criteria andConNameGreaterThan(String value) {
            addCriterion("con_name >", value, "conName");
            return (Criteria) this;
        }

        public Criteria andConNameGreaterThanOrEqualTo(String value) {
            addCriterion("con_name >=", value, "conName");
            return (Criteria) this;
        }

        public Criteria andConNameLessThan(String value) {
            addCriterion("con_name <", value, "conName");
            return (Criteria) this;
        }

        public Criteria andConNameLessThanOrEqualTo(String value) {
            addCriterion("con_name <=", value, "conName");
            return (Criteria) this;
        }

        public Criteria andConNameLike(String value) {
            addCriterion("con_name like", value, "conName");
            return (Criteria) this;
        }

        public Criteria andConNameNotLike(String value) {
            addCriterion("con_name not like", value, "conName");
            return (Criteria) this;
        }

        public Criteria andConNameIn(List<String> values) {
            addCriterion("con_name in", values, "conName");
            return (Criteria) this;
        }

        public Criteria andConNameNotIn(List<String> values) {
            addCriterion("con_name not in", values, "conName");
            return (Criteria) this;
        }

        public Criteria andConNameBetween(String value1, String value2) {
            addCriterion("con_name between", value1, value2, "conName");
            return (Criteria) this;
        }

        public Criteria andConNameNotBetween(String value1, String value2) {
            addCriterion("con_name not between", value1, value2, "conName");
            return (Criteria) this;
        }

        public Criteria andConBegintimeIsNull() {
            addCriterion("con_begintime is null");
            return (Criteria) this;
        }

        public Criteria andConBegintimeIsNotNull() {
            addCriterion("con_begintime is not null");
            return (Criteria) this;
        }

        public Criteria andConBegintimeEqualTo(Date value) {
            addCriterionForJDBCDate("con_begintime =", value, "conBegintime");
            return (Criteria) this;
        }

        public Criteria andConBegintimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("con_begintime <>", value, "conBegintime");
            return (Criteria) this;
        }

        public Criteria andConBegintimeGreaterThan(Date value) {
            addCriterionForJDBCDate("con_begintime >", value, "conBegintime");
            return (Criteria) this;
        }

        public Criteria andConBegintimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("con_begintime >=", value, "conBegintime");
            return (Criteria) this;
        }

        public Criteria andConBegintimeLessThan(Date value) {
            addCriterionForJDBCDate("con_begintime <", value, "conBegintime");
            return (Criteria) this;
        }

        public Criteria andConBegintimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("con_begintime <=", value, "conBegintime");
            return (Criteria) this;
        }

        public Criteria andConBegintimeIn(List<Date> values) {
            addCriterionForJDBCDate("con_begintime in", values, "conBegintime");
            return (Criteria) this;
        }

        public Criteria andConBegintimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("con_begintime not in", values, "conBegintime");
            return (Criteria) this;
        }

        public Criteria andConBegintimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("con_begintime between", value1, value2, "conBegintime");
            return (Criteria) this;
        }

        public Criteria andConBegintimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("con_begintime not between", value1, value2, "conBegintime");
            return (Criteria) this;
        }

        public Criteria andConEndtimeIsNull() {
            addCriterion("con_endtime is null");
            return (Criteria) this;
        }

        public Criteria andConEndtimeIsNotNull() {
            addCriterion("con_endtime is not null");
            return (Criteria) this;
        }

        public Criteria andConEndtimeEqualTo(Date value) {
            addCriterionForJDBCDate("con_endtime =", value, "conEndtime");
            return (Criteria) this;
        }

        public Criteria andConEndtimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("con_endtime <>", value, "conEndtime");
            return (Criteria) this;
        }

        public Criteria andConEndtimeGreaterThan(Date value) {
            addCriterionForJDBCDate("con_endtime >", value, "conEndtime");
            return (Criteria) this;
        }

        public Criteria andConEndtimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("con_endtime >=", value, "conEndtime");
            return (Criteria) this;
        }

        public Criteria andConEndtimeLessThan(Date value) {
            addCriterionForJDBCDate("con_endtime <", value, "conEndtime");
            return (Criteria) this;
        }

        public Criteria andConEndtimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("con_endtime <=", value, "conEndtime");
            return (Criteria) this;
        }

        public Criteria andConEndtimeIn(List<Date> values) {
            addCriterionForJDBCDate("con_endtime in", values, "conEndtime");
            return (Criteria) this;
        }

        public Criteria andConEndtimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("con_endtime not in", values, "conEndtime");
            return (Criteria) this;
        }

        public Criteria andConEndtimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("con_endtime between", value1, value2, "conEndtime");
            return (Criteria) this;
        }

        public Criteria andConEndtimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("con_endtime not between", value1, value2, "conEndtime");
            return (Criteria) this;
        }

        public Criteria andLoanUidIsNull() {
            addCriterion("loan_uid is null");
            return (Criteria) this;
        }

        public Criteria andLoanUidIsNotNull() {
            addCriterion("loan_uid is not null");
            return (Criteria) this;
        }

        public Criteria andLoanUidEqualTo(String value) {
            addCriterion("loan_uid =", value, "loanUid");
            return (Criteria) this;
        }

        public Criteria andLoanUidNotEqualTo(String value) {
            addCriterion("loan_uid <>", value, "loanUid");
            return (Criteria) this;
        }

        public Criteria andLoanUidGreaterThan(String value) {
            addCriterion("loan_uid >", value, "loanUid");
            return (Criteria) this;
        }

        public Criteria andLoanUidGreaterThanOrEqualTo(String value) {
            addCriterion("loan_uid >=", value, "loanUid");
            return (Criteria) this;
        }

        public Criteria andLoanUidLessThan(String value) {
            addCriterion("loan_uid <", value, "loanUid");
            return (Criteria) this;
        }

        public Criteria andLoanUidLessThanOrEqualTo(String value) {
            addCriterion("loan_uid <=", value, "loanUid");
            return (Criteria) this;
        }

        public Criteria andLoanUidLike(String value) {
            addCriterion("loan_uid like", value, "loanUid");
            return (Criteria) this;
        }

        public Criteria andLoanUidNotLike(String value) {
            addCriterion("loan_uid not like", value, "loanUid");
            return (Criteria) this;
        }

        public Criteria andLoanUidIn(List<String> values) {
            addCriterion("loan_uid in", values, "loanUid");
            return (Criteria) this;
        }

        public Criteria andLoanUidNotIn(List<String> values) {
            addCriterion("loan_uid not in", values, "loanUid");
            return (Criteria) this;
        }

        public Criteria andLoanUidBetween(String value1, String value2) {
            addCriterion("loan_uid between", value1, value2, "loanUid");
            return (Criteria) this;
        }

        public Criteria andLoanUidNotBetween(String value1, String value2) {
            addCriterion("loan_uid not between", value1, value2, "loanUid");
            return (Criteria) this;
        }

        public Criteria andInvestUidIsNull() {
            addCriterion("invest_uid is null");
            return (Criteria) this;
        }

        public Criteria andInvestUidIsNotNull() {
            addCriterion("invest_uid is not null");
            return (Criteria) this;
        }

        public Criteria andInvestUidEqualTo(String value) {
            addCriterion("invest_uid =", value, "investUid");
            return (Criteria) this;
        }

        public Criteria andInvestUidNotEqualTo(String value) {
            addCriterion("invest_uid <>", value, "investUid");
            return (Criteria) this;
        }

        public Criteria andInvestUidGreaterThan(String value) {
            addCriterion("invest_uid >", value, "investUid");
            return (Criteria) this;
        }

        public Criteria andInvestUidGreaterThanOrEqualTo(String value) {
            addCriterion("invest_uid >=", value, "investUid");
            return (Criteria) this;
        }

        public Criteria andInvestUidLessThan(String value) {
            addCriterion("invest_uid <", value, "investUid");
            return (Criteria) this;
        }

        public Criteria andInvestUidLessThanOrEqualTo(String value) {
            addCriterion("invest_uid <=", value, "investUid");
            return (Criteria) this;
        }

        public Criteria andInvestUidLike(String value) {
            addCriterion("invest_uid like", value, "investUid");
            return (Criteria) this;
        }

        public Criteria andInvestUidNotLike(String value) {
            addCriterion("invest_uid not like", value, "investUid");
            return (Criteria) this;
        }

        public Criteria andInvestUidIn(List<String> values) {
            addCriterion("invest_uid in", values, "investUid");
            return (Criteria) this;
        }

        public Criteria andInvestUidNotIn(List<String> values) {
            addCriterion("invest_uid not in", values, "investUid");
            return (Criteria) this;
        }

        public Criteria andInvestUidBetween(String value1, String value2) {
            addCriterion("invest_uid between", value1, value2, "investUid");
            return (Criteria) this;
        }

        public Criteria andInvestUidNotBetween(String value1, String value2) {
            addCriterion("invest_uid not between", value1, value2, "investUid");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table contract
     *
     * @mbggenerated do_not_delete_during_merge
     */
    public static class Criteria extends GeneratedCriteria implements Serializable{

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table contract
     *
     * @mbggenerated
     */
    public static class Criterion implements Serializable{
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}