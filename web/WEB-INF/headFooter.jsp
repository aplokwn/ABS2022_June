<%--
  Created by IntelliJ IDEA.
  User: 794980
  Date: 5/21/2021
  Time: 2:14 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    />
    <link
            href="https://fonts.googleapis.com/icon?family=Material+Icons"
            rel="stylesheet"
    />
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css"
            rel="stylesheet"
    />
    <link rel="stylesheet" href="assets/css/header_footer.css" />

    <!--Favicon-->
    <link
            rel="apple-touch-icon"
            sizes="180x180"
            href="assets/favicons/apple-touch-icon.png"
    />
    <link
            rel="icon"
            type="image/png"
            href="assets/favicons/favicon-32x32.png"
            sizes="32x32"
    />
    <link
            rel="icon"
            type="image/png"
            href="assets/favicons/favicon-16x16.png"
            sizes="16x16"
    />
    <link rel="manifest" href="assets/favicons/manifest.json" />
    <link
            rel="mask-icon"
            href="assets/favicons/safari-pinned-tab.svg"
            color="#5bbad5"
    />
    <meta name="theme-color" content="#ffffff" />

    <title>Calgary | Alberta Bike Swap</title>
</head>

<body>
<!--<main>-->
    <div class="row nav">
        <div class="nav-btn col-2">
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

        <div class="col col-lg-8 nav-menu">
            <div class="row">
                <div class="col col-sm-2 nav-item">
                    <a href="${path}" id="nav-home">
                        <div class="nav-item-inline">
                            <img src="assets/img/header_footer/home.svg" alt="home" />
                            <label>HOME</label>
                            <div class="nav-slider"></div>
                        </div>
                    </a>
                </div>

                <div class="col col-sm-2 nav-item">
                    <a href="${path}/info">
                        <div class="nav-item-inline">
                            <img src="assets/img/header_footer/info.svg" alt="info" />
                            <label>INFO</label>
                            <div class="nav-slider"></div>
                        </div>
                    </a>
                </div>

                <div class="col col-sm-2 nav-item">
                    <a href="${path}/supporters">
                        <div class="nav-item-inline">
                            <img src="assets/img/header_footer/supporters.svg" alt="supporters" />
                            <label>SUPPORTERS</label>
                            <div class="nav-slider active"></div>
                        </div>
                    </a>
                </div>

                <div class="col col-sm-2 nav-item">
                    <a href="${path}/volunteer">
                        <div class="nav-item-inline">
                            <img src="assets/img/header_footer/volunteer.svg" alt="volunteer" />
                            <label>VOLUNTEER</label>
                            <div class="nav-slider"></div>
                        </div>
                    </a>
                </div>

                <div class="col col-sm-2 nav-item">
                    <a href="${path}/safety">
                        <div class="nav-item-inline">
                            <img src="assets/img/header_footer/safety.svg" alt="safety" />
                            <label>SAFETY</label>
                            <div class="nav-slider"></div>
                        </div>
                    </a>
                </div>

                <div class="col col-sm-2 nav-item">
                    <a href="${path}/about">
                        <div class="nav-item-inline">
                            <img src="assets/img/header_footer/about.svg" alt="about" />
                            <label>ABOUT</label>
                            <div class="nav-slider"></div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
<!--</main>-->

<div class="loader">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

</div>
<!--footer-->

<footer>
    <img src="assets/img/header_footer/footer-bike-01.svg" class="footer-bike" />

    <div class="footer row">
        <div class="col col-12 col-lg-3 footer-logo">
            <img src="assets/img/header_footer/logo-01.svg" alt="Alberta Bike Swap logo" />
        </div>

        <div class="col col-12 col-lg-9 footer-content">
            <div class="row" style="margin: 0;">
                <!--FORM-->
                <div
                        class="col col-12 col-md-6 footer-form"
                        style="overflow: visible;"
                >
                    <h5 class="footer-title">Message us</h5>
                    <div>
                        <div role="form" lang="en-CA" dir="ltr">
                            <div class="screen-reader-response"></div>
                            <form
                                    action=""
                                    method="post"
                                    class="footer-form"
                                    novalidate="novalidate"
                            >
                                <div class="input-field">
                                    <i class="material-icons prefix">account_circle</i>
                                    <input
                                            type="text"
                                            name="id:footer-name"
                                            size="40"
                                            class="validate"
                                    />
                                    <label for="footer-name">Name</label>
                                </div>

                                <div class="input-field">
                                    <i class="material-icons prefix">email</i>
                                    <input
                                            type="email"
                                            name="id:footer-email"
                                            size="40"
                                            class="validate"
                                    />
                                    <label for="footer-email">Email</label>
                                </div>

                                <div class="input-field">
                                    <i class="material-icons prefix">mode_edit</i>
                                    <textarea
                                            name="id:footer-message"
                                            cols="40"
                                            rows="6"
                                            class=""
                                    ></textarea>
                                    <label for="footer-message">Message</label>
                                </div>

                                <div class="row">
                                    <div class="col col-lg-8 col-md-12 col-12">
                                        [recaptcha size:normal]
                                    </div>
                                    <div
                                            class="col l4 col-md-12 col-12 button-container"
                                            style="padding-top: 21px;"
                                    >
                                        <input type="submit" value="Send" class="btn btn-lg" />
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <!--VIDEO-->
                <div class="col s12 m6">
                    <div class="footer-connect">
                        <h5 class="footer-title">Connect with us</h5>
                        <a
                                target="_blank"
                                href="https://www.facebook.com/albertabikeswap/"
                        >
                            <i class="fa fa-facebook-square" aria-hidden="true"></i>
                        </a>
                        <a
                                target="_blank"
                                href="https://www.youtube.com/channel/UC7nsZlI0UdQUsEMHmBVpG0g"
                        >
                            <i class="fa fa-youtube-square" aria-hidden="true"></i>
                        </a>
                        <a target="_blank" href="https://twitter.com/albertabikeswap ">
                            <i class="fa fa-twitter-square" aria-hidden="true"></i>
                        </a>
                        <a
                                target="_blank"
                                href="https://www.instagram.com/albertabikeswap/"
                        >
                            <i class="fa fa-instagram" aria-hidden="true"></i>
                        </a>
                        <p>
                            <span>Mailing Address:</span>
                            P.O. Box 67145, Northland Village, Calgary, Alberta, T2L 2L2
                        </p>
                    </div>

                    <h5 class="footer-title">Watch ABS in action</h5>
                    <iframe
                            class="footer-video"
                            src="https://www.youtube.com/embed/ZntnXr1p2p0"
                            frameborder="0"
                            allowfullscreen
                    ></iframe>

                    <div style="margin-top: 20px; margin-bottom: 10px;">
                        <label style="color: #686801;" class="video-footer">
                            <small>
                                Designed &amp; Developed with
                                <i
                                        style="color: red;"
                                        class="fa fa-heart"
                                        aria-hidden="true"
                                ></i>
                                in
                                <a target="_blank" href="#">Canada</a>
                            </small>
                            <p>
                                <small>Maintained by: Ashish Puri</small>
                            </p>
                        </label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="assets/script/header_footer.js"></script>
</body>
</html>

