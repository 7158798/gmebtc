<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<h2>this is index.jsp</h2>
<a href="/register.html">点击</a><br/>
<form action="/register.html" method="post">

    姓名:<input value="张三" name="name"/>
    <input type="submit" value="提交"/>
</form>
${name}
<h2><%= request.getAttribute("msg")%></h2>
<h2><%= request.getAttribute("locale")%></h2>
<h2><%= request.getAttribute("test")%></h2>

${msg}
</body>
</html>