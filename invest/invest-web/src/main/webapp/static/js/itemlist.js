
$(document).ready(function () {
    getFirstPage();
})
var countnumber;
var currentpage;
var pagesize;
var pagedata;


function getFirstPage() {
    $.ajax({
        type: "GET",
        url: "../invest/investlist2",
        async:false,
        data: {"currentpage": 1},
        success: function (data) {
            countnumber = data.countnumber;
            pagedata = data.pagedata;
            listProducts(pagedata);

        }
    });
}
function getCount() {
    $.ajax({
        type: "GET",
        url: "../invest/getcount",
        async:false,
        success: function (data) {
            countnumber = data;
        }
    });
}

function getPage(cpage, pagesize) {
    $.ajax({
        type: "GET",
        url: "../invest/investlist2",
        data: {"currentpage": cpage, "pagesize": pagesize},
        success: function (data) {
            /*layer.msg('第'+ cpage +'页');*/
            countnumber = data.countnumber;
            /*layer.msg(countnumber);*/
            pagedata = data.pagedata;

            listProducts(pagedata);

        }
    });
}

function listProducts(pagedata) {
        var html = "";
        for (var i = 0; i < pagedata.length; i++) {
            var product = pagedata[i];
            /*layer.msg('第'+ product.pid +'页');*/
            /*html+='<div class="infor left"> '+product.pid+' </div>';*/

            html += '<div class="conItem">';
            html += '<div class="infor left">';
            html += '<h3>';
            html += '<a class="sptt" href="/">' + product.pid + '</a>';
            html += '<a href="javascript:void(0);">';
            html += '</a>';
            html += '</h3>';
            html += '<p class="time">产品规模：<span class="timerCon">' + product.loanChildInfo.loanAmount + '</span></p>';
            html += '</div>';
            html += '<ul class="number left clear">';
            html += '<li class="red">';
            html += product.expectedRate * 100 + '%';
            html += '<p>预期年化收益率</p>';
            html += '</li>';
            html += '<li>' + product.loanChildInfo.loanLimittime + '<span class="size14">天</span>'
            html += '<p>产品期限</p></li>';
            html += '<li>' + product.startMoney + '<span class="size14">元</span>';
            html += '<p>起投金额</p></li>';
            html += '</ul>';
            html += '<div class="btnbox left">';

            if (product.surplusMoney == 0) {
                html += '<div class="btndiv">';
                html += '<div class="finish"><span>已满标</span></div>';
                html += '</div>';
            }
            if (product.surplusMoney > 0) {
                var progress = (product.loanChildInfo.loanAmount-product.surplusMoney)/product.loanChildInfo.loanAmount
                html += '<div class="btnPrice">剩余可投：<b>' + product.surplusMoney + '</b>元</div>';
                html += '<div class="progressBg">';
                html += '<div class="progressBar" style="width:'+progress*100+'%;"></div>';
                html += '</div>';
                html += '<div class="btndiv">';
                html += '<a class="btn left" href="../invest/investdetail/' + product.pid + '">立即投资</a>';
                html += '</div>';
            }
            html += '</div>';
            html += '</div>';

        }
        $("#plainPart0").empty();
        $("#plainPart0").html(html);
}

layui.use(['jquery', 'laypage', 'layer'], function () {
    var laypage = layui.laypage
        , layer = layui.layer;
    var $ = layui.jquery;

    //debugger;
    getFirstPage();

    //完整功能
    laypage.render({
        elem: 'investlist'
        , count: countnumber
        , layout: ['count', 'prev', 'page', 'next', 'limit', 'skip']
        , skip: true
        , jump: function (obj, first) {

            if (!first) {
                layer.msg('第'+ obj.curr +'页');
                //layer.msg('共' + countnumber + '条');
                currentpage = obj.curr;
                pagesize = obj.limit;
                getPage(currentpage, pagesize);
                /*getCountnumber(currentpage);*/
            }
        }
    });

});




