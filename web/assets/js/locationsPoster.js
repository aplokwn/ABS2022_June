/**
 * Generates a poster in PDF format with the current event and a background picture set in the location page
 * @returns {Promise<void>} The poster
 */


function savePDF() {

    var cityId = document.getElementById("cityIdValue").innerHTML;
    let cityName;
    let picture_url;
   
    cityName = checkCityID(cityId);
    picture_url = getImgPath(cityId);
    cityName = checkCityID(cityId);

    var pdf = new jsPDF('', 'pt', 'letter');
    var img = new Image;

    var docTitle = "ALBERTA BIKE SWAP";
    var cityTitle = cityName + ", AB";

    
    var whereTitle = "Where: ";
    let whereInfo = document.getElementById("eventlocation").innerHTML;
    var whenTitle = "When: ";
    let whenInfo = document.getElementById("date").innerHTML;
    var consignTitle = "Consign: ";
    let consignInfo = document.getElementById("consign").innerHTML;
    var buyTitle = "Buy: ";
    let buyInfo = document.getElementById("buy").innerHTML;
    var donateTitle = "Donate: ";
    let donateInfo = document.getElementById("donate").innerHTML;
    
    //alert(whereInfo);



    img.onload = function() {
        pdf.setFont('Times', 'Roman');
        pdf.addImage(this, 'JPEG', 10, 10, 595.28, 592.28/2 );
        pdf.setFontSize(40);
        pdf.text(docTitle, 100, 350);
        pdf.setFontSize(15);
        pdf.text(whereTitle, 85, 400);// (horizontal, vertical from 0)
        pdf.text(whereInfo, 150, 400);// (same line -> Where: address )
        pdf.text(cityTitle, 155, 430);

        pdf.text(whenTitle, 85, 480);
        pdf.text(whenInfo, 150, 480);

        pdf.text(consignTitle, 85, 530);
        pdf.text(consignInfo, 150, 530);

        pdf.text(buyTitle, 85, 580);
        pdf.text(buyInfo, 150, 580);

        pdf.text(donateTitle, 85, 630);
        pdf.text(donateInfo, 150, 630);
    



        pdf.save('stone.pdf');
       
        
        };
        
        
        img.crossOrigin = "";  
    
        img.src = picture_url;
   

    
    }

    function city(cityId, picture_url) {
        this.cityId = cityId;
        this.picture_url;
        this.age = age;
        this.eyeColor = eye;
      }
    
     function checkCityID(cityId){
        if(cityId==(1)){
            cityName = "Calgary";
        }
         else if(cityId==(2)){
             cityName = "Lethbridge";
         }
         else if(cityId==(3)){
             cityName = "Edmonton";
         }
         else{
    
         }
         return cityName ;
         
      }
    
      function getImgPath(cityId){
        if(cityId==(1)){
            picture_url = "assets/img/locations/city-01.jpg";
        }
         else if(cityId==(2)){
            picture_url = "assets/img/locations/city-02.jpg";
         }
         else if(cityId==(3)){
            picture_url = "assets/img/locations/city-03.jpg";
         }
         else{
    
         }
         return picture_url ;
         
      }