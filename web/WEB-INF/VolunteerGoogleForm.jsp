<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alberta Bike Swap | Volunteer Register Page</title>
        <link rel="stylesheet" href="./assets/css/VolunteerGoogleStyle.css">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
             <link rel="stylesheet" type="text/css" href="assets/css/volunteer.css">
             
             <script>
            function toggleForm(form) {
                hideForm();
                document.getElementById(form).style.display = 'block';
            }    
            function hideForm(){
                document.getElementById("volunteerCalgary").style.display = 'none';
                document.getElementById("volunteerEdmonton").style.display = 'none';
                document.getElementById("volunteerLethbridge").style.display = 'none';
            }
        </script>
        <style>
            #title{
    background: url(../assets/img/header-bike-01.svg) no-repeat bottom center;
    background-size: 200px;
}
        </style>
    </head>
    <body>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
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
                <iframe src="https://docs.google.com/forms/d/e/1FAIpQLSdficrrgSed4uMsj13zpUlBORB_Z5y-xZVOaq6a9Q0DJ5DdVA/viewform?embedded=true" width="640" height="1491" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe>
                </div>
                <div id="volunteerEdmonton" class="volunteerForm">
                    <iframe src="https://docs.google.com/forms/d/e/1FAIpQLSea15o6cg42PkSFOkQ5tf6k7NSN7fpWo4ypfs-BA_ua9gNRYg/viewform?embedded=true" width="640" height="1193" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe>
                </div>
                <div id="volunteerLethbridge" class="volunteerForm">
                    <iframe src="https://docs.google.com/forms/d/e/1FAIpQLScTLs9SF2gQ0zc8Sv9Pf2VXnhIMTGOH4PIvQJDfflfwDZLFBQ/viewform?embedded=true" width="640" height="1007" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe>
                </div>
            </div>
           </div>
         <%@include file="footer.jsp"%>
    </body>
</html>
