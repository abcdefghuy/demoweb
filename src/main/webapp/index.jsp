<%--
    Document   : Thank
    Created on : Aug 28, 2024, 11:06:06 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="./assets/style.css" type="text/css"/>
</head>

<body>
<h1>Thanks for joining our email list</h1>

<p>Here is the information that you entered:</p>

<label>Email:</label>
<span>${user.email}</span><br>
<label>First Name:</label>
<span>${user.firstName}</span><br>
<label>Last Name:</label>
<span>${user.lastName}</span><br>
<label>BirthDate:</label>
<span>${user.dateOfBirth}</span><br>
<label style="width: 11em">You heard about us via:</label>
<span>${answer}</span><br>

<h3>Selected Announcements:</h3>

<div class="results">
    <!-- Hiển thị dữ liệu HTML đã được xử lý từ Servlet -->
    <ul>
       ${announcements}
    </ul>
</div>



<h3>Selected Contact Methods:</h3>
<div class="results">
    <ul> <li>${contact}</li> </ul>
</div>
<p>To enter another email address, click on the Back
    button in your browser or the Return button shown
    below.</p>



<form action="" method="get">
    <input type="hidden" name="action" value="join">
    <input type="submit" value="Return">
</form>

</body>
</html>

