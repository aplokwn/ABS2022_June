<%-- 
    Document   : BikeInfoPage
    Created on : Feb 3, 2022, 4:07:58 PM
    @author april wan
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bike Live Feed | Alberta Bike Swap</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
        <link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet">

        <link href="assets/css/sellBikeStyle.css" rel="stylesheet" />



    </head>
    <body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>  

        <%@include file="header.jsp"%>
        <div class="container-fluid mainBody">  
            <div class="container bootdey">
                <c:set var="emptyjson" value="${emptyjson}"/>


                <!-- Filter section -->
                    <div class="col-md-3">
                        <section class="panel">
                            <header class="panel-heading">
                                <h4>Filter</h4> 
                            </header>
                            <div class="panel-body">
                                <form method="post" action="BikeInventory" role="form product-form">
                                    <div class="form-group">
                                        <h3>By Price:</h3>
                                        <input type="text" id="minPrice" name="minPrice" min="0" placeholder="min price" class="form-control" />
                                        <input type="text" id="maxPrice" name="maxPrice" placeholder="max price" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <h3>By Size:</h3>
                                        <input type="text" id="bikeSize" name="bikeSize"  placeholder="L/M/S"/>
                                    </div>
                                    <div class="form-group">
                                        <h3>By Bike Make:</h3>
                                        <input type="text" id="bikeMake" name="bikeMake"  placeholder="Brand Name"/>
                                    </div>
                                    <div class="form-group">
                                        <h3>By Bike Model:</h3>
                                        <input type="text" id="bikeModel" name="bikeModel"  placeholder="Model name"/>
                                    </div>
                                    <button class="btn btn-success btn-lg" type="submit">Filter</button>
                                </form>
                            </div>
                            <h4 class="pro-title text-center">${message}</h4>
                        </section>
                    </div>
                    <!-- End of filter section -->

                    <!-- Product section -->
                    <div class="col-md-9">
                        <c:choose>
                            <c:when test = "${emptyjson eq 'false'}">
                                <div class="row product-list">
                                    <c:forEach var="bikes" items="${bikes}">

                                        <div class="col-md-4">
                                            <section class="panel">
                                                <div class="pro-img-box">
                                                    <img src="${bikes.getPhotoPath()}" width="250" height="220" alt="bike" />
                                                </div>
                                                <div class="panel-body text-center">
                                                    <h4>
                                                    <p class="pro-title">
                                                        Bike Information
                                                    <p>
                                                </h4>
                                                <p class="bikeInfo">Bike Index: ${bikes.getBikeId()}</p>
                                                <p class="bikeInfo">Bike Make: ${bikes.getMaker()}</p>
                                                <p class="bikeInfo">Bike Model: ${bikes.getModel()}</p>
                                                <p class="bikeInfo">Bike Size: ${bikes.getSize()}</p>
                                                <p class="price">Price: $${bikes.getPrice()}</p>

                                                </div>
                                            </section>
                                            
                                        </div>
                                    </c:forEach>
                                    
                                    <h4 class="pro-title text-center">${bikemessage}</h4> <br/>
                            <form method="POST" action="BikeInventory">
                                <input type="hidden" name="currentPage" value="${currentPage}">
                                <input type="hidden" name="action" value="Prev${page}" />
                                <input type="submit" class="btn btn-success btn-lg" name="prePage" value="Previous Page" />
                                <input type="submit" class="btn btn-success btn-lg" name="nextPage" value="Next Page" />
                            </form>

                            <p>${listMessage}</p>
                                    
                                </div>
                            </c:when>

                            <c:otherwise>
                                <h1>Empty </h1>
                                <p>${bikemessage}</p>

                            </c:otherwise>
                        </c:choose>


                    </div>







            </div>
        </div>
        <%@include file="footer.jsp"%>

       

    </body>
</html>
