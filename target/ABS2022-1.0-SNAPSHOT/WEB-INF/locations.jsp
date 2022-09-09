<%--
  Created by IntelliJ IDEA.
  Date: 5/20/2021
  Time: 8:58 PM
  version: 202208
 
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <title>Location | Alberta Bike Swap</title>

        <!-- JS library -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js" integrity="sha384-NaWTHo/8YCBYJ59830LTz/P4aQZK1sS0SneOgAvhsIl3zBu8r9RevNg5lHCHAuQ/" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <link rel="stylesheet" type="text/css" href="assets/css/locations.css">

    </head>



    <body oncontextmenu="return false" onselectstart="return false" ondragstart="return false" oncopy="return false" ondrop="return false" onpaste="return false">

        <%@include file="header.jsp"%>

        <c:set var = "cityId" scope = "session" value = "${sessionScope.cityId}"/>
        <c:set var = "className" scope = "session" value = "${className}"/>
        <c:set var="path" value="${pageContext.request.contextPath}" />


        <!-- Upper section  -->
        <div class="container-fluid ${className} " id="cityPage">      

            <div class="container city">
                <div class="row justify-content-center ">

                    <div id="cityIdValue" style="display: none;">${cityId}</div>
                    <form action="${path}/locations" name="city" method="POST">

                        <select class="selectpicker city-option" aria-label=".form-select-lg example" id="cityId" name ="cityId" onchange="city.submit()" >
                            <option value="9" selected >Choose your location</option>
                            <option value="1" 
                                    <c:if test = "${cityId==1}">
                                        <c:out value = "selected"/></c:if>>Calgary</option>
                                    <option value="2"
                                    <c:if test = "${cityId==2}">
                                        <c:out value = "selected"/></c:if>>Lethbridge</option>
                                    <option value="3"
                                    <c:if test = "${cityId==3}">
                                        <c:out value = "selected"/></c:if>>Edmonton</option>
                            </select>
                        </form>


                        <div class="container city-row">

                            <div class="row">
                                <div class="col-sm-1 offset-md-3 city-info"><h4>Where: </h5></div>
                                <div class="col-sm"><h4 id="eventlocation"> ${location}</h4></div>
                            <div class="w-100"></div>
                            <div class="col-sm-1 offset-md-3 city-info"><h4>When:</h5></div>
                            <div class="col-sm"><h4 id="date"> ${when}</h4></div>
                            <div class="w-100"></div>
                            <div class="col-sm-1 offset-md-3 city-info"><h4>Consign: </h5></div>
                            <div class="col-sm"><h4 id="consign">${consign}</h4></div>
                            <div class="w-100"></div>
                            <div class="col-sm-1 offset-md-3 city-info"><h4>Buy: </h5></div>
                            <div class="col-sm"><h4 id="buy">${buy}</h4></div>
                            <div class="w-100"></div>
                            <div class="col-sm-1 offset-md-3 city-info"><h4>Donate: </h5></div>
                            <div class="col-sm"><h4 id="donate">${donate}</h4></div><br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End of Upper section -->  

        <!-- Middle Button Section -->
        <div class="container-md addon" >
            <div class="row">
                <div class="col text-center" >
                    <button type="button" class="btn btn-info" id="goFaq" onclick="window.location.href = '${path}/Faq'">Want to know more?</button>
                    <button type="button" class="btn btn-info" id="goFaq" onclick="savePDF()">Download Poster</button>
                </div>
            </div>
        </div>
        <!-- End of Button Section -->  


        <!-- Announcement Section -->
        <div class="container pb-3" >
            <h4 class="header">Announcement</h4>
            <div class="card mb-3 post shadow">
                <div class="container">
                    <div class="card row flex-row">
                        <div class="card-body">
                            <div class="card-header">
                                <h5 class="card-title" id="announcementTitle"> Have you seen this video?</h5>
                            </div>
                            <div class="card-body">
                                <blockquote class="blockquote mb-0">
                                    <p class="card-text postedon"><small class="text-muted">Posted on </small><small id="announcementDate"></small> 2022-01-01</p>
                                    <p class="card-text" id="announcementBody">AMA's video about our co-founder Chris and Laura Grant and the Alberta Bike Swap Event!</p>

                                    <div class="ratio ratio-16x9">
                                        <iframe
                                            src="https://www.youtube.com/embed/ZntnXr1p2p0"
                                            title="YouTube video"
                                            allowfullscreen
                                            ></iframe>
                                    </div>

                                   

                                </blockquote>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>


        <%@include file="footer.jsp"%>


        <!-- JavaScript function -->
        <script type="text/javascript" src="./assets/js/locationsPoster.js"></script>

        <!-- Optional Bootstrap JavaScript -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>



    </body>
</html>
