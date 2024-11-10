<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>访客离开</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>访客离开信息填写</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/userExit" method="post">
        <div class="form-group">
            <label>姓名:</label>
            <input type="text" name="name" class="form-control" required>
        </div>
        <div class="form-group">
            <select name="status" class="form-group">
                <option value="学生">学生</option>
                <option value="教师">教师</option>
                <option value="外来人员">外来人员</option>
            </select>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="删除">
        </div>
    </form>

</div>

</body>
</html>
