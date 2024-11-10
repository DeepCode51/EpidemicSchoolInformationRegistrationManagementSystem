<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加陌生人记录</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增陌生人信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/addstr" method="post">
        <div class="form-group">
            <label>姓名：</label><br>
            <input type="text" name="str_name" class="form-control" id="value">
        </div>
        <div class="form-group">
            <label>身份证号：</label>
            <input type="text" name="str_id" class="form-control" required>
        </div>
        <div class="form-group">
            <label>手机号：</label>
            <input type="text" name="str_phone" class="form-control" required>
        </div>
        <input type="text" value="已登记" name="str_state" hidden>
        <div class="form-group">
            <label>交通工具详情：</label>
            <textarea type="text" name="str_vech" class="form-control" required>

            </textarea>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="添加">
        </div>
    </form>

</div>

</body>
</html>
