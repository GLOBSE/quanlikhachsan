<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<title>Quản lý khách sạn</title>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"></script>
<script src="resources/js/bootstrap/js/bootstrap.js"></script>
<script src="resources/js/bootstrap/js/moment.js"></script>
<script src="resources/js/bootstrap/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.12/datatables.min.js"></script>



</head>
<body>
  <c:url value="/dichvu-save" var="urlSave"/>
  <c:url value="/customer-view/" var="urlView"/>
  <c:url value="/customer-update/" var="urlUpdate"/>
  <c:url value="/customerDelete/" var="urlDelete"/>
  <h1>Danh sách dịch vụ:</h1>
  <a href="${urlSave}">Thêm dịch vụ</a>
  <br />
  <br />
  <table>
    <tr>
      <th>Mã dịch vụ</th>
      <th>Diễn giải</th>
      <th>Đơn Vị Tính</th>
      
      <th>Đơn giá</th>
      <th>Thuế suất</th>
      <th>Ngày tạo</th>
      <th>View</th>
      <th>Edit</th>
      <th>Delete</th>
    </tr>
    <c:if test="${not empty listDichvu}">
      <c:forEach var="dichvu" items="${listDichvu}">
        <tr style="border: 1px black solid">
          <td>${dichvu.ma_dich_vu}</td>
          <td>${dichvu.dien_giai}</td>
          <td>${dichvu.don_vi_tinh}</td>
          <td>${dichvu.don_gia}</td>
          <td>${dichvu.thue_suat}</td>
          <td>${dichvu.ngay_tao}</td>
       
          <td> <a href="${urlView}/${dichvu.ma_dich_vu}">View</a></td>
          <td> <a href="${urlUpdate}/${dichvu.ma_dich_vu}">Edit</a></td>
          <td> <a href="${urlDelete}/${dichvu.ma_dich_vu}">Delete</a></td>
        </tr>
      </c:forEach>
    </c:if>
  </table>
</body>
</html>