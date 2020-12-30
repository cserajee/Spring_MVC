<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form Information</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css" />
</head>
<body>

<div class="col-md-6">
<div class="card bg-light  ">
  <div class="card-header">User Info</div>
<div class="card-body"> 
    
<table cellpadding="5" cellspacing="0" border="0" class="table table-bordered">
<tr>
<td>Name</td>
<td>:</td>
<td><strong>${user.name}</strong></td>
</tr>
<tr>
<td>Gender</td>
<td>:</td>
<td><strong>${user.gender}</strong></td>
</tr>
<tr>
<td>Country</td>
<td>:</td>
<td><strong>${user.country}</strong></td>
</tr>
<tr>
<td valign="top">Biodata</td>
<td valign="top">:</td>
<td><strong>${user.biodata}</strong></td>
</tr>
<tr>
<td valign="top">Country Visited</td>
<td valign="top">:</td>
<td><strong><ul><c:forEach items="${user.countryVisited}" var="country"><li>${country}</li></c:forEach></ul></strong></td>
</tr>

</table>

</div>
</div>
</div>
</body>
</html>