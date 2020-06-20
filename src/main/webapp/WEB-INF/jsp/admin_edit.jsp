<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>修改信息</title>
    <link rel="icon" href="/images/favicon.ico" sizes="32x32" />
    <link rel="stylesheet" href="/css/font.css">
    <link rel="stylesheet" href="/css/xadmin.css">
    <link rel="stylesheet" href="/css/pg_btn.css">
    <script type="text/javascript" src="./js/jquery-1.3.2.min.js"></script>
    <script src="lib/layui/layui.js"></script>
    <script type="text/javascript" src="./js/xadmin.js"></script>
    <script type="text/javascript">

    </script>
</head>

<body>


<div class="x-body">
    <%--把表单封装成一个Admin对象传给服务端--%>
    <form class="layui-form" onsubmit="pwd()" id="f_auto" action="/updateAdmin" method="post">
        <input type="hidden" value="${sessionScope.a.a_id}" name="a_id" id="a_id" class="layui-input"/>
        <div class="layui-form-item">
            <label for="a_username" class="layui-form-label">
                <span class="">用户名</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="a_username" name="a_username"
                       autocomplete="off" value="${sessionScope.a.a_username}" class="layui-input" disabled>
            </div>
        </div>

        <div class="layui-form-item">
            <label for="a_password" class="layui-form-label">
                <span class="">密码</span>
            </label>
            <div class="layui-input-inline">
                <input type="password" id="a_password" name="a_password"
                       autocomplete="off" value="${sessionScope.a.a_password}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="a_name" class="layui-form-label">
                <span class="">姓名</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="a_name" name="a_name"
                       autocomplete="off" value="${sessionScope.a.a_name}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="a_phone" class="layui-form-label">
                <span class="">电话</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="a_phone" name="a_phone"
                       autocomplete="off" value="${sessionScope.a.a_phone}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="a_power" class="layui-form-label">
                <span class="">级别</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="a_power" name="a_power"
                       autocomplete="off" value="${sessionScope.a.a_power}" class="layui-input" disabled>
            </div>
        </div>

        <div class="layui-form-item">
            <label for="a_describe" class="layui-form-label">
                <span class="">级别描述</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="a_describe" name="a_describe"
                       autocomplete="off" value="${sessionScope.a.a_describe}" class="layui-input" disabled>
            </div>
        </div>


        <div class="layui-form-item" id="btn_xg">
            <button  class="layui-btn" id="btn_on"  lay-submit="" lay-filter="updateAdmin">
                修改
            </button>
        </div>
    </form>
</div>

<script>
    layui.use(['form','layer','laydate'], function(){
        var form = layui.form,
            $ = layui.jquery,
            laydate = layui.laydate;

        $("#f_auto")[0].reset();
        form.on('submit(updateAdmin)', function(data) {
            if ($("#a_password").val()=='${sessionScope.a.a_password}'){
                alert("请修改密码")
                return false;
            }

            return true;

        })

    });
</script>
</body>
</html>
