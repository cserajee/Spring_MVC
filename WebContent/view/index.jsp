<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css" />
<style type="text/css"> span{padding:5px;}</style>
<title>${message}</title>
</head>
<body>
<div class="col-md-6">
<div class="card bg-light  ">
  <div class="card-header">User Form</div>
<div class="card-body"> 
    
<form:form modelAttribute="user" action="displayInfo">
<table cellpadding="5" cellspacing="0" border="0" class="table table-bordered">
<tr>
<td>Name</td>
<td><form:input path="name" /></td>
</tr>
<tr>
<td>Gender</td>
<td>
	<!--   <label><form:radiobutton path="gender" value="male"/> Male </label>
	<label><form:radiobutton path="gender" value="female"/> Female </label>-->
	<form:radiobuttons path="gender" items="${genderMap}"/>
</td>
</tr>
<tr>
<td>Country</td>
<td><form:select path="country" items="${countryMap}"></form:select>  </td>
</tr>
<tr>
<td>Biodata</td>
<td><form:textarea path="biodata" /></td>
</tr>
<tr>
<td>Country Visited</td>
<td>
<form:checkboxes items="${countryMap}" path="countryVisited"/>
</td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="submit"/></td>
</tr>
</table>

</form:form>
</div>
</div>
</div>
</body>
</html>