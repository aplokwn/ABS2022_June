<%-- 
    Document   : SafetyPage
    Created on : Feb 3, 2022, 4:07:14 PM
    Author     : 845593
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="assets/css/safety.css">

    <title>Safety | Alberta Bike Swap</title>
</head>
<body style="background: none;">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

    <%@include file="header.jsp"%>
    <script type="text/javascript">$('#safety').addClass('active')</script>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <div class="container safety-container">
        <h4 class="header">Great tips for safety</h4>

        <div class="row row-cols-1 row-cols-sm-2 g-4">
            <div class="col s12 m6">
                <div class="card text-dark bg-light h-100 shadow">
                    <div class="card-header"><h5 class="safety-title"><i class="bi bi-check-circle-fill me-3 safety"></i>USE YOUR BELL</h5></div>
                    <div class="card-body">
                        <p class="card-text">The real legal requirement is that you signal by voice, bell, or horn when
                            passing. It could prevent a pedestrian or other cyclist from an unexpected turn in front of
                            you.</p>
                    </div>
                </div>
            </div>
            <div class="col s12 m6">
                <div class="card text-dark bg-light h-100 shadow">
                    <div class="card-header"><h5 class="safety-title"><i class="bi bi-check-circle-fill me-3 safety"></i>SIDEWALKS ARE FOR WALKERS</h5></div>
                    <div class="card-body">
                        <p class="card-text">If you need to travel on the sidewalk, get off and walk your bike.  You'll
                            impress more people, and it's the law unless you're under the age of 14.</p>
                    </div>
                </div>
            </div>
            <div class="col s12 m6">
                <div class="card text-dark bg-light h-100 shadow">
                    <div class="card-header"><h5 class="safety-title"><i class="bi bi-check-circle-fill me-3 safety"></i>RIDE SINGLE FILE</h5></div>
                    <div class="card-body">
                        <p class="card-text">That's an Alberta Traffic Safety Act requirement and also practical advice so
                            that we give each rider room to dodge debris, pot holes, and other surprises.</p>
                    </div>
                </div>
            </div>
            <div class="col s12 m6">
                <div class="card text-dark bg-light h-100 shadow">
                    <div class="card-header"><h5 class="safety-title"><i class="bi bi-check-circle-fill me-3 safety"></i>YOU HAVE NO MORE PRIORITY THAN ANY OTHER USER</h5></div>
                    <div class="card-body">
                        <p class="card-text">Take your place on the road with the vehicles and earn the respect of fellow
                            users. If the road is just one car wide, act like a vehicle. Never put yourself in danger and
                            ride between moving or stopped cars, and never cycle between a car and the curb.</p>
                    </div>
                </div>
            </div>
            <div class="col s12 m6">
                <div class="card text-dark bg-light h-100 shadow">
                    <div class="card-header"><h5 class="safety-title"><i class="bi bi-check-circle-fill me-3 safety"></i>USE LIGHTS AND REFLECTORS</h5></div>
                    <div class="card-body">
                        <p class="card-text">At least one reflector on the rear and one light on the front, it's for your
                            safety and is the law. Also, lights must be used one hour after sunset until one hour before
                            sunrise or if conditions are such to obscure objects at 150m. Though Ninjas are cool, it's
                            dangerous to be a Ninja cyclist. </p>
                    </div>
                </div>
            </div>
            <div class="col s12 m6">
                <div class="card text-dark bg-light h-100 shadow">
                    <div class="card-header"><h5 class="safety-title"><i class="bi bi-check-circle-fill me-3 safety"></i>SIGNAL</h5></div>
                    <div class="card-body">
                        <p class="card-text">Another one of those being predictable things, and signal like you mean it,
                            not trying to knock something off your finger.  Take an Urban Cycling Skills or CAN BIKE II
                            course for the full lesson (check behind, signal, check behind, move)</p>
                    </div>
                </div>
            </div>
            <div class="col s12 m6">
                <div class="card text-dark bg-light h-100 shadow">
                    <div class="card-header"><h5 class="safety-title"><i class="bi bi-check-circle-fill me-3 safety"></i>RIDE PREDICTABLY</h5></div>
                    <div class="card-body">
                        <p class="card-text">Riding predictably is the best way to ensure your safety. Don't weave between
                            cars, signal your intent, stop at stop signs and red lights, don't cycle between cars, don't
                            cycle between a car and a curb... Bicycles are considered vehicles under the Alberta Traffic
                            Safety Act; if a car can't do it, neither can you on your bike.</p>
                    </div>
                </div>
            </div>
            <div class="col s12 m6">
                <div class="card text-dark bg-light h-100 shadow">
                    <div class="card-header"><h5 class="safety-title"><i class="bi bi-check-circle-fill me-3 safety"></i>STOP</h5></div>
                    <div class="card-body">
                        <p class="card-text">Stop means stop, just like we expect cars and trucks to stop. Seriously. (See
                            Ride predictably). Ask Laura about the cyclist that plowed into her while she was stopped at a
                            stop sign, the impact sheared Laura's molars off.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="footer.jsp"%>
</body>
</html>
