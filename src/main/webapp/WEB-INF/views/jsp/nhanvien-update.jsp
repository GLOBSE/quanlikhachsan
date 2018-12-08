<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Update information employees</title>
</head>
<body>
	<a href="<c:url value="/nhanvien-list" />">List Employees</a>
	<br />

	<h1>Edit Employees:</h1>
	<c:url value="/updateNhanvien" var="updateNhanvien" />
	<form:form action="${updateNhanvien}" method="POST" modelAttribute="nhanvien">
	    Ma_khach: <form:input path="ma_khach" readonly="true" /> <br/> <br/>
    	Ten_khach: <form:input path="ten_khach" /> <br/> <br/>
    	Cmnd_passport: <form:input path="cmnd_passport" /> <br/> <br/>
		<button type="submit">Submit</button>
	</form:form>

</body>
</html>