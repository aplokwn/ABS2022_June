<%-- 
    Document   : WelcomePage
    Created on : Feb. 10, 2022, 1:07:18 p.m.
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
    />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
    />
    <link rel="stylesheet" href="assets/css/style.css" />
    <title>
        Alberta Bike Swap | The safe place to buy, sell, donate your bike
    </title>
</head>
<body>
<main>

   <!-- <div class="emptyTop"></div> -->
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-8">
                <img class="image animate__animated animate__fadeInLeft" src="assets/img/main/logo.svg"/>
            </div>
        </div>

        <div class="row justify-content-center">
            <div class="col-8">
            <h1>
            The safe place to
            <span
                    class="typewrite"
                    data-period="2000"
                    data-type='[ "sell your bike.", "buy a bike.", "donate your bike." ]'>
            </span>
            </h1>
            </div>
        </div>

        <div class="row row-cols-5">
                <div class="col col-lg-2 col-md-6 col-12"></div>
                <div class="col col-lg-2 col-md-6 col-12 menu-option option1">

                    <form method="post" action="Welcome">
                    <button class="circle" type="submit"><span>Edmonton</span>s</button>
                    <input type="hidden" name="cityId" value="3">
                </form>
                </div>
                <div class="col col-lg-2 col-md-6 col-12 menu-option option2">
                    <form action="Welcome"  method="post">
                        <button class="circle" type="submit"><span>Lethbridge</span></button>
                        <input type="hidden" name="cityId" value="2">
                    </form>
                </div>
                <div class="col col-lg-2 col-md-6 col-12 menu-option option3">
                    <form action="Welcome" method="post">
                        <button class="circle" type="submit"><span>Calgary</span></button>
                        <input type="hidden" name="cityId" value="1">
                    </form>

                </div>
                   
        </div>

    </div>

</main>
<script src="assets/script/animation.js"></script>
</body>
</html>
