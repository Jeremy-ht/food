<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="copyright" content="All Rights Reserved, Copyright (C) 2021"/>
    <title>后台管理主页</title>
    <link rel="stylesheet" type="text/css" href="../resources/admin/easyui/easyui/1.3.4/themes/default/easyui.css"/>
    <link rel="stylesheet" type="text/css" href="../resources/admin/easyui/css/wu.css"/>
    <link rel="stylesheet" type="text/css" href="../resources/admin/easyui/css/icon.css"/>

    <style>

        /deep/ .tree-icon .tree-file .icon-group {
            display: none;
        }

    </style>

    <script type="text/javascript" src="../resources/admin/easyui/js/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="../resources/admin/easyui/easyui/1.3.4/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="../resources/admin/easyui/easyui/1.3.4/locale/easyui-lang-zh_CN.js"></script>
    <script>
        var pc;
        //不要放在$(function(){});中
        $.parser.onComplete = function () {
            if (pc) clearTimeout(pc);
            pc = setTimeout(closes, 1000);
        }

        function closes() {
            $('#loading').fadeOut('normal', function () {
                $(this).remove();
            });
        }
    </script>
</head>
<body class="easyui-layout">
<div id="loading"
     style="position:absolute;z-index:1000;top:0px;left:0px;width:100%;height:100%;background:#FFFFFF;text-align :center;padding-top:3%;">
    <img src="../resources/admin/easyui/images/loading.jpg" width="50%">
</div>
<!-- begin of header -->
<div class="wu-header" data-options="region:'north',border:false,split:true">

    <div style="display: inline-block;margin-left: 10px">
        <svg t="1615020343249" class="icon1" viewBox="0 0 1271 1024" version="1.1" xmlns="http://www.w3.org/2000/svg"
             p-id="2202" width="200" height="200">
            <path d="M0 783.995586C0 916.727172 102.859034 1024 230.046897 1024c113.099034 0 207.165793-85.451034 226.162758-197.278897h359.247448C834.454069 939.078621 928.520828 1024 1041.584552 1024c122.350345 0 222.278621-99.645793 229.093517-225.739034H1271.172414v-141.382621l-135.485793-197.278897h81.390345v-84.886069h-513.765518v84.886069l20.48 35.098483 15.607173 27.471448 44.844138 78.283035h-204.694069l-120.408276-225.739035V205.400276h81.390345V120.478897H324.148966v1.518344c-4.378483-0.494345-8.756966-1.518345-13.629794-1.518344-52.153379 0-94.561103 44.243862-94.561103 98.621793 0 4.590345 0.494345 8.651034 1.447724 13.241379l-1.447724 0.98869 1.942069 4.590344c2.471724 12.217379 6.814897 23.375448 12.711724 33.544828l39.441655 103.247448v141.347311l-54.095448 27.965793 0.98869 0.494345C96.503172 551.653517 0 656.41931 0 783.995586z m950.448552 0c0-52.859586 40.96-95.055448 91.136-95.055448 50.21131 0 91.17131 42.725517 91.17131 95.055448 0 52.400552-40.96 95.090759-91.17131 95.090759-50.176 0-91.10069-42.195862-91.10069-95.090759z m-811.537655 0c0-52.859586 40.96-95.055448 91.136-95.055448 50.21131 0 91.17131 42.725517 91.17131 95.055448 0 52.400552-40.96 95.090759-91.17131 95.090759-50.176 0.494345-91.136-42.195862-91.136-95.090759z"
                  fill="#FF6336" p-id="2203"></path>
            <path d="M737.28 0c-15.183448 0-27.789241 12.358621-27.789241 27.153655V274.008276c0 15.32469 12.641103 27.188966 27.789241 27.188965h476.548414c15.642483 0 27.789241-12.358621 27.789241-27.188965V27.188966A27.718621 27.718621 0 0 0 1213.828414 0H737.28z m84.391724 82.449655h308.753655v54.801655H821.671724V82.449655z"
                  fill="#FF6336" p-id="2204"></path>
        </svg>
    </div>


    <div class="wu-header-left">
        <h1>外卖点餐后台管理系统</h1>
    </div>
    <div class="wu-header-right">
        <p><strong class="easyui-tooltip" title="0条未读消息">${admin.username}</strong>，欢迎您！</p>
        <p><a href="../home/index/index" target="_blank">网站首页</a>|<a href="logout">安全退出</a></p>
    </div>
</div>


<div class="wu-sidebar" data-options="region:'west',split:true,border:true,title:'    导航菜单'">
    <div class="easyui-accordion" data-options="border:false,fit:true">
        <c:forEach items="${topMenuList }" var="topMenu">
            <div title="${topMenu.name }" data-options="iconCls:'${topMenu.icon }'" style="padding:5px;height: 0;">
                <ul class="easyui-tree wu-side-tree">
                    <c:forEach items="${secondMenuList }" var="secondMenu">
                        <c:if test="${secondMenu.parentId == topMenu.id }">
                            <li iconCls="${secondMenu.icon }"><a href="javascript:void(0)"
                                                                 data-icon="${secondMenu.icon }"
                                                                 data-link="${secondMenu.url }?_mid=${secondMenu.id }"
                                                                 iframe="1">${secondMenu.name }</a></li>
                        </c:if>
                    </c:forEach>
                </ul>
            </div>
        </c:forEach>
    </div>
</div>


<div class="wu-main" data-options="region:'center'">
    <div id="wu-tabs" class="easyui-tabs" data-options="border:false,fit:true">
        <div title="首页" data-options="href:'welcome',closable:false,iconCls:'icon-tip',cls:'pd3'"></div>
    </div>
</div>


<%--<div class="wu-footer" data-options="region:'south',border:true,split:true" style="display: none;">--%>
<%--    &copy; 2021 外卖点餐系统--%>
<%--</div>--%>
<!-- end of footer -->
<script type="text/javascript">
    $(function () {
        $('.wu-side-tree a').bind("click", function () {
            var title = $(this).text();
            var url = $(this).attr('data-link');
            var iconCls = $(this).attr('data-icon');
            var iframe = $(this).attr('iframe') == 1 ? true : false;
            addTab(title, url, iconCls, iframe);
        });
    })


    /**
     * Name 添加菜单选项
     * Param title 名称
     * Param href 链接
     * Param iconCls 图标样式
     * Param iframe 链接跳转方式（true为iframe，false为href）
     */
    function addTab(title, href, iconCls, iframe) {
        var tabPanel = $('#wu-tabs');
        if (!tabPanel.tabs('exists', title)) {
            var content = '<iframe scrolling="auto" frameborder="0"  src="' + href + '" style="width:100%;height:100%;"></iframe>';
            if (iframe) {
                tabPanel.tabs('add', {
                    title: title,
                    content: content,
                    iconCls: iconCls,
                    fit: true,
                    cls: 'pd3',
                    closable: true
                });
            } else {
                tabPanel.tabs('add', {
                    title: title,
                    href: href,
                    iconCls: iconCls,
                    fit: true,
                    cls: 'pd3',
                    closable: true
                });
            }
        } else {
            tabPanel.tabs('select', title);
        }
    }

    /**
     * Name 移除菜单选项
     */
    function removeTab() {
        var tabPanel = $('#wu-tabs');
        var tab = tabPanel.tabs('getSelected');
        if (tab) {
            var index = tabPanel.tabs('getTabIndex', tab);
            tabPanel.tabs('close', index);
        }
    }
</script>
</body>
</html>