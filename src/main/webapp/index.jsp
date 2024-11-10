<%@ page contentType="text/html;charset=UTF-8" language="java" %><html lang="en">
<head>
    <meta charset="UTF-8">
    <title>首页</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div style="margin: 60px 180px 10px">
                <button style="width: 49%;height: 80px"><a style="display: block" href="jsp/student/AddStudent.jsp">学生登记</a></button>
                <button style="width: 49%;height: 80px"><a href="jsp/teacher/AddTeacher.jsp">教职工登记</a></button>
            </div>
            <div style="margin: 10px 180px 10px">
                <button style="width: 49%;height: 80px"><a href="jsp/stranger/AddStranger.jsp">外来人员登记</a></button>
                <button style="width: 49%;height: 80px"><a href="jsp/UserExit.jsp">访客离开</a></button>
            </div>
            <div style="margin: 10px 180px 10px">
                <button style="width: 49%;height: 80px"><a href="/allstu">学生查询</a></button>
                <button style="width: 49%;height: 80px"><a href="/alltea">教职工查询</a></button>
            </div>
            <div style="margin: 10px 180px 10px">
                <button style="width: 49%;height: 80px"><a href="/allstr">外来人员查询</a></button>
                <button style="width: 49%;height: 80px"><a href="/allblack">查看黑名单</a></button>
            </div>
            <div style="margin: 10px 180px 10px">
                <button style="width: 49%;height: 80px"><a href="AddBlackUser.jsp">新增黑名单</a></button>
            </div>

        </div>
    </div>
</div>

</body>
</html>