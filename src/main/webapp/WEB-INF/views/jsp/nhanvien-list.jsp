<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Management employees hotel</title>
<style>
table, th, td {
	border: 3px solid black;
}
td {
	padding-right: 30px;
}
</style>
</head>
<body>
	<c:url value="/nhanvien-save" var="urlSave"/>
	<c:url value="/nhanvien-view/" var="urlView"/>
	<c:url value="/nhanvien-update/" var="urlUpdate"/>
	<c:url value="/nhanvienDelete/" var="urlDelete"/>
	<h1>List Employees:</h1>
	<a href="${urlSave}">Add Employees</a>
	<br />
	<br />


	<table>
		<tr>
			<th>Ma_khack</th>
			<th>Ten_khach</th>
			<th>Cmnd_passport</th>
			<th>View</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:if test="${not empty listNhanvien}">
			<c:forEach var="nhanvien" items="${listNhanvien}">
				<tr style="border: 1px black solid">
					<td>${nhanvien.ma_khach}</td>
					<td>${nhanvien.ten_khach}</td>
					<td>${nhanvien.cmnd_passport}</td>
					<td> <a href="${urlView}/${nhanvien.ma_khach}">View</a></td>
					<td> <a href="${urlUpdate}/${nhanvien.ma_khach}">Edit</a></td>
					<td> <a href="${urlDelete}/${nhanvien.ma_khach}">Delete</a></td>
				</tr>
			</c:forEach>
		</c:if>
	</table>

</body>
</html>