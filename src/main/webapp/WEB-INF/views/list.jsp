<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@page import="com.example.patient.PatientDAO, com.example.patient.PatientVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/'+id;
	}
</script>
</head>
<body>
<h1>게시판</h1>
<h3><a href="../login/logout">logout</a></h3>
<table id="list" width="90%">
<tr>
	<th>번호</th>
	<th>이름</th>
	<th>나이</th>
	<th>성별</th>
	<th>전화번호</th>
	<th>주소</th>
	<th>증상</th>
	<th>처방</th>
	<th>등록일</th>
	<th>보기</th>
	<th>수정</th>
	<th>삭제</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.seq}</td>
		<td>${u.name}</td>
		<td>${u.age}</td>
		<td>${u.gender}</td>
		<td>${u.phone}</td>
		<td>${u.address}</td>
		<td>${u.sick}</td>
		<td>${u.heal}</td>
		<td>${u.regdate}</td>
		<td><a href="view/${u.seq}">View</a></td>
		<td><a href="editform/${u.seq}">Edit</a></td>
		<td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
	</tr>
</c:forEach>
</table>
<br/><a href="add">Add New Post</a>
</body>
</html>