<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix= "from" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>새로운 환자 추가</h1>
<form action="addok" method="post">
<table>
<tr><td>이름:</td><td><input type="text" name="name"/></td></tr>
<tr><td>나이:</td><td><input type="text" name="age"/></td></tr>
<tr><td>성별:</td><td><input type="text" name="gender"/></td></tr>
    <tr><td>전화번호:</td><td><input type="text" name="phone"/></td></tr>
    <tr><td>주소:</td><td><input type="text" name="address"/></td></tr>
    <tr><td>증상:</td><td><textarea cols="50" rows="3" name="sick"></textarea></td></tr>
    <tr><td>처방:</td><td><textarea cols="50" rows="3" name="heal"></textarea></td></tr>
<tr><td><a href="">View All Records</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
</table>
</form>

</body>
</html>