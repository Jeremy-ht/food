<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../common/header.jsp" %>
<body>
<div id="wrapper2" class="viewer wrapper countpage clearfix show" style="display:none">
    <div id="submitView" class="viewer clearfix">
        <section class="submit_title">
            <div class="container" id="">

                <div class="col-md-12 clearfix">
                    <div class="now_submit clearfix" style="margin-left: 0px;">
                        <div class="line-body clearfix">
                            <span class="fl lh43" id="layoutUser">
                            <svg t="1615039483541" class="icon2" viewBox="0 0 1024 1024" version="1.1"
                                 xmlns="http://www.w3.org/2000/svg" p-id="5864" width="200" height="200"><path
                                    d="M511.767294 546.068176c-33.230434 0-66.507408-34.114717-66.507409-68.229434v-409.562767c0-34.161258 33.276975-68.275975 66.55395-68.275975 33.183892 0 66.367785 34.114717 66.367785 68.229434v409.609308c0 34.114717-33.183892 68.229434-66.414326 68.229434m0 477.885283C254.85974 1023.953459 46.587765 809.956913 46.587765 546.068176c0-216.416689 140.135624-399.277157 332.304336-457.96564v144.975911C261.608217 285.763112 179.462958 406.118716 179.462958 546.068176c0 188.538497 148.792292 341.333333 332.304336 341.333333 183.512044 0 332.304336-152.794837 332.304336-341.333333 0-139.949459-82.098718-260.305063-199.429143-312.989729V88.055995c192.215253 58.735024 332.304336 241.595491 332.304336 458.012181 0 263.888737-208.271975 477.885283-465.179529 477.885283"
                                    p-id="5865" fill="#FF6336"></path></svg>
                            </span>
                            <ul class="nav nav-pills tabdrop fr">
                                <li class="dropdown pull-right tabdrop">
                                    <a class="dropdown-toggle" href="../index/index">
                                        <i class="fa fa-th-list">返回主页
                                        </i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 clearfix">
                    <div class="now_submit clearfix" style="margin-left: 0px;">
                        <div class="line-body clearfix info-form_more">
                            <span class="fl lh43">
                               基础信息
                            </span>
                            <ul class="nav nav-pills tabdrop fr">
                                <li class="dropdown pull-right tabdrop">
                                    <a class="dropdown-toggle" id="J_btn_reg">
                                        <i class="fa fa-th-list">
                                        </i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <form class="slide-form">


                            <div class="form-group">
                                <label for="phone">
                                    密码
                                </label>
                                <span class="twitter-typeahead">
                                <input value="${account.password }" type="password" id="edit-password" name="password"
                                       class="form-control tt-query" autocomplete="off"
                                       spellcheck="false" dir="auto">
                            </span>
                                <label for="phone">
                                    手机号码
                                </label>
                                <span class="twitter-typeahead">
                                <input value="${account.phone }" type="text" id="edit-phone" name="phone"
                                       class="form-control tt-query" autocomplete="off"
                                       spellcheck="false" dir="auto">
                            </span>
                                <label for="name" class="mgt10">
                                    姓名
                                </label>
                                <span class="twitter-typeahead">
                                <input value="${account.realName }" type="text" id="edit-recieveName" name="realName"
                                       class="form-control tt-query" autocomplete="off"
                                       spellcheck="false" dir="auto">
                            </span>
                                <label for="adress" class="mgt10">
                                    地址
                                </label>
                                <span class="twitter-typeahead">
                                <input value="${account.address }" type="text" id="edit-address" name="address"
                                       class="form-control tt-query" autocomplete="off"
                                       spellcheck="false" dir="auto">
                            </span>
                            </div>
                            <div class="form-group">
                                <div class="btn_control fr">
                                    <a class="btn btn-info bottommargin" id="submit-info-action">
                                        确认
                                    </a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <c:forEach items="${orderList}" var="order">
                    <div class="col-md-12 clearfix">
                        <div class="now_submit clearfix" style="margin-left: 0px;">
                            <div class="line-body clearfix info-form_more">
                            <span class="fl lh43">
                               <fmt:formatDate value="${order.createTime }" pattern="yyyy-MM-dd HH:mm:ss"/>
                               <c:if test="${order.status == 0 }">
                                   <span style="color: black">待出餐</span>
                               </c:if>
                               <c:if test="${order.status == 3 }">
                                   <span style="color: black">已出餐</span>
                               </c:if>
                               <c:if test="${order.status == 1 }">
                                   <span style="color: black">配送中</span>
                               </c:if>
                               <c:if test="${order.status == 2 }">
                                   <span style="color: black">已完成</span>
                               </c:if>
                            </span>
                                <ul class="nav nav-pills tabdrop fr">
                                    <li class="dropdown pull-right tabdrop">
                                        <a class="dropdown-toggle" id="J_btn_reg" onclick="get(${order.id})">
                                            <i class="fa fa-th-list">
                                            </i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <form class="slide-form">


                                <div class="form-group" style="padding-bottom:0px;">
                                    <div style="color: #FF6336;font-size: 16px;margin-bottom: 6px">订单信息：</div>
                                    <c:forEach items="${order.orderItems }" var="orderItem">
                                        <label style="color: #b0b0b0;font-size: 14px;">
                                                ${orderItem.foodName } <span
                                                style="float:right;color:red;">${orderItem.price } ✕${orderItem.foodNum } ￥：${orderItem.money }元</span>
                                        </label>
                                    </c:forEach>
                                    <label>
                                        <span style="float:right;color:red;">总计￥：${order.money}元</span>
                                    </label>


                                    <div style="color: #FF6336;font-size: 16px;margin-bottom: 10px">配送信息：

                                        <div class="diva"
                                             style="color: #b0b0b0;font-size: 14px;padding-left: 10px"></div>

                                    </div>


                                </div>
                            </form>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </section>
    </div>
