<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示</title>

    <%--    BootStrap美化界面--%>

    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">


</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>外来人员信息列表</small>
                </h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 column">
                <form action="${pageContext.request.contextPath}/queryStr" method="post" style="float: right">
                    <input type="text" name="stu_num" class="from-control" placeholder="请输入要查询的学生学号">
                    <input type="submit" value="查询" class="btn btn-primary">
                </form>
            </div>
        </div>

    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>姓名</th>
                    <th>身份证</th>
                    <th>电话</th>
                    <th>状态</th>
                    <th>交通详情</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="stranger" items="${strangers}">
                    <tr>
                        <td>${stranger.str_name}</td>
                        <td>${stranger.str_id}</td>
                        <td>${stranger.str_phone}</td>
                        <td>${stranger.str_state}</td>
                        <td>${stranger.str_vech}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/delete/${stranger.str_name}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>

            </table>
        </div>
    </div>

</div>

</body>
</html>
