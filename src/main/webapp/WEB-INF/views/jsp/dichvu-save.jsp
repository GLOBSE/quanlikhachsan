<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<title>Thêm dịch vụ</title>
</head>
<body>
	<a href="<c:url value="/dichvu-list" />">Danh sách dịch vụ:</a>
	<br />

	<h1>Thêm dịch vụ:</h1>
	<c:url value="/saveDichvu" var="saveDichvu" />
	<form:form action="${saveDichvu}" method="POST"
		modelAttribute="dichvu">
    	Mã dịch vụ: <form:input path="ma_dich_vu" />
		<br />
		<br />
    	Diễn giải: <form:input path="dien_giai" />
		<br />
		<br />
    	Đơn giá: <form:input path="don_gia" />
		<br />
		<br />
    	Đơn vị tính: <form:input path="don_vi_tinh" />
		<br />
		<br />
    	Ngày tạo: <form:input path="ngay_tao" />
		<br />
		<br />
    	Thuế suất: <form:input path="thue_suat" />
		<br />
		<br />
		<button type="submit">Submit</button>
	</form:form>

</body>
</html>