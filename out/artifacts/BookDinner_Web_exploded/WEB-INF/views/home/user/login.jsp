<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../common/header.jsp" %>
<body>
<div id="submitView" class="viewer clearfix" style="">
    <section class="submit_title">
        <div class="container" id="">

            <div class="col-md-12 clearfix">
                <div class="now_submit clearfix" style="margin-left:0px;">

                    <div id="c" style="width: 100%;height: 40px;background-color: black">
                        <%--                        <svg t="1615039483541" class="icon2" viewBox="0 0 1024 1024" version="1.1"--%>
                        <%--                             xmlns="http://www.w3.org/2000/svg" p-id="5864" width="200" height="200"><path--%>
                        <%--                                d="M511.767294 546.068176c-33.230434 0-66.507408-34.114717-66.507409-68.229434v-409.562767c0-34.161258 33.276975-68.275975 66.55395-68.275975 33.183892 0 66.367785 34.114717 66.367785 68.229434v409.609308c0 34.114717-33.183892 68.229434-66.414326 68.229434m0 477.885283C254.85974 1023.953459 46.587765 809.956913 46.587765 546.068176c0-216.416689 140.135624-399.277157 332.304336-457.96564v144.975911C261.608217 285.763112 179.462958 406.118716 179.462958 546.068176c0 188.538497 148.792292 341.333333 332.304336 341.333333 183.512044 0 332.304336-152.794837 332.304336-341.333333 0-139.949459-82.098718-260.305063-199.429143-312.989729V88.055995c192.215253 58.735024 332.304336 241.595491 332.304336 458.012181 0 263.888737-208.271975 477.885283-465.179529 477.885283"--%>
                        <%--                                p-id="5865" fill="#FF6336"></path></svg>--%>
                        <%--                        </span>--%>

                        <span style="font-weight: 600;font-size: 18px;line-height: 40px;margin-left: 14px;color: white">外卖订餐系统</span>
                    </div>
                    <form id="login-form">


                        <div class="form-group" id="form_info">
                            <label for="phone">
                                用户名
                            </label>
                            <span class="twitter-typeahead">
                                <input type="text" name="name" class="form-control tt-query" autocomplete="off"
                                       spellcheck="false" dir="auto">
                            </span>
                            <label for="name" class="mgt10">
                                密码
                            </label>
                            <span class="twitter-typeahead">
                                <input type="password" name="password" class="form-control tt-query" autocomplete="off"
                                       spellcheck="false" dir="auto">
                            </span>

                        </div>
                        <div class="form-group">
                            <div class="btn_control fr">
                                <a class="btn btn-default bottommargin" id="registerSubmit">
                                    注册
                                </a>
                                <a class="btn btn-info bottommargin" id="loginSubmit">
                                    登录
                                </a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- Le javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script>
    $("#registerSubmit").click(function () {
        window.location.href = 'registe';
    });
    $("#loginSubmit").click(function () {


        $.ajax({
            url: 'login',
            data: $("#login-form").serialize(),
            type: 'post',
            dataType: 'json',
            success: function (data) {
                if (data.type == 'success') {
                    localStorage.setItem("users", JSON.stringify(data.a))
                    $.alert("登录成功");
                    window.location.href = '../index/index';
                } else {
                    $.alert(data.msg);
                }
            }
        });
    });

    $("#c").click(function () {

        window.location.href = '../index/index';

    });
</script>
</body>
</html>