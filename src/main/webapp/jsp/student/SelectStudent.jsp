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
                    <small>学生信息列表-----显示所有学生</small>
                </h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 column">
                <form action="${pageContext.request.contextPath}/queryStu" method="post" style="float: right">
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
                    <th>学生姓名</th>
                    <th>班级</th>
                    <th>学号</th>
                    <th>辅导员</th>
                    <th>手机号</th>
                    <th>交通详情</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="student" items="${students}">
                    <tr>
                        <td>${student.stu_name}</td>
                        <td>${student.stu_class}</td>
                        <td>${student.stu_num}</td>
                        <td>${student.stu_fudao}</td>
                        <td>${student.stu_phone}</td>
                        <td>${student.stu_vech}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/deletestu/${student.stu_name}">删除</a>
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
