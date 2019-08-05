<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W1C//DTD HTML 4.01 Transitional//EN" "http://www.w1.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.4.1/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.4.1/themes/icon.css">

    <script type="text/javascript" src="js/jquery-easyui-1.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>

    <script type="text/javascript" src="<%=basePath%>/commons/commons.js"></script>

    <script type="text/javascript" src="<%=basePath%>/js/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript">

    </script>
</head>

<body>
<div>
    <p>请输入车牌号</p>
    <input id="carnumber">
    <button type="button" onclick="carNumberCheck()">点击这验证</button>
    <p id="truecarnumber"></p>
</div>

<div>
    请输入姓名：
    <input class="ipt" type="text" name="yourname" id="yourname">
    请输入身份证号码：
    <input name='card_no' type='text' id='card_no' value=''/>
    <input type='button' name='submit' value='click me' onclick='javascript:checkCard();'/>
</div>

<div>
    <p>请输入手机号</p>
    <input id="phonenumber">
    <button type="button" onclick="phoneNumberCheck()">点击这验证</button>
    <p id="truephonenumber"></p>
</div>

<div>
    <p>请输入邮箱号</p>
    <input id="emailnumber">
    <button type="button" onclick="emailNumberCheck()">点击这验证</button>
    <p id="trueemailnumber"></p>
</div>
</body>

<script type="text/javascript">

    $(document).ready(function () {
    });
    function carNumberCheck() {
        //alert("鼠标点击执行")
        // var carNumber,result;
        // carNumber = document.getElementById("carnumber").value;
        // result = isVehicleNumber(carNumber);
        // //document.getElementById("truecarnumber").innerHTML = result;
        // $("#truecarnumber").html("<span style='font-size:30px;color:red;'>"+result+"</span>");
        // //$("#truecarnumber").text("<span style='font-size:30px;color:red;'>"+result+"</span>");
        $("#truecarnumber").html("<span>" + result + "</span>")
        var str = $("#carnumber").val();
        var result = false;
        if (str.length === 0) {
            alert('请输入车牌号码！');
            $("#carnumber").focus();
            result = false;
        } else if (str.length != 7) {
            alert('请输入有效的车牌号码！');
            $("#carnumber").val('');
            $("#carnumber").focus();
            result = false;
        }
        result = isVehicleNumber(str);
        if (result) {
            $("#truecarnumber").html("<span>" + result + "</span>");
        } else {
            $("#truecarnumber").html("<span style='color:red;font-size:30px;'>" + result + "</span>");
        }
    }

    function phoneNumberCheck() {
        var phoneNumber, phoneResult;
        phoneNumber = $("#phonenumber").val();
        if (phoneNumber.length === 0) {
            alert("请输入手机号码");
            $("#phonenumber").focus();
            return false;
        } else if (phoneNumber.length != 11) {
            alert("请输入有效的手机号码");
            $("#phonenumber").focus();
            return false;
        }
        phoneResult = isphoneNumber(phoneNumber);
        if (phoneResult) {
            $("#truephonenumber").html("<span>" + phoneResult + "</span>");
        } else {
            $("#truephonenumber").html("<span style='color:red;font-size:30px;'>" + phoneResult + "</span>");
        }
    }

    function emailNumberCheck() {
        var emailNumber, emailResult;
        emailNumber = $("#emailnumber").val();
        if (emailNumber.length === 0) {
            alert("请输入邮箱号码");
            $("#emailnumber").focus();
            return false;
        }
        emailResult = isemailNumber(emailNumber);
        /* $("#trueemailnumber").html(emailResult)*/

        if (emailResult) {
            $("#trueemailnumber").html("<span style='color:green;background:red'>" + emailResult + "</span>");
        } else {
            $("#trueemailnumber").html("<span style='color:red;font-size:30px;'>" + emailResult + "</span>");
        }
    }

</script>

</html>
