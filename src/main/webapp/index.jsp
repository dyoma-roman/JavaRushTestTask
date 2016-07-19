<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri ="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<h3>I'm shoked</h3>
<html>
<head>
  <title></title>
  <style type="text/css">
    .tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
    .tg td{font-family:Arial, sans-serif;font-size:12px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
    .tg th{font-family:Arial, sans-serif;font-size:12px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
    .tg
    .tg-4eph{background-color:#f9f9f9}
  </style>
</head>
<body>
<h3>Add a user</h3>

<sf:form  method="post" action="add" commandName="user">
  <table>
    <tr>
      <td>
        ID
      </td>
      <td>
        <sf:input path="id" readonly="true" size = "8" disable = "true" />
      </td>
    </tr>

    <tr>
      <td>
        <sf:label path="name">Name</sf:label>
      </td>
      <td>
        <sf:input path="name" />
      </td>
    </tr>

    <tr>
      <td>
        <sf:label path="age">Age</sf:label>
      </td>
      <td>
        <sf:input path="age"/>
      </td>
    </tr>

    <tr>
      <td>
        <sf:label path="isAdmin">Is Admin</sf:label>
      </td>
      <td>
        <sf:select path="isAdmin"/>
      </td>
    </tr>

    <tr>
      <td>
        <sf:label path="createdDate">Created Date</sf:label>
      </td>
      <td>
        <sf:input path="createdDate"/>
      </td>
    </tr>

    <tr>
      <td>
        <input type="submit" value="Add User"/>
      </td>
    </tr>
  </table>
</sf:form>

<h3> Users List</h3>

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


</body>
</html>
