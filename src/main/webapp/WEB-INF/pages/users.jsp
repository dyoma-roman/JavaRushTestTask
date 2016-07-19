
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title></title>
  <style type="text/css">
    .tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
    .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
    .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
    .tg
    .tg-4eph{background-color:#f9f9f9}
  </style>
</head>
<body>

<h1> Users List</h1>

  <table class="tg">
    <tr>
      <th width="80">ID</th>
      <th width="120">User Name</th>
      <th width="120">User Age</th>
      <th width="60">Is Admin</th>
      <th width="60">Created Date</th>
      <th width="60">Edit</th>
      <th width="60">Delete</th>
    </tr>
  <tr>
    <td>${user.id}</td>
    <td>${user.name}</td>
    <td>${user.age}</td>
    <td>${user.admin}</td>
    <td>${user.createdDate}</td>
    <td><a href= "<c:url value='/edit/${user.id}'/>"></a>Edit</td>
    <td><a href= "<c:url value='/remove/${user.id}'/>"></a>Delete</td>
  </tr>
  </table>


<h1>Add a user</h1>
<c:url var="addAction" value="/users/add">

</c:url>


</body>
</html>
