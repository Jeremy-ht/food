<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../common/header.jsp" %>
<body>

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
<div id="wrapper" class="viewer">
    <div id="sidebar-wrapper">
        <div class="well sidebar-nav">
            <nav id="J_menuList" class="nav nav-list">
            </nav>
        </div>
        <footer class="footFix footRight" id="myOrder">
			<span style="display:block;width:46px;height:46px;margin-left: 6px;background:url(../../resources/home/images/cart.png)">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<sup id="total-sum"
                                                                                                   display="font-color:red;">0</sup>
                <!--span class="num">9</span-->
                </sapn>
        </footer>
    </div>
    <div id="page-content-wrapper" class="">
        <div class="page-content">
            <div class="container" id="J_list_Container">
            </div>
        </div>
    </div>
    <%--    <footer class="footFix footLeft">--%>
    <%--        <button id="myOrder" class="btn_change">--%>
    <%--            菜篮子--%>
    <%--            <!--span class="num">9</span-->--%>
    <%--        </button>--%>
    <%--    </footer>--%>
</div>
<div id="wrapper2" class="viewer wrapper countpage clearfix" style="display:none;margin-top: 40px;">
    <section class="order_title">
        <div class="container">
            <div class="col-md-12 clearfix foot_orderList">
                <div class="row">
                    <div class="col-xs-6">
                        <p class="notice">

                        </p>
                    </div>
                    <div class="col-xs-6">
                        <p class="notice tar">
                            共计
                            <span class="price" id="price_txt">
                                315元
                            </span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="oder_content">
        <div class="container" id="J_order_list">
        </div>
    </section>
    <section class="oder_submit">
        <div class="container">
            <a style="" href="../user/index" class="button button-rounded button-flat-action fr mgtbr8">
                订单中心
            </a>
            <button class="button button-rounded button-flat-action fr mgtbr8" id="submitOrder">
                下单
            </button>
        </div>
    </section>
</div>
<div id="imgViewer" class="viewer" style="display:none">
    <div class="container">
        <div class="col-md-12 clearfix">
            <div class="col-xs-12 foot-info">
                <div class="imgViewer_contain">
                    <div class="img_contain">
                        <img src="" class="img-responsive" alt="Responsive image"/>
                    </div>
                    <div id="J_imgInfo" class="info_contain clearfix">
                        <strong>
                            芒果布丁2
                        </strong>
                        <span class="colred">
                            888元/粒
                        </span>
                        <small>
                            524人买过
                        </small>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="submitView" class="viewer clearfix" style="display:none">
    <section class="submit_title">
        <div class="container">

            <div class="col-md-12 clearfix">
                <div class="now_submit clearfix">
                    <form id="submit-order-form">

                        <div class="line-body clearfix" id="form_more">
                            <span class="fl lh43">
                               配送信息
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
                        <div class="form-group" id="form_info">
                            <label for="phone">
                                手机号码
                            </label>
                            <span class="twitter-typeahead">
                                <input type="text" id="add-phone" name="phone" class="form-control tt-query"
                                       autocomplete="off"
                                       spellcheck="false" dir="auto">
                            </span>
                            <label for="name" class="mgt10">
                                姓名
                            </label>
                            <span class="twitter-typeahead">
                                <input type="text" id="add-recieveName" name="recieveName" class="form-control tt-query"
                                       autocomplete="off"
                                       spellcheck="false" dir="auto">
                            </span>
                            <label for="adress" class="mgt10">
                                地址
                            </label>
                            <span class="twitter-typeahead">
                                <input type="text" id="add-address" name="address" class="form-control tt-query"
                                       autocomplete="off"
                                       spellcheck="false" dir="auto">
                            </span>
                        </div>
                        <div class="form-group">
                            <div class="btn_control fr">
                                <a class="btn btn-default bottommargin" id="cancelSubmit">
                                    取消
                                </a>
                                <a class="btn btn-info bottommargin" id="submit-order-action">
                                    确认
                                </a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>
<div id="loadingView" class="viewer">
    <div class="container">
        <div class="col-md-12 clearfix loading">
        </div>
    </div>
