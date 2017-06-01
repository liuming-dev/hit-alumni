<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>哈尔滨工业大学校友会微信服务号后台管理系统</title>
    <style type="text/css" rel="stylesheet"></style>
</head>
<body>
<div style="padding-left: 20px;text-align: center;">
    <h2>
        <c:choose>
            <c:when test="${opt=='update'}">
                更新二维码捐款信息
                <c:set value="/wechat/admin/qrcode-items/${item.id}" var="targetUrl"/>
            </c:when>
            <c:otherwise>
                添加二维码捐款信息
                <c:set value="/wechat/admin/qrcode-items" var="targetUrl"/>
            </c:otherwise>
        </c:choose>
    </h2>
    <hr>
    <form action="${targetUrl}" method="post">
        募捐项目名称：<input type="text" name="body" value="${item.body}"><br><br>
        募捐项目描述：<input type="text" name="detail" value="${item.detail}"><br><br>
        固定捐款金额：<input type="text" name="money"
                      value="<fmt:formatNumber type='number' value='${item.money}' pattern='#0'/>"><br><br>
        <input type="submit" value="提交">
    </form>
</div>
</body>
</html>
