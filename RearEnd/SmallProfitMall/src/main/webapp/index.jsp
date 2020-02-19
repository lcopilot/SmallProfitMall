<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/6
  Time: 0:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <a href="user/findAll">测试查询</a>

    <h3>测试包</h3>

    <form action="user/save" method="post">
        姓名：<input type="text" name="name" /><br/>
        密码：<input type="text" name="password" /><br/>
        性别：<input type="text" name="sex"/><br/>
        <input type="submit" value="保存"/><br/>
    </form>

</body>
</html>
