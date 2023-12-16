<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@page import="com.crud.patient.PatientDAO, com.crud.patient.PatientVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>환자 정보 상세 보기</title>
</head>
<body>

<h1>환자 정보 상세 보기</h1>
<p>이름: ${patientVO.name}</p>
<p>나이: ${patientVO.age}</p>
<p>성별: ${patientVO.gender}</p>
<p>전화번호: ${patientVO.phone}</p>
<p>주소: ${patientVO.address}</p>
<p>증상: ${patientVO.sick}</p>
<p>처방: ${patientVO.heal}</p>

<a href ="../list">Back</a>
</body>
</html>
