<%--
  Header,nav bar of the website. Google function added here
  User: 794980
  Date: 5/21/2021
  Time: 2:14 PM
  version: 202206
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!--Favicon-->
    <link rel="apple-touch-icon" sizes="180x180" href="assets/favicons/apple-touch-icon.png" />
    <link rel="icon" type="image/png" href="assets/favicons/favicon-32x32.png" sizes="32x32" />
    <link rel="icon" type="image/png" href="assets/favicons/favicon-16x16.png" sizes="16x16" />
    <link rel="manifest" href="assets/favicons/manifest.json" />
    <link rel="mask-icon" href="assets/favicons/safari-pinned-tab.svg" color="#5bbad5" />

    <meta name="theme-color" content="#ffffff" />
  
  <!-- Google Tag Manager -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-TZTQN39');</script>
<!-- End Google Tag Manager -->

  
</head>

<body>
  <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TZTQN39"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
    
    <script type="text/javascript" src="assets/script/header_footer.js"></script>
    <c:set var="path" value="${pageContext.request.contextPath}" />

    <main>
        <div class="row nav nav-header">
            <div class="nav-header-btn col-2">
                <div class="hamburger hamburger--spin">
                <span id="hamburger-box">
                  <span></span>
                  <span></span>
                  <span></span>
                  <span></span>
                </span>
                </div>
            </div>

            <!--nav Logo-->
            <div class="col col-10 col-lg-2 nav-logo">
                <img src="assets/img/header_footer/logo-01.svg" alt="Alberta Bike Swap Logo" />
            </div>

            <div class="col col-xl-9 nav-menu">
                <div class="row">
                    <div class="col col-1 nav-header-item">
                        <a href="${path}/locations" id="nav-home">
                            <div class="nav-item-inline">
                                <img src="assets/img/header_footer/home.svg" alt="home" />
                                <label>HOME</label>
                                <div class="nav-slider" id="home"></div>
                            </div>
                        </a>
                    </div>

                    <div class="col col-2 nav-header-item">
                        <a href="${path}/Faq">
                            <div class="nav-item-inline">
                                <img src="assets/img/header_footer/info.svg" alt="info" />
                                <label>INFO</label>
                                <div class="nav-slider" id="info"></div>
                            </div>
                        </a>
                    </div>

                    <div class="col col-2 nav-header-item">
                        <a href="${path}/Supporter">
                            <div class="nav-item-inline">
                                <img src="assets/img/header_footer/supporters.svg" alt="supporters" />
                                <label>STRATEGIC ALLIANCES</label>
                                <div class="nav-slider" id="supporters"></div>
                            </div>
                        </a>
                    </div>

                    <div class="col col-2 nav-header-item">
                        <a href="${path}/Volunteer">
                            <div class="nav-item-inline">
                                <img src="assets/img/header_footer/volunteer.svg" alt="volunteer" />
                                <label>VOLUNTEER</label>
                                <div class="nav-slider" id="volunteer"></div>
                            </div>
                        </a>
                    </div>
                           
                    <div class="col col-2 nav-header-item">
                        <a href="${path}/BikeInventory">
                            <div class="nav-item-inline">
                                <img src="assets/img/header_footer/bike.svg" alt="volunteer" />
                                <label>BIKE LIVE FEED</label>
                                <div class="nav-slider" id="BikeInfoPage"></div>
                            </div>
                        </a>
                    </div>

                    <div class="col col-1 nav-header-item">
                        <a href="${path}/Safety">
                            <div class="nav-item-inline">
                                <img src="assets/img/header_footer/safety.svg" alt="safety" />
                                <label>SAFETY</label>
                                <div class="nav-slider" id="safety"></div>
                            </div>
                        </a>
                    </div>

                    <div class="col col-2 nav-header-item">
                        <a href="${path}/AboutUs">
                            <div class="nav-item-inline">
                                <img src="assets/img/header_footer/about.svg" alt="about" />
                                <label>ABOUT</label>
                                <div class="nav-slider" id="about"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </main>
</body>
</html>