</div>
<script>
    var price = [];
    var iG = iG || {};
    if (window.localStorage) {
        try {
            iG = JSON.parse(localStorage["zaiG"]) || {};
        } catch (e) {
            localStorage.removeItem("zaiG");
            iG = iG || {};
        }
    } else {
        iG = iG || {};
    }
    $(function () {
        setTimeout(function () {
            window.scrollTo(0, 1);
        }, 0);

        /**/
        $.ajax(
            {
                type: "post",
                dataType: "json",
                url: "get_food_list",
                success: function (data) {
                    if (data.type == 'success') {
                        iG.items = data.content;
                        init();//ajax成功后执行init();
                        showTotal();
                        showEveryFoodTotal();
                    } else {
                        $.alert({
                            title: '提示',
                            text: data.msg
                        });
                    }

                }
            }
        )


        //点击加号按钮
        $("body").on("click", ".list_id_respone", function () {
            iG["order"] = iG["order"] || {};
            var index = $(this).attr("data_id");

            if (iG.order[index]) {
                iG.order[index].counter = iG.order[index].counter + 1;
            } else {
                var obj = getIndex(index);
                iG.order[index] = obj;
                iG.order[index].counter = 1;
            }
            if (window.localStorage) {
                localStorage["zaiG"] = JSON.stringify(iG);
            }
            $(this).prev(".food-count-i").text(iG.order[index].counter);
            showTotal();
            toFly(window.event, $(this).closest("div.col-xs-2").prev("div").prev("div").children("img"));
        });

        //点击减号
        $("body").on("click", ".list_minus", function () {
            iG["order"] = iG["order"] || {};
            var index = $(this).attr("data_id");

            if (iG.order[index]) {
                if (iG.order[index].counter >= 1)
                    iG.order[index].counter = iG.order[index].counter - 1;
            }
            if (window.localStorage) {
                localStorage["zaiG"] = JSON.stringify(iG);
            }
            $(this).next(".food-count-i").text(iG.order[index].counter);
            showTotal();
        });

        //点击菜篮子按钮
        $("#myOrder").click(function () {
            $(".wrapper,#wrapper").removeClass("show");
            $(".wrapper,#wrapper").removeClass("hide");
            $("#wrapper").addClass("hide");
            $("#wrapper2").addClass("show")
            //$("#J_order_Manager").siblings("div").remove();
            $("#J_order_list").html(buildOrder(iG.order));
            $("#price_txt").html(countPrice() + "元");
        });
        //点击选菜按钮
        $("body").on("click", "#addOrder", function () {
            $(".wrapper,#wrapper").removeClass("show");
            $(".wrapper,#wrapper").removeClass("hide");
            $("#wrapper").addClass("show");
            $("#wrapper2").addClass("hide");
        });
        //点击菜品图片进行预览
        $("body").on("click", ".foot-img img", function () {
            $("#imgViewer img").attr("src", $(this).attr("src"));

            $("#imgViewer").show();
            var item = getIndex($(this).attr("data_id"));
            $("#J_imgInfo").html("<strong>" + item.name + "</strong><small>" + item.sels + "人买过</small><span class=\"colred\"> ￥" + item.price + "</span>");
            var img = new Image();
            img.src = $(this).attr("src");
            if (img.complete) {
                $(".imgViewer_contain").css("max-width", img.width + "px")
                $("#imgViewer .imgViewer_contain").css("margin-top", $(window).height() / 2 - img.height / 2 + "px");
                img = null;
            } else {
                img.onload = function () {
                    $(".imgViewer_contain").css("max-width", this.width + "px");
                    $("#imgViewer .imgViewer_contain").css("margin-top", $(window).height() / 2 - img.height / 2 + "px");
                    img = null;
                };
            }
        });
        //关闭预览图片
        $("body").on("click", "#imgViewer", function () {
            $("#imgViewer").hide();
        });
        //在订单提交页面的添加数量按钮点击事件
        $("body").on("click", ".counter_plus", function () {
            iG["order"] = iG["order"] || {};
            var index = $(this).attr("data_id");

            if (iG.order[index]) {
                iG.order[index].counter = iG.order[index].counter + 1;
            } else {
                var obj = getIndex(index);
                iG.order[index] = obj;
                iG.order[index].counter = 1;
            }
            $(this).siblings(".nocounter").html(iG.order[index].counter);
            $("#price_txt").html(countPrice() + "元");
            if (window.localStorage) {
                localStorage["zaiG"] = JSON.stringify(iG);
            }
            showTotal();
            showEveryFoodTotal();
        });
        //订单提交页面的减号按钮点击事件
        $("body").on("click", ".counter_minus", function () {
            iG["order"] = iG["order"] || {};
            var index = $(this).attr("data_id");
            if (iG.order[index].counter === 0) {
                $(this).closest("div.gray_line").remove();
                return;
            }
            if (iG.order[index]) {
                iG.order[index].counter = iG.order[index].counter - 1;
            } else {
                var obj = getIndex(index);
                iG.order[index] = obj;
                iG.order[index].counter = 1;
            }
            $(this).siblings(".nocounter").html(iG.order[index].counter);
            $("#price_txt").html(countPrice() + "元");
            if (window.localStorage) {
                localStorage["zaiG"] = JSON.stringify(iG);
            }
            showTotal();
            showEveryFoodTotal();
            if (iG.order[index].counter === 0) {
                $(this).closest("div.gray_line").remove();
            }
        });
        //清空已选的菜品信息
        $("body").on("click", "#clearOder", function () {
            iG["order"] = {};
            $("#J_order_list").html(buildOrder(iG.order));
            $("#price_txt").html(countPrice() + "元");
            if (window.localStorage) {
                localStorage["zaiG"] = JSON.stringify(iG);
            }
            showTotal();
            showEveryFoodTotal();
        });
        //点击菜品分类切换显示菜品信息
        $("body").on("click", "#J_menuList dd a", function () {
            iG.indexMenu = $(this).attr("data_name");
            $("#J_list_Container").html(listManger(iG.items));
            $("#J_menuList .active").removeClass("active");
            $(this).parent("dd").addClass("active");
            showEveryFoodTotal();
        });
        //
        $("#remote_order").click(function () {
            $(".nav-tabs li.active").removeClass("active");
            $(this).parent("li").addClass("active");
            $("#form_desk").slideUp();
            $("#form_more").slideUp();
            $("#form_info").slideDown();
        });

        $(".logoDiv2").click(function () {
            window.location.href = '../index/index';
        });
        $("#now_order").click(function () {
            $(".nav-tabs li.active").removeClass("active");
            $(this).parent("li").addClass("active");
            $("#form_desk").slideDown();
            $("#form_more").slideDown();
            $("#form_info").slideUp();
        });
        $("#J_btn_reg").click(function () {
            $("#form_info").toggle("normal", "linear");
            console.log(1111)
        });
        //提交订单
        $("#submitOrder").click(function () {
            var foodListTmp = iG.order;
            var ids = '';
            for (var i in foodListTmp) {
                if (foodListTmp[i].counter === 0) continue;
                ids += foodListTmp[i].id + "," + foodListTmp[i].counter + ';';
            }
            if (ids == '') {
                $.alert({
                    title: '提示',
                    text: '请选择菜品',
                    onOK: function () {
                        return;
                    }
                });

            }
            $.ajax({
                url: '../user/get_user_address',
                type: 'post',
                dataType: 'json',
                success: function (data) {
                    if (data.type == 'success') {
                        $("#add-phone").val(data.phone);
                        $("#add-recieveName").val(data.name);
                        $("#add-address").val(data.address);
                        $(".viewer:visible").removeClass("show").addClass("hide");
                        $("#submitView").removeClass("hide").addClass("show");
                    } else {
                        $.alert({
                            title: '提示',
                            text: data.msg,
                            onOK: function () {
                                window.location.href = '../user/login';
                            }
                        });
                        // window.location.href = '../user/login';
                    }
                }
            });

        })
        //取消订单
        $("#cancelSubmit").click(function () {
            $(".viewer:visible").removeClass("show").addClass("hide");
            $("#wrapper2").removeClass("hide").addClass("show");
        });

        //提交订单
        $("#submit-order-action").click(function () {
            var phone = $("#add-phone").val();
            var recieveName = $("#add-recieveName").val();
            var address = $("#add-address").val();
            if (phone == '' || recieveName == '' || address == '') {
                $.alert({
                    title: '提示',
                    text: '请填写基本信息',
                    onOK: function () {
                        return;
                    }
                });
            }
            var foodListTmp = iG.order;
            var ids = '';
            console.log(price);
            var iii = 0;
            for (var i in foodListTmp) {
                if (foodListTmp[i].counter === 0) continue;
                ids += foodListTmp[i].id + ',' + foodListTmp[i].counter + "," + price[iii] + ';';
                iii += 1;
            }
            console.log(ids);
            $.ajax({
                url: '../order/submit_order',
                data: {address: address, phone: phone, recieveName: recieveName, ids: ids},
                type: 'post',
                dataType: 'json',
                success: function (data) {
                    if (data.type == 'success') {
                        $("#clearOder").click();
                        $.alert({
                            title: '提示',
                            text: '下单成功',
                            onOK: function () {
                                window.location.href = '../user/index'
                            }
                        });

                    } else {
                        $.alert({
                            title: '提示',
                            text: data.msg
                        });
                    }
                }
            });
        });


        $(document).on("click", "#hy", function () {
            window.location.href = '../user/hy';
        });

    });


    //初始化整个页面
    function init() {
        setMenu(iG.items);


        $("#J_list_Container").html(listManger(iG.items));
        $("#loadingView").addClass("hide");
    }

    //设置菜单
    function setMenu(_list) {
        iG.menu = [];
        iG.indexMenu = (function () {
            var menu;
            var count = 0;
            for (var i in _list) {
                if (count === 0) {
                    menu = i;
                }
                count++;
                iG.menu.push(i);
            }
            return menu;
        })();
        buildMenu(iG.menu);
    }

    function buildMenu(_list) {
        var menuHtml = "<dl>";
        var active;
        for (var i in _list) {
            active = "";
            if (_list[i] === iG.indexMenu) active = "active";
            menuHtml += "<dd class=\"" + active + "\"><a data_name=\"" + _list[i] + "\">" + _list[i] + "</a></dd>"

        }
        menuHtml += "</dl>";
        $("#J_menuList").html(menuHtml);
    }

    function getIndex(_id) {
        var indexList = iG.items[iG.indexMenu];
        for (var i in indexList) {
            if (indexList[i].id == _id) {
                return indexList[i]
            }
        }
    }

    function submit() {
        var data = iG.order;
        var result = [];
        for (var i in data) {
            result.push({id: iG.order[i].id, counter: iG.order[i].counter});
        }
        return JSON.stringify(result);
    }

    function countPrice() {
        let a = 1;
        let user = localStorage.getItem('users');
        if (user == undefined || user == '' || user == null) {
        } else {
            let u = JSON.parse(user);
            if (u.top == 1) {
                a = 0.8
            }
        }

        var price = 0;
        for (var i in iG.order) {
            price += Number(iG.order[i].price) * iG.order[i].counter;
        }
        return price.toFixed(2);
    }

    function listManger(_list) {
        var result = "";
        var listArr = [];
        var indexList = _list[iG.indexMenu];
        for (var i in indexList) {
            listArr.push(indexList[i]);
            if (Math.floor(i / 3) === 0 && i > 2) {
                result += "<div class=\"row\">";
                result += buildList(listArr);
                result += "</div>";
                listArr = [];
            }
        }
        result += "<div class=\"row\">";
        result += buildList(listArr);
        result += "</div>";
        return result;
    }

    function buildList(_list) {
        var result = "";
        for (var i in _list) {
            result += "<div class=\"col-md-4 clearfix foot-items\"><div class=\"col-xs-4 foot-img\"><img src=\"" + _list[i].imageUrl + "\" class=\"img-responsive\" alt=\"Responsive image\" data_id=\"" + _list[i].id + "\" ></div><div class=\"col-xs-6 foot-info\"><p><strong>" + _list[i].name + "</strong></p><small>" + _list[i].sels + "人买过</small><p class=\"colred\">￥" + _list[i].price + "</p><p></p></div><div class=\"col-xs-2 icons-pick foot-pick\"><div class=\"btn_wrap\" style=\"margin-top:90%;width:80px;\"><button class=\"list_minus\" style=\"display: inline-block;\" data_id=\"" + _list[i].id + "\"><strong></strong></button><i style=\"display: inline-block;\" class=\"food-count-i\">0</i><button class=\"list_add list_id_respone\" data_id=\"" + _list[i].id + "\"><strong></strong></button><em class=\"fixBig  fake\"></em></div></div></div>"
            //<button ontouchstart=\"\" class=\"list_id_respone button button-circle button-flat-primary fa fa-plus\" data_id=\""+_list[i].id+"\"></button>
        }
        return result;
    }


    function buildOrder(_list) {
        price = [];
        let a = 1;
        let user = localStorage.getItem('users');
        if (user == undefined || user == '' || user == null) {
        } else {
            let u = JSON.parse(user);
            if (u.top == 1) {
                a = 0.8
            }
        }

        var result = "<div class=\"row\" id=\"J_order_Manager\"><div class=\"col-xs-12 clearfix board_content\">" +
            "<div class=\"col-xs-4 title_contain\"><p class=\"menu_title \">菜篮子</p></div><div class=\"col-xs-2\"></div>" +
            "<div class=\"col-xs-3 title_contain\"><button class=\"button button-rounded button-flat-action\" id=\"addOrder\">选菜</button></div>" +
            "<div class=\"col-xs-3 title_contain\"><button id=\"clearOder\"class=\"button button-rounded button-flat\">清空</button></div></div></div>";
        var check = true;

        for (var i in _list) {
            if (_list[i].counter === 0) continue;
            check = false;

            price.push((_list[i].price * a).toFixed(2));
            result += "<div class=\"row gray_line\"><div class=\"col-md-12 clearfix board_content\">" +
                "<div class=\"col-xs-6\"><div class=\"col-md-6 clearfix order_item_name\"><label>" + _list[i].name + "</label>" +
                "</div><div class=\"col-md-6 clearfix order_price\">" + (_list[i].price * a).toFixed(2) + "元/份</div></div><div class=\"col-xs-6\">" +
                "<div class=\"btn_wrap counter\"><button class=\" counter_minus fl\" " +
                "style=\"display: inline-block;\" data_id=\"" + _list[i].id + "\" ontouchstart=\"\"><strong></strong></button>" +
                "<i class=\"nocounter fl\" style=\"display: inline-block;\">" + _list[i].counter + "</i>" +
                "<button class=\"list_add counter_plus\" data_id=\"" + _list[i].id + "\" ontouchstart=\"\"><strong></strong></button>" +
                "<em class=\"fixBig  fake\"></em></div></div></div></div>";


        }
        if (check) {
            result += "<div class=\"row gray_line\"><div class=\"col-md-12 clearfix board_content\"><p style=\"text-align: center;\"><span>亲，还没选到心仪的菜喔，点加菜开始选菜吧！</span></p></div></div>";
        }
        return result;
    }

    function showTotal() {
        var total = 0;
        for (var i in iG.order) {
            total += iG.order[i].counter;
        }
        $("#total-sum").text(total);
    }

    function showEveryFoodTotal() {
        $(".food-count-i").text(0);
        var total = 0;
        for (var i in iG.order) {
            total += iG.order[i].counter;
            $("button[data_id=" + i + "]").prev(".food-count-i").text(iG.order[i].counter);
        }
        //$("#total-sum").text(total);
    }

    //动画效果
    function toFly(event, e) {
        var endOffset = $('#total-sum').offset();
        var flyer = $('<img class="flyer-img" src="' + e.attr('src') + '" style="z-index:10001;border-radius:50%; width: 100px;height: 100px; overflow:hidden;">'); //抛物体对象
        //flyer = $(e);
        flyer.fly({
            start: {
                left: event.pageX,
                top: event.pageY
            },
            end: {
                left: endOffset.left + 2,
                top: endOffset.top + 50,
                width: 0,
                height: 0
            }
        });
    }

</script>
</body>
</html>