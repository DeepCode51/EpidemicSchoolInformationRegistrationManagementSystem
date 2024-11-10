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
                    <small>新增教师信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/addtea" method="post">
        <div class="form-group">
            <label>教师号:</label>
            <input type="text" name="tea_num" class="form-control" required>
        </div>
        <div class="form-group">
            <label>姓名：</label><br>
            <input type="text" name="tea_name" class="form-control" id="value">
        </div>
        <div class="form-group">
            <label>学院：</label>
            <input type="text" name="tea_xueyuan" class="form-control" required>
        </div>
        <div class="form-group">
            <label>交通工具详情：</label>
            <textarea type="text" name="tea_vech" class="form-control" required>

            </textarea>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="添加">
        </div>
    </form>

</div>

</body>
</html>
