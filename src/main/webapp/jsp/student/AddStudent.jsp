<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加同学记录</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增学生信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/addstu" method="post">
        <div class="form-group">
            <label>学号:</label>
            <input type="text" name="stu_num" class="form-control" required>
        </div>
        <div class="form-group">
            <label>姓名：</label><br>
            <input type="text" name="stu_name" class="form-control" id="value">
        </div>
        <div class="form-group">
            <label>班级：</label>
            <input type="text" name="stu_class" class="form-control" required>
        </div>
        <div class="form-group">
            <label>手机号：</label>
            <input type="text" name="stu_phone" class="form-control" required>
        </div>
        <div class="form-group">
            <label>辅导员：</label>
            <input type="text" name="stu_fudao" class="form-control" required>
        </div>
        <div class="form-group">
            <label>交通工具详情：</label>
            <textarea type="text" name="stu_vech" class="form-control" required>

            </textarea>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="添加">
        </div>
    </form>

</div>

</body>
</html>