</div>
</body>
<script>
    $(document).ready(function () {
        $(".slide-form").slideUp();


        $.ajax({
            url: 'update_info2/19',
            type: 'post',
            dataType: 'json',
            success: function (data) {
                console.log(data)

            }
        });


    });
    $(".info-form_more").click(function () {
        $(this).next("form").slideToggle();
    });
    //
    // document.getElementById("J_btn_reg").onclick = function(id) {
    //     console.log(id);
    //
    //     $.ajax({
    //         url: 'update_info2/' + id,
    //         type: 'post',
    //         dataType: 'json',
    //         success: function (data) {
    //             console.log(data);
    //             $('#diva').html(data)
    //
    //         }
    //     });
    //
    // };

    function get(id) {
        $('.diva').val();

        $.ajax({
            url: 'update_info2/' + id,
            type: 'post',
            dataType: 'json',
            success: function (data) {
                var html = '<ul style="color: #b0b0b0;font-size: 14px;margin-top:10px;margin-left: 6px;">';
                //creatime: 1615727626000   id: 7      orderid: 18   state: 2
                // //订单状态,0：待出餐，3：已出餐，1：配送中， 2：已完成
                for (let i = 0; i < data.length; i++) {
                    let state = data[i].state;
                    let a = '';
                    if (state == 0) {
                        a = '待出餐';
                    } else if (state == 1) {
                        a = '配送中';
                    } else if (state == 3) {
                        a = '已出餐';
                    } else if (state == 2) {
                        a = '已完成';
                    }
                    let time = timestampToTime(data[i].creatime)

                    html += '<li style="margin-bottom: 2px">' + time + ' <span style="margin-left: 6px">' + a + ' </span></li>'
                }

                html += '</ul>';
                $('.diva').html(html);

            }
        });
    }

    function timestampToTime(timestamp) {
        var date = new Date(timestamp);//时间戳为10位需*1000，时间戳为13位的话不需乘1000
        Y = date.getFullYear() + '-';
        M = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1) + '-';
        D = date.getDate() + ' ';
        h = date.getHours() + ':';
        m = date.getMinutes() + ':';
        s = date.getSeconds();
        return Y + M + D + h + m + s;
    }

    $("#layoutUser").click(function () {

        $.confirm({
            title: '提示',
            text: '是否确定退出',
            onOK: function () {
                $.ajax({
                    url: '../user/loginLay',
                    type: 'post',
                    dataType: 'json',
                    success: function () {
                        window.location.href = '../index/index';
                    },
                    error: function () {
                        window.location.href = '../index/index';
                    }
                });

            },
            onCancel: function () {
                window.location.href = '../index/index';
            }
        });
        // window.location.href = '../index/index';
    });

    $("#submit-info-action").click(function () {
        var password = $("#edit-password").val();
        var phone = $("#edit-phone").val();
        var recieveName = $("#edit-recieveName").val();
        var address = $("#edit-address").val();
        if (password == '' || phone == '' || recieveName == '' || address == '') {
            alert('请填写信息！');
            return;
        }
        var $this = $(this);
        $.ajax({
            url: 'update_info',
            data: {password: password, phone: phone, realName: recieveName, address: address},
            type: 'post',
            dataType: 'json',
            success: function (data) {
                $.alert({
                    title: '提示',
                    text: data.msg,
                    onOK: function () {
                        $this.closest("form").slideUp();
                    }
                });

            }
        });
    });
</script>
</html>