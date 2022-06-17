<%-- 
    Document   : aboutUsPage
    Created on : Feb 3, 2022, 4:08:14 PM
    Author     : 845593
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="assets/css/info.css">
    <title>About Us | Alberta Bike Swap</title>
</head>
<body style="background: none">
    <%@include file="header.jsp"%>
    <script>$('#about').addClass('active')</script>

    <div class="container pb-3 main">
        <div class="card mb-3 shadow about-card">
            <div class="row g-3">
                <div class="col text-center about-img">
                    <img class="img-fluid" src="assets/img/us.jpg" alt="Chris and Laura">
                </div>

                <div class="col-md-8 about-text">
                    <div class="card-body">
                        <div class="row justify-content-center">
                            <blockquote>
                                <h5 class="card-title about-caption" id="announcementTitle">Chris & Laura Grant<br><span>Founders</span></h5>
                            </blockquote>
                            <p class="card-text">We have learned the world is powered by those who dare to act on an idea.
                                I glanced over at another cyclist while cycle commuting in January 2005,
                                spoke to him at the bike racks while ogling his 24 Hours of Adrenaline jacket,
                                and Chris and I have been together since.
                                While cycling home in December 2009 we were discussing a cyclist that had blown through a stop sign that nearly took us out and our conversation drifted to what had happened the week prior.
                                I was out with friend looking at a $10k full carbon road bike in an unfurnished basement, we didn&#8217;t feel safe.
                                Chris was selling one of our bikes, but the person buying the bike was looking at everything else in our garage,
                                except the bike, and our garage was broken into a few days later.
                                While cycling home single file, I signalled right to turn right and another cyclist passed me on the right.
                                We went home and sketched out a safe way to buy and sell bikes and fund safe cycling in the province.</p>
                            <p class="card-text">We&#8217;ve always donated more than half the profit back to the community,
                                the other half stays in the bank to fund more bike swap events.
                                We also designed and patented bike racks to help promote cycling,
                                designed and expand our processes every swap to continually improve flow through,
                                designed fit-for-purpose software, and the rest is history.
                                One of our volunteers counted 4600 people in line in 2015 and we estimate that we had over 15,000 attendees in 2019 at our last swap.</p>
                            <p class="card-text">In real life Chris is an engineer and Laura worked in software, and we fund these swaps out of our life savings.
                                We also spend 10-20 hours/week year round on the bike swaps, spend at least $15-42K/year to operate the swaps.
                                The bike swaps are a labour of love, we do them because we both know that bicycles are empowering.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@include file="footer.jsp"%>
</body>
</html>
