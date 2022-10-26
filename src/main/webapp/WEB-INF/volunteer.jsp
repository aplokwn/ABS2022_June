<%-- 
    Document   : volunteer.jsp, volunteer form summary page
    Created on : Feb 17, 2022, 1:30:54 PM
    Author     : 845593
    version: 202208
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Alberta Bike Swap | Volunteer Register Page</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">


    <!-- JS library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <link rel="stylesheet" type="text/css" href="assets/css/VolunteerGoogleStyle.css">


</head>
<body>

<%@include file="header.jsp"%>
<div class="first_container container">
    <h4 id="title">Volunteer. Make a difference.</h4>
    <!--            Everything below can be commented out when no sign ups are available-->
    <h3 id="subtitle">Select what city you would like to volunteer in:</h3>
    <div id="volunteerCityChoice">
        <input type="button" value="Calgary" class="formCityOption" onclick='toggleForm("volunteerCalgary")'>
        <input type="button" value="Edmonton" class="formCityOption" onclick='toggleForm("volunteerEdmonton")'>
        <input type="button" value="Lethbridge" class="formCityOption" onclick='toggleForm("volunteerLethbridge")'>
    </div>
    <!--            Update the google form src with the new form for each city each year. The rest should stay the same -->
    <div id="volunteerFormWrapper">
        <div id="volunteerCalgary" class="volunteerForm">
            <iframe src="https://docs.google.com/forms/d/e/1FAIpQLSfcQnSqVXSRXQR0FI9jFLWre5u9is4ToDuFspIoWoy-3HVzww/viewform?embedded=true" width="640" height="1491" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe>
        </div>
        <div id="volunteerEdmonton" class="volunteerForm">
            <iframe src="https://docs.google.com/forms/d/e/1FAIpQLSfkUBzdupCCUrg8rQVgu_Rk090NYnYolDAN4YKBTTkhfSBL4A/closedform?embedded=true" width="640" height="1193" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe>
        </div>
        <div id="volunteerLethbridge" class="volunteerForm">
            <iframe src="https://docs.google.com/forms/d/e/1FAIpQLSez5ffBSmDk2_3Kl6LPDTGmeEq1z9In3qnkicm1DMgnDIFqAQ/closedform?embedded=true" width="640" height="1007" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe>
        </div>
    </div>
</div>


<%@include file="footer.jsp"%>

<!-- JavaScript function -->
<script type="text/javascript" src="./assets/js/toggleVolunteer.js"></script>

</body>
</html>
