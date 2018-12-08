<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Display list employees </title>
</head>
<body>
	<a href="<c:url value="/nhanvien-list" />" >List Employees</a><br />
	<h1>View Employees:</h1>	
	Employees ID: ${nhanvien.ma_khach} <br/>
	Employees Name: ${nhanvien.ten_khach} <br/>
	Employees Address: ${nhanvien.cmnd_passport} <br/>
</body>
</html>