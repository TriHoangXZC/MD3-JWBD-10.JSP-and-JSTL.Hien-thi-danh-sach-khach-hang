<%@ page import="java.util.List" %>
<%@ page import="com.codegym.model.Customer" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 3/3/2022
  Time: 11:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>$Title$</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<%
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer("Mai Van Hoan", "1983-08-20", "Ha Noi", "/static/img/download.jpeg"));
    customers.add(new Customer("Nguyen Van Nam", "1983-08-21", "Bac Giang", "/static/img/download.jpeg"));
    customers.add(new Customer("Nguyen Thai Hoa", "1983-08-22", "Nam Dinh", "/static/img/download.jpeg"));
    customers.add(new Customer("Tran Dang Khoa", "1983-08-17", "Ha Tay", "/static/img/download.jpeg"));
    customers.add(new Customer("Nguyen Dinh Thi", "1983-08-19", "Ha Noi", "/static/img/download.jpeg"));
    pageContext.setAttribute("ListCustomer", customers);
%>
<table class="table">
    <thead>
    <tr>
        <th scope="col">Tên</th>
        <th scope="col">Ngày sinh</th>
        <th scope="col">Địa chỉ</th>
        <th scope="col">Img</th>
    </tr>
    </thead>
    <tbody>
<c:forEach var="customer" items="${ListCustomer}">
    <tr>
        <th scope="row">${customer.getName()}</th>
        <td>${customer.getDob()}</td>
        <td>${customer.getAddress()}</td>
        <td><img src="${customer.getImg()}" alt="Ảnh sản phẩm" width="50" height="50"></td>
    </tr>
</c:forEach>
    </tbody>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
