/**
 * Generates a poster in PDF format with the current event and a background picture set in the location page
 * @returns {Promise<void>} The poster
 */


function savePDF() {

    var cityId = document.getElementById("cityId");
    let cityName;
    let picture_url;
    var logo_url = "./img/admin/logo.jpg";
    
    console.log();
    
    picture_url = checkCityID(cityId, picture_url );
   
   if(cityId.equals(1)){
       cityName = "Calgary";
       picture_url = "img/locations/city-01.jpg";
   }
   else if(cityId.equals(2)){
        cityName = "Lethbridge";
        picture_url = "img/locations/city-02.jpg";
   }
   else{
        cityName = "Edmonton";
        picture_url = "img/locations/city-03.jpg";
   }
   
   
    var img = new Image();
    img.src = path.resolve(picture_url);

    

   

    // PDF information
    let docTitle = "ALBERTA BIKE SWAP";
    let cityTitle = cityName + ", AB";
    let whereTitle = "Where: ";
    let whereInfo = event.address;
    let whenTitle = "When: ";
    let whenInfo = event.date;
    let consignTitle = "Consign: ";
    let consignInfo = event.consign;
    let buyTitle = "Buy: ";
    let buyInfo = event.buy;
    let donateTitle = "Donate: ";
    let donateInfo = event.donate;
    // Creates and image object from the image URL
    let imageBG = new Image();
    imageBG.src = picture;
    
    doc.addImage(img, 'JPEG', 1, 2);

    /**
     * After the image finishes loading, populate the PDF with event information and the background, and provides the
     * PDF for download
     */
    
    var doc = new jsPDF();
    
        doc.setFont('Times', 'Roman');
        doc.setFontSize(40);
        doc.addImage(imageBG, pictureType, 0, 0, 210, 297);
        doc.text(docTitle, 38, 40);
        doc.setFontSize(20);
        doc.text(whereTitle, 50, 70);
        doc.text(whereInfo, 85, 70);
        doc.text(cityTitle, 85, 80);
        doc.text(whenTitle, 50, 100);
        doc.text(whenInfo, 85, 100);
        doc.text(consignTitle, 50, 120);
        doc.text(consignInfo, 85, 120);
        doc.text(buyTitle, 50, 140);
        doc.text(buyInfo, 85, 140);
        doc.text(donateTitle, 50, 160);
        doc.text(donateInfo, 85, 160);
        doc.save("AlbertaBikeSwap.pdf");



    
    doc.text(20, 20, 'Hello world!');
    doc.text(20, 30, 'This is client-side Javascript, pumping out a PDF.');
    doc.addPage();
    doc.text(20, 20, 'Do you like that?');

    doc.save('Test.pdf');

}
















