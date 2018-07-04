<%-- 
    Document   : home
    Created on : Jun 26, 2018, 10:18:15 AM
    Author     : sandra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<style>
* {
    box-sizing: border-box;
}

body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: thistle;
}

header {
    background-color: black;
    height: 80px;
    
    font-size: 35px;
    color: pink;
    position: fixed;
    top:0;
    width: 100%;
  }

section {
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 130px;
    margin-top: 200px;
    overflow: auto;
     width: 80%;
     background-color: thistle;
    color: black;
   
}

footer {
    background-color: black;
     text-align: center;
    color: pink;
    position: fixed;
    left:0;
    bottom: 0;
    width:100%;
  
}

table {
    border-collapse:collapse;
    width:100%;
   bottom:20px;
}
th {
    background-color:lightsteelblue; 
}
td{
    text-align:left;
    padding:8px;
      background-color:lavender;
}
tr:nth-child(even) {
    background-color:lavender;
}
</style>
        
    </head>
    <body>
    
           
<header>
    <div class="w3-bar w3-container  w3-card" id="myNavbar"  style="background-color: black; color: pink" >
        <div class="w3-top-left" style="font-size:35px;">
      <h1>ONLINE ADDRESS BOOK</h1>
       <p style="font-size:15px;">Welcome, <c:out value="${pageContext.request.remoteUser}"/></p>
        </div>
    <!-- Hide right-floated links on small screens and replace them with a menu icon -->
   <div class="w3-display-topright w3-hide-small" style="font-size: 15px;">
       <a href="${pageContext.request.contextPath}/add/" class="w3-bar-item w3-button">ADD NEW CONTACT</a>
       <c:url value="/logout" var="logoutUrl" />
<form id="logout" action="${logoutUrl}" method="post" >
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>
<c:if test="${pageContext.request.userPrincipal.name != null}">
    <a href="javascript:document.getElementById('logout').submit()" class="w3-bar-item w3-button">LOGOUT</a>
</c:if>
    </div>
  </div>
</header>


<section>
   
      <h1><b>Search and display your contacts</b></h1>
           <p><b>Find your contact in easy and simple way.</b></p>
           
        <form method="GET" action="${pageContext.request.contextPath}/search">
            <div class="form-group">
                <label>Enter Text To Search:  </label><input type="text" name="pattern" class="form-control">
                <button type="submit" id="btn-search" onclick="SearchResult()">Search/Display</button>
            </div>
        </form>
  
            <center>
        <h1>Contact List</h1>
        <table align="center"   class="table table-bordered">
            <tr>
                 <th>Name</th>
                <th>Surname</th>
                <th>Address</th>
                <th>Phone</th>
                <th>Mobile</th>
                <th>Email</th>
                <th>Notes</th>
                <th>Action</th>
            </tr>

            <c:forEach var="person" items="${persons}">
                <tr> 
                    
                    <td>${person.name}</td>
                    <td>${person.surname}</td>
                    <td>${person.address}</td>
                    <td>${person.phone}</td>
                    <td>${person.mobile}</td>
                    <td>${person.email}</td>
                    <td>${person.notes}</td>
                    <td><a href="${pageContext.request.contextPath}/edit/${person.id}">Edit</a>
                        <a href="${pageContext.request.contextPath}/delete/${person.id}">Delete</a></td>

                </tr>
            </c:forEach>
        </table>
            </center>
          
</section>


<footer>
  <p>Powered by <a href="http://www.javacoder4u.com" title="javacoder4u" target="_blank" class="w3-hover-text-green">javacoder4u</a></p>
</footer>
   
    </body>
</html>
