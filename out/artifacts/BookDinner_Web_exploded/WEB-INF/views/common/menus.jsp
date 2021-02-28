<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forEach items="${thirdMenuList }" var="thirdMenu">
   <a href="#" class="easyui-linkbutton"  onclick="${thirdMenu.url}"
      style="border: 1px solid #b7d2ff; color: white;background-color:#2db7f5;
      width: 80px;height: 28px;line-height: 28px;text-align: center;font-size: 16px;margin-right:14px"
      plain="true">${thirdMenu.name }</a>
</c:forEach>