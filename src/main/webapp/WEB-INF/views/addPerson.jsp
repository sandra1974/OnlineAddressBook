<%-- 
    Document   : addPerson
    Created on : Jun 26, 2018, 10:17:35 AM
    Author     : sandra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Contact</title>
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
     width: 100%;
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
       <a href="${pageContext.request.contextPath}/home" class="w3-bar-item w3-button">CANCEL</a>
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

       
<center>
  <div class="w3-display-middle w3-text-black" style="padding:48px">
      <div style="margin-left: 70px; margin-top: 100px; width:100%"> 
        <h1>Add Contact</h1>
       <form method="post" action="${pageContext.request.contextPath}/save?${_csrf.parameterName}=${_csrf.token}">
           <table style="width:100%">
               <tr>
                <td>Name</td>
                <td><input type="text" name="name"  required oninvalid="this.setCustomValidity('Enter name')" onchange="this.setCustomValidity('')" size="100" ></td>
                </tr>

            <tr>
                <td>Surname</td>
                <td><input type="text" name="surname"  required oninvalid="this.setCustomValidity('Enter surname')" onchange="this.setCustomValidity('')" size="100"></td>
            </tr>

            <tr>
                <td>Address</td>
                <td> <input type="text" name="address"  required oninvalid="this.setCustomValidity('Enter address')" onchange="this.setCustomValidity('')"  size="100"  > </td>
            </tr>

           
            <tr>
                <td>Phone</td>
                <td><input type="text" name="phone" required oninvalid="this.setCustomValidity('Enter phone number')" onchange="this.setCustomValidity('')"  size="100" ></td>
            </tr>
           
           
            <tr>
                <td>Mobile</td>
                <td><input type="text" name="mobile"   required oninvalid="this.setCustomValidity('Enter mobile number')" onchange="this.setCustomValidity('')"  size="100" ></td>
            </tr>
           
            <tr>
                <td>Email</td>
                <td><input type="text" name="email"  required oninvalid="this.setCustomValidity('Enter email')" onchange="this.setCustomValidity('')"  size="100" ></td>
            </tr>
           
            <tr>
                <td>Notes</td>
               <td> <input type="text" name="notes"   required oninvalid="this.setCustomValidity('Enter notes')" onchange="this.setCustomValidity('')"  size="100" ></td>
            </tr>
            <tr><td></td>
            <td><input name="submit" type="submit" value="Add Contact" />&nbsp; <input type="reset" value="Reset"/></td>
            </tr>
            </table>
        </form> 
              </div>
  </div> 
</center>

</section>
           

<footer>
 <p>Powered by <a href="http://www.javacoder4u.com" title="javacoder4u" target="_blank" class="w3-hover-text-green">javacoder4u</a></p>
</footer>

        
    </body>
</html>
