<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
<table id ="edit">
    <tr><td>이름:</td><td><input type="text" name="name"/></td></tr>
    <tr><td>나이:</td><td><input type="text" name="age"/></td></tr>
    <tr><td>성별:</td><td><input type="text" name="gender"/></td></tr>
    <tr><td>전화번호:</td><td><input type="text" name="phone"/></td></tr>
    <tr><td>주소:</td><td><input type="text" name="address"/></td></tr>
    <tr><td>증상:</td><td><textarea cols="50" rows="3" name="sick"></textarea></td></tr>
    <tr><td>처방:</td><td><textarea cols="50" rows="3" name="heal"></textarea></td></tr>
    <tr><td><a href="">View All Records</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
</table>
    <button type="button" onclick="location.href='list'">View All Records</button>
    <button type="submit">Add Post</button>
</form>

</body>
</html>