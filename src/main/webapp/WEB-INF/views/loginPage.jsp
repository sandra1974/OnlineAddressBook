<%-- 
    Document   : loginPage
    Created on : Jun 26, 2018, 10:18:27 AM
    Author     : sandra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
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
    <body >
	
<header>
    <div class="w3-bar w3-container  w3-card" id="myNavbar"  style="background-color: black; color: pink" >
        <div class="w3-top-left" style="font-size:35px;">
      <h1>ONLINE ADDRESS BOOK</h1>
      </div>
      </div>
 </header>
        
        
        <section>
       <div class="w3-display-middle w3-text-black" style="padding:48px">
           <center><h3><b>Please, enter your username and password for login</b></h3><br>
   
          <c:if test="${not empty error}"><div>${error}</div></c:if>
	<c:if test="${not empty message}"><div>${message}</div></c:if>

	<form name='login' action="<c:url value='/loginPage' />" method='POST'>
		<table align='center'>
			<tr>
				<td>User name:</td>
				<td><input type='text' name='username' value='' required oninvalid="this.setCustomValidity('Enter your username')" onchange="this.setCustomValidity('')"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type='password' name='password' required oninvalid="this.setCustomValidity('Enter your password')" onchange="this.setCustomValidity('')" /></td>
			</tr>
			<tr>
                            <td></td><td><input name="submit" type="submit" value="submit" />  &nbsp; <input type="reset" value="reset"/></td>
			</tr>
		</table>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form> 
      </center>
  </div> 
        </section>  
        

<footer>
   <p>Powered by <a href="http://www.javacoder4u.com" title="javacoder4u" target="_blank" class="w3-hover-text-green">javacoder4u</a></p>
</footer>

	
</body>
</html>
