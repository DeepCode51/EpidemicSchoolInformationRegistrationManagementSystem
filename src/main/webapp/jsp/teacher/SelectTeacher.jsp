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
                    <small>教师信息列表-----显示所有教师</small>
                </h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 column">
                <form action="${pageContext.request.contextPath}/queryTea" method="post" style="float: right">
                    <input type="text" name="tea_num" class="from-control" placeholder="请输入要查询的教师号">
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
                    <th>教师号</th>
                    <th>教师姓名</th>
                    <th>教师学院</th>
                    <th>交通详情</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="teacher" items="${teachers}">
                    <tr>
                        <td>${teacher.tea_num}</td>
                        <td>${teacher.tea_name}</td>
                        <td>${teacher.tea_xueyuan}</td>
                        <td>${teacher.tea_vech}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/deletetea/${teacher.tea_name}">删除</a>
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
