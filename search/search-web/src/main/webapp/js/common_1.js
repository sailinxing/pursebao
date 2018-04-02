//将时间格式化
function myDate(t) {
    var d = Math.floor(t / 86400);
    var h = Math.floor(t % 86400 / 3600);
    var i = Math.floor(t % 86400 % 3600 / 60);
    var s = Math.floor(t % 86400 % 3600 % 60);
    return d + '天' + h + '时' + i + '分' + s + '秒';
}

/**
 * 将数字格式化为金额
 */
function toMoney(num) {
    num = num.toFixed(2);
    //num = parseFloat(num);
    num = num.toLocaleString();
    return num;//返回的是字符串23,245.12保留2位小数
}