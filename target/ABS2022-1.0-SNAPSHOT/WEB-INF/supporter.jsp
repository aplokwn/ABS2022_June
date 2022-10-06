<%-- 
    Document   : supporter
    Created on : Feb 17, 2022, 1:31:11 PM
    Author     : 845593
    version: 202208
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="assets/css/supporters.css">
    <title>Alberta Bike Swap | Strategic Alliances </title>
</head>

<body oncontextmenu="return false" onselectstart="return false" ondragstart="return false" oncopy="return false" ondrop="return false" onpaste="return false">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<%@include file="header.jsp"%>
<div class="container">
    <%--page title--%>
    <h4 class="title">We couldn't have done it without you</h4>
    <%--main alliances group div--%>
    <div class="row row-cols-sm-3 g-5 inline-row">
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/Exhibition-Park.png')"></div>
                <a class="btn arrow" target="_blank" href="https://agrifoodhub.ca/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/MacEwan-University-logo.png')"></div>
                <a class="btn arrow" target="_blank" href="https://www.macewan.ca/wcm/index.htm">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/Primaris_Logo.jpg')"></div>
                <a class="btn arrow" target="_blank" href="https://www.primarisreit.com/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/VeloCanada.jpg')"></div>
                <a class="btn arrow" target="_blank" href="https://www.velocanadabikes.org/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/Bike-Index.png')"></div>
                <a class="btn arrow" target="_blank" href="https://bikeindex.org/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/AMALogo.jpg')"></div>
                <a class="btn arrow" target="_blank" href="https://ama.ab.ca/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>

    </div>
    <%--second alliances group div--%>
    <div class="row row-cols-sm-4 g-4 inline-row">
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/You-Can-Ride-2-Final-Solution-Main-Logo-ok.png')"></div>
                <a class="btn arrow" target="_blank" href="https://youcanride2.ca/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/Stollery_LifeCycle-Logo-Stacked-Colour.png')"></div>
                <a class="btn arrow" target="_blank" href="https://www.lifecycleforkids.com/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/logo-Alberta-Childrens-Hospital-Foundation.png')"></div>
                <a class="btn arrow" target="_blank" href="https://www.childrenshospital.ab.ca/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/CalgaryFoodBank_Logo.png')"></div>
                <a class="btn arrow" target="_blank" href="https://www.calgaryfoodbank.com/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/image-3.png')"></div>
                <a class="btn arrow" target="_blank" href="https://youthcentral.com/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/optimist_red_deer.png')"></div>
                <a class="btn arrow" target="_blank" href="https://www.facebook.com/optimistclubofreddeer/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/image-1.png')"></div>
                <a class="btn arrow" target="_blank" href="https://www.bikereddeer.com/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/MH-Cycle-Co-Op.png')"></div>
                <a class="btn arrow" target="_blank" href="https://www.facebook.com/mhcyclecoop/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/mats_bike_repair.png')"></div>
                <a class="btn arrow" target="_blank" href="https://www.matsbikerepair.ca/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/image.jpeg')"></div>
                <a class="btn arrow" target="_blank" href="https://www.rainforestab.ca/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/LocalBillboards.ca_.png')"></div>
                <a class="btn arrow" target="_blank" href="https://www.localbillboards.ca/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/B_P-Bike-2021-Black-Ink.png')"></div>
                <a class="btn arrow" target="_blank" href="https://www.bpcycle.com/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/Full_Color-3.png')"></div>
                <a class="btn arrow" target="_blank" href="https://earthware.me/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/Logo2019.png')"></div>
                <a class="btn arrow" target="_blank" href="https://bikeroot.ca/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/community_now_magazine.png')"></div>
                <a class="btn arrow" target="_blank" href="https://communitynowmagazine.com/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/ose-Logo.png')"></div>
                <a class="btn arrow" target="_blank" href="https://www.calgarydollars.ca/openstreetsevents">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/image.png')"></div>
                <a class="btn arrow" target="_blank" href="https://localpropeller.ca/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/branchout-logo.png')"></div>
                <a class="btn arrow" target="_blank" href="https://www.branchoutfoundation.com/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/bowcycle.png')"></div>
                <a class="btn arrow" target="_blank" href="https://www.bowcycle.com/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/new-dog-1.png')"></div>
                <a class="btn arrow" target="_blank" href="https://www.newdog.ca/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/Captivate.png')"></div>
                <a class="btn arrow" target="_blank" href="https://www.captivate.ca/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/TourAlberta_ACF.png')"></div>
                <a class="btn arrow" target="_blank" href="https://touralbertaforcancer.ca/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/CP-Kids.jpg')"></div>
                <a class="btn arrow" target="_blank" href="https://www.calgarycp.org/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/Sport-Central.png')"></div>
                <a class="btn arrow" target="_blank" href="https://www.sportcentral.org/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/Artboard-1textonly-1.png.png')"></div>
                <a class="btn arrow" target="_blank" href="https://diversesports.ca/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/B4H.jpg')"></div>
                <a class="btn arrow" target="_blank" href="https://b4h-calgary.org/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/BikeEdmonton.jpg')"></div>
                <a class="btn arrow" target="_blank" href="https://bikeedmonton.ca/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/prohab.png')"></div>
                <a class="btn arrow" target="_blank" href="https://prohab.ca/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/Cal.jpg')"></div>
                <a class="btn arrow" target="_blank" href="https://calscycle.ca/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/Two_Wheel_View.png')"></div>
                <a class="btn arrow" target="_blank" href="https://www.twowheelview.org/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/Bikebridge_vector-logo.png')"></div>
                <a class="btn arrow" target="_blank" href="https://bikebridge.ca/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/bikecalgarylogo.png')"></div>
                <a class="btn arrow" target="_blank" href="https://bikecalgary.org/">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>
        <div class="supporters-box">
            <div class="col card shadow">
                <div class="supporters-img" style="background-image: url('assets/img/supporters/CityofCalgary.jpg')"></div>
                <a class="btn arrow" target="_blank" href="https://www.calgary.ca/home.html">
                    <img src="assets/img/supporters/suit-heart-fill.svg" class="img-fluid mt-2">
                </a>
            </div>
        </div>


    </div>
</div>

<%@include file="footer.jsp"%>
</body>
</html>
