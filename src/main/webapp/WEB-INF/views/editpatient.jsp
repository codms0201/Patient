<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>
<form:form modelAttribute ="u" action="../editok" method="POST">
	<form:hidden path="seq"/>
	<table id="edit">
		<tr><td>이름:</td><td><form:input type="text" path="name"/></td></tr>
		<tr><td>나이:</td><td><form:input type="text" path="age"/></td></tr>
		<tr><td>성별:</td><td><form:input type="text" path="gender"/></td></tr>
		<tr><td>전화번호:</td><td><form:input type="text" path="phone"/></td></tr>
		<tr><td>주소:</td><td><form:input type="text" path="address"/></td></tr>
		<tr><td>증상:</td><td><form:textarea cols="50" rows="3" path="sick"/></td></tr>
		<tr><td>처방:</td><td><form:textarea cols="50" rows="3" path="heal"/></td></tr>
	</table>
	<input type="submit" value="Edit"/>
	<input type="button" value="Cancel" onclick="history.back()"
</form:form>

</body>
</html>