<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2022/3/16
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加教师信息</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增黑名单</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/AddBlack" method="post">
        <div class="form-group">
            <label>姓名：</label><br>
            <input type="text" name="name" class="form-control" id="value">
        </div>
        <div class="form-group">
            <label>身份证号：</label>
            <input type="text" name="id" class="form-control" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="添加">
        </div>
    </form>

</div>

</body>
</html>
