/**
 * Created by Hui on 2017/4/1.
 */
//统计数
$(function(){
    $.ajax({
        type : "POST",
//            async : true,
        url : "/index_toGetPlatformInfo.html",
        dataType : "json",
        success : function(data) {
            $("#dataUsers").html(data[0].userCount);
            $("#dataLoanAmount").html(data[0].loanAmount);
            $("#dataIncomeAmount").html(data[0].incomeAmount);
            $("#dataSaftyDays").html(data[0].saftyDays);
        },
        error : function() {
            $("#dataUsers").html(0);
            $("#dataLoanAmount").html(0.00);
            $("#dataIncomeAmount").html(0.00);
            $("#dataSaftyDays").html(0);
            console.error("获取平台数据异常！");
        }
    });
});