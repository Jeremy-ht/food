<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../common/header.jsp" %>
<body>
<div id="submitView" class="viewer clearfix" style="background-color: #f0f0f0;display: flex;flex-direction: column">

    <div class="logoDiv"
         style=" position: fixed;left: 0;top: 0;bottom:60px;z-index:99;background-color: #484848; width: 100%;border-radius: 2px;height: 40px;">
        <svg class="logoDiv2" t="1615020343249" style=" width: 32px;height: 32px;margin-top: 4px;margin-left: 10px;"
             viewBox="0 0 1271 1024" version="1.1" xmlns="http://www.w3.org/2000/svg"
             p-id="2202" width="200" height="200">
            <path d="M0 783.995586C0 916.727172 102.859034 1024 230.046897 1024c113.099034 0 207.165793-85.451034 226.162758-197.278897h359.247448C834.454069 939.078621 928.520828 1024 1041.584552 1024c122.350345 0 222.278621-99.645793 229.093517-225.739034H1271.172414v-141.382621l-135.485793-197.278897h81.390345v-84.886069h-513.765518v84.886069l20.48 35.098483 15.607173 27.471448 44.844138 78.283035h-204.694069l-120.408276-225.739035V205.400276h81.390345V120.478897H324.148966v1.518344c-4.378483-0.494345-8.756966-1.518345-13.629794-1.518344-52.153379 0-94.561103 44.243862-94.561103 98.621793 0 4.590345 0.494345 8.651034 1.447724 13.241379l-1.447724 0.98869 1.942069 4.590344c2.471724 12.217379 6.814897 23.375448 12.711724 33.544828l39.441655 103.247448v141.347311l-54.095448 27.965793 0.98869 0.494345C96.503172 551.653517 0 656.41931 0 783.995586z m950.448552 0c0-52.859586 40.96-95.055448 91.136-95.055448 50.21131 0 91.17131 42.725517 91.17131 95.055448 0 52.400552-40.96 95.090759-91.17131 95.090759-50.176 0-91.10069-42.195862-91.10069-95.090759z m-811.537655 0c0-52.859586 40.96-95.055448 91.136-95.055448 50.21131 0 91.17131 42.725517 91.17131 95.055448 0 52.400552-40.96 95.090759-91.17131 95.090759-50.176 0.494345-91.136-42.195862-91.136-95.090759z"
                  fill="#FF6336" p-id="2203"></path>
            <path d="M737.28 0c-15.183448 0-27.789241 12.358621-27.789241 27.153655V274.008276c0 15.32469 12.641103 27.188966 27.789241 27.188965h476.548414c15.642483 0 27.789241-12.358621 27.789241-27.188965V27.188966A27.718621 27.718621 0 0 0 1213.828414 0H737.28z m84.391724 82.449655h308.753655v54.801655H821.671724V82.449655z"
                  fill="#FF6336" p-id="2204"></path>
        </svg>
        <div id="hy"
             style="color: white;margin-right: 10px;line-height: 40px;float: right;display: inline-block; width: 40px;">
            会 员
        </div>

    </div>


    <div style="width: 320px;height: 180px;margin: 50px auto;">
        <img src="../../resources/home/images/aaa.png" alt="">
        <span style="color:#a79f9f;font-size: 12px">*即日起开通本店会员，即可享受八折优惠，还有更多美食赠送，赶紧开通吧。最终解释权归本店所有！</span>
    </div>

    <div id="b" style="width: 320px;margin:10px auto;height: 40px;background-color: black;border-radius: 8px">
        <span style="color: white;line-height: 40px;text-align: center;margin-left: 146px;"> 加入会员 </span>
    </div>

    <div id="a" style="width: 320px;margin:10px auto;height: 40px;background-color: black;border-radius: 8px">
        <span style="color: white;line-height: 40px;text-align: center;margin-left: 132px;"> 已注册会员 </span>
    </div>


</div>

<script>

    $(document).ready(function () {

        let user = localStorage.getItem('users');
        if (user == undefined || user == '' || user == null) {
            $("#a").css('display', 'none');
        } else {
            let u = JSON.parse(user);
            if (u.top == undefined || u.top == '' || u.top == null || u.top == 0) {
                $("#a").css('display', 'none');
            } else {
                $("#b").css('display', 'none');
            }
        }

    });

    $("#b").click(function () {
        let user = localStorage.getItem('users');
        if (user == undefined || user == '' || user == null) {
            $.alert("请先登录系统");
            window.location.href = './login';
        } else {
            let u = JSON.parse(user);
            $.confirm("是否确定加入会员？", function () {
                $.ajax({
                    url: 'sethy/' + u.id,
                    type: 'get',
                    dataType: 'json',
                    success: function (data) {
                        $("#a").css('display', 'black');
                        $("#b").css('display', 'none');

                        localStorage.removeItem('users');
                        localStorage.setItem('users', JSON.stringify(data));
                    }
                });
            }, function () {

            });

        }

    });


    $(".logoDiv2").click(function () {
        window.location.href = '../index/index';
    });


    $("#loginSubmit").click(function () {
        $.ajax({
            url: 'login',
            data: $("#login-form").serialize(),
            type: 'post',
            dataType: 'json',
            success: function (data) {
                if (data.type == 'success') {
                    // alert('登录成功');
                    $.alert("登录成功");
                    window.location.href = '../index/index';
                } else {
                    $.alert(data.msg);
                }
            }
        });
    });
</script>
</body>
</html>