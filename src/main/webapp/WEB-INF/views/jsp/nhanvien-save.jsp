<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Insert information employees</title>
</head>
<body>
	<a href="<c:url value="/nhanvien-list" />" >List Employees</a><br />

	<h1>Add new Employees:</h1>
	<c:url value="/saveNhanvien" var="saveNhanvien"/>
	<form:form action="${saveNhanvien}" method="POST"
		modelAttribute="nhanvien">
    	Ten_Khach: <form:input path="ten_khach" /> <br/> <br/>
    	Cmnd_passport: <form:input path="cmnd_passport" /> <br/> <br/>
		<button type="submit">Submit</button>
	</form:form>

</body>
</html>