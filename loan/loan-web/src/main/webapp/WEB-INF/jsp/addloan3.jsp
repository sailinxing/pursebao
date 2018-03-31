<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/15
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<form action="${pageContext.request.contextPath}/loan/addloan" method="post" >
   <h2 class="h2title01">
    借款申请表
  </h2>
  <h3 class="h3title">
    <span>借款信息</span>
  </h3>
  <table>
    <tr>
      <td> 借款用途：</td>
      <td>
        <input maxlength="50" type="text" name="loanUse" id="loanUse"
               value="" >
      </td>
    </tr>
    <tr>
      <td>  拟借款金额：</td>
      <td>
        <input maxlength="10"  type="text"  name="loanAmount" id="loanAmount" value="" >&nbsp;&nbsp;&nbsp;&nbsp;万元
      </td>
    </tr>

    <tr>
      <td> 借款期限：</td>
      <td>
        <input maxlength="5" type="text"  id="loanLimit" name="loanLimittime"  value="" />
      </td>
    </tr>

    <tr>
      <td>  还款方式：</td>
      <td>
        <select id="repay_Way" name="loanPayway">

          <option  value = '1'>一次性还本付息</option>

          <option  value = '2'>按月付息，到期还本</option>

        </select>
      </td>
    </tr>
  <%--  <tr>
      <td>
          借款利率：
      </td>
    <td>
      <input maxlength="10"  type="text"  name="loanRate" id="loanRate" value="10%"  readonly="readonly">
    </td>
    </tr>--%>

    <tr>
        <td>
          拟抵（质）押品：
        </td>
        <td>
								<input id="cdzy" name="loanGoods" type="text" />
        </td>
      </tr>
     <tr>
       <td>
          抵（质）押品预估值：
       </td>
      <td>
          <input maxlength="10" type="text" id="amount"   name="loanWorth" value="0.0" />
          &nbsp;&nbsp;&nbsp;&nbsp;万元
      </td>
      </tr>


      <!--借款申请表 end-->

      <!--公司信息-->
   <h3 class="h3title">
        <span>联系信息</span>
      </h3>--%>
      <tr>
        <td>
            公司名称：
        </td>
        <td>
            <input type="text" maxlength="50"   name="companyName" id="loanCompName"  value=""/>
        </td>
      </tr>
      <tr>
       <td>
            公司地址：
       </td>
        <td>
            <input type="text" maxlength="50"  id="addr" name="companyAddress" value="" />

        </td>
      </tr>
      <tr>
        <td>
            补充说明：
        </td>
      <td>
            <textarea id="textA" maxlength="200" name="caseComplaint"></textarea>
      </td>
      </tr>
    <tr>
      <td>
        <input  type="submit" value="提交">
      </td>
      <td>
        <input  type="reset" value="重置">
      </td>
    </tr>

  </table>

 <%-- <div class=" mar45 c333 jkxx">
    <dl class="clear">
      <dt class="w340 left">
        借款用途：
      </dt>
      <dd class="left dd01">
        <input maxlength="50" type="text" name="loanUse" id="loanUse"
               value="" >
      </dd>
    </dl>

    <dl class="clear mart20">
      <dt class="w340 left">
        拟借款金额：
      </dt>
      <dd class="left dd02">
        <input maxlength="10"  type="text"  name="loanAmount" id="loanAmount"
               value="" >&nbsp;&nbsp;&nbsp;&nbsp;万元
      </dd>
    </dl>
    <dl class="clear mart20">
      <dt class="w340 left">
        借款期限：
      </dt>
      <dd class="left dd02" style="hight:100px;width:395px">
        <div style="float:left;" >
          <select id="loanType" name="" onchange="loanTypeChange()" >
            <option selected = "selected"
                    value = "0" >定期还款</option>
            <option  value = "1" >弹性还款</option>
          </select>
        </div>
        <div  id="gdsy" style="width:290px;">
                >
          <input maxlength="5" type="text"  id="loanLimit" name="loanLimittime"
                 value="" onblur="checkInteger(this)"/>
          <select id="limitUnit" name = ''>
            <!-- <option value = ''>单位</option> -->
            <option  value = 'D'>天</option>
            <option  value = 'M'>月</option>
          </select>
        </div>
      </dd>
    </dl>
    <dl class="clear mart20">
      <dt class="w340 left">
        还款方式：
      </dt>
      <dd class="left dd02">
        <select id="repay_Way" name="loanPayway">

          <option  value = '1'>一次性还本付息</option>

          <option  value = '2'>按月付息，到期还本</option>

        </select>
      </dd>
    </dl>
    <dl class="clear mart20">
      <dt class="w340 left">
        借款利率：
      </dt>
      <dd class="left dd02">
							<span>
								<input maxlength="10"  type="text"  name="loanRate" id="loanRate" value="10%"  readonly="readonly">
							</span>
      </dd>
    </dl>

    <dl class="clear mart20">
      <dt class="w340 left">
        拟抵（质）押品：
      </dt>
      <dd class="left dd04">
							<span>
								<input id="cdzy" name="loanGoods" type="text" />
							</span>
      </dd>
    </dl>
    <dl class="clear mart20">
      <dt class="w340 left">
        抵（质）押品预估值：
      </dt>
      <dd class="left dd03">
        <input maxlength="10" type="text" id="amount"   name="loanWorth" value="0.0" />
        &nbsp;&nbsp;&nbsp;&nbsp;万元
      </dd>
    </dl>

  </div>
  <!--借款申请表 end-->

  <!--公司信息-->
  <h3 class="h3title">
    <span>联系信息</span>
  </h3>
  <div class=" mar45 c333 jkxx">
    <dl class="clear">
      <dt class="w340 left">
        公司名称：
      </dt>
      <dd class="left dd01">
        <input type="text" maxlength="50"  class="inpt wd200 required" name="companyName" id="loanCompName" class="required"  value=""/>
      </dd>
    </dl>
    <dl class="clear mart20">
      <dt class="w340 left">
        公司地址：
      </dt>
      <dd class="left dd01">
        <input type="text" maxlength="50" class="required" id="addr" name="companyAddress" value="" />

      </dd>
    </dl>
    <dl class="clear mart20">
      <dt class="w340 left">
        补充说明：
      </dt>
      <dd class="left dd05">
        <textarea id="textA" maxlength="200" name="caseComplaint"></textarea>
      </dd>
    </dl>
  </div>

  <div class=" mar45 c333 jkxx">
    <dl class="clear mart20">
      <dt class="w340 left">
        &nbsp;
      </dt>
      <dd class="left dd05">
        <input  type="submit" value="提交">
      </dd>
    </dl>
  </div>--%>
</form>

</body>
</html>
