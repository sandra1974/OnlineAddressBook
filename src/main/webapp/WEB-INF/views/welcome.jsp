<%-- 
    Document   : welcome
    Created on : Jun 26, 2018, 10:19:31 AM
    Author     : sandra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<title>Welcome</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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


<body>

  
<header>
    <div class="w3-bar w3-container  w3-card" id="myNavbar"  style="background-color: black; color: pink" >
        <div class="w3-top-left" style="font-size:35px;">
      <h1>ONLINE ADDRESS BOOK</h1>
        </div>
      </div>
 </header>
 

<section>
  <div class="w3-display-left w3-text-black" style="padding:48px">
      <span class="w3-jumbo w3-hide-small"><b>Welcome to your contact database</b></span><br>
      <span class="w3-xxlarge w3-hide-large w3-hide-medium"><b>Welcome to your contact database</b></span><br>
      <span class="w3-large"><b>Keep in touch with your family, friends, business partners having all contacts at one, secure place.</b></span>
    <p><a href="${pageContext.request.contextPath}/loginPage" class="w3-button w3-text-pale-red w3-black w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-opacity-off">LOGIN</a></p>
    </div> 
</section>


<footer>
    <p>Powered by <a href="http://www.javacoder4u.com" title="javacoder4u" target="_blank" class="w3-hover-text-green">javacoder4u</a></p>
</footer>

</body>
</html>
