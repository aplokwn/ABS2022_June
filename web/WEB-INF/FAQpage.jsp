<%-- 
    Document   : FAQpage
    Created on : Feb 3, 2022, 4:05:28 PM
    Author     : 845593
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="./assets/css/FAQPageStyle.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet">
        <script src="./assets/js/toggleFAQ.js"></script>
        <title>Event Page for Alberta Bike Swap</title>
        <style>
/*            
For some reason, the styling below was not being shown on the page when written on FAQPageStyling.
For now, we will write it here while we find a more permanent solution.
   */
            #faqTitle{
                padding-top: 30px;
            }
            #faqEmailWrapper{
                background-color: #fff;
                overflow: hidden;
                justify-content: center;
                align-items: center;
                width: 850px;
                height: auto;
            }
            
            #emailFormTitle{
                padding-bottom: 10px;
            }

            .input-field label {
              color: #9e9e9e;
              position: absolute;
              top: 0.8rem;
              left: 0;
              font-size: 1rem;
              cursor: text;
              transition: 0.2s ease-out;
              text-align: initial;
              margin-left: 3rem;
            }

            .inputField{
                display:flex;
                position: relative;
                margin-top: 1rem;
                width: calc(100% - 3rem);
            }

             textarea{
                margin-left: 3rem;
                line-height: normal;
                overflow-y: hidden;
                padding: 0.8rem 0 1.6rem 0;
                resize: none;
                min-height: 3rem;
            }
            
            #sendButtonWrapper{
                padding-top: 10px;
                float: right;
                text-decoration: none;
            }

            #sendButton{
                color: #fff;
                background-color: #26a69a;
                text-align: center;
                border: none;
                padding: 15px 32px;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                border-radius: 4px;
                letter-spacing: 0.5px;
                transition: 0.2s ease-out;
                box-shadow: 0 1px 3px rgba(0,0,0,0.33);
                cursor: pointer;
            }
            
         

        </style>
    </head>
    <body>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        
        <%@include file="header.jsp"%>
        <div id="contentWrapper" style="padding-top: 120px;">

            <h4 id="announcementH1" style="background: url(assets/img/header-bike-01.svg) no-repeat bottom center; background-size: 250px;">Have questions about the events?</h4>
            <div id="faqWrapper">
                <h4 id="faqTitle">Frequently Asked Questions</h4>
                <input type="button" value="How do I buy a bike?" class="faqQuestion" onclick='toggleFAQCard("Card1")'>
                <div class="faqAnswerCard" id="Card1">
                    <br>
                    <p> Visit one of our events! There is a $2.00 admission for adults, while kids 12 and under are free.  This money is 
                        donated to a local non-profit bike group to fix the donated bikes, we don’t keep anything.  
                        All bikes on the floor have undergone a basic tech check to make sure you don’t end up 
                        with an unsafe ride, but it is still up to you to get a full technical checkup with a 
                        participating bike shop. Please contact us if something is drastically wrong. </p>

                    <p>There is usually a rack of AS-IS bikes that didn’t pass the inspection, but would be a good 
                        ride for the person ready to put a bit of TLC into a new ride. This money is donated to a local 
                        non-profit bike group. </p>

                    <p>The line-ups can be long.  The line-up to buy starts when we’re setting up racks at 0600 in the 
                        morning in Calgary and Edmonton.  If you want first dibs on a bike, please consider volunteering 
                        rather than lining up.  Lining up from 0730-1430 when the sale begins is a long time to stand still.  
                        Even if you are 3129 in line, you will still likely get a bike, but likely not the one you want.</p>

                    <p>We only accept debit or cash.  Visa or MasterCard or American Express are NOT accepted.</p>
                </div>
                <input type="button" value="How do I sell a bike?" class="faqQuestion" onclick='toggleFAQCard("Card2")'>
                <div class="faqAnswerCard" id="Card2">
                    <br>
                    <p>Bring your clean, ready to ride bike to the swap during the bike intake time.</p>

                    <p>You will set the selling price, we can guide you on this.</p>

                    <p>We will tech-check your bike and record its serial number; the bike has to be immediately 
                        rideable. We have participating bike shops in Calgary and Edmonton that can fix your bike 
                        the day of the swap on your dime, our volunteer techs cannot do that for you.</p>

                    <p>You will sign an agreement to sell, which tells us where to send the e-transfer or write you
                        a cheque and what to do with your bike in the slim chance that it doesn’t sell (>92% sell).</p>

                    <p>You will pay us a $15 rack fee per bike to put them into the sale, unless you are an AMA 
                        member. AMA members get $5.00 off, so they pay $10 per bike to get their bike into the swap.</p>

                    <p>You go away (but don’t leave town), we will sell your bike for you and we will send you the 
                        cheque or e-transfer the money, less 13%. You can expect your cheque 1-2 weeks after the swap.
                        It is still a manual process that Laura and Chris complete between swaps, nothing is automagic.</p>

                    <p>In the rare chance your bike doesn’t find a new home, we’ll contact you (cell phone is best) 
                        and let you know to pick your bike up.  It is rather inconvenient if you are out of town and 
                        your bike needs to be picked-up. We only have the space until the end of the swap.</p>
                </div>
               <input type="button" value="Where do I donate bike(s)?" class="faqQuestion"
                       onclick='toggleFAQCard("Card3")'>
                <div class="faqAnswerCard" id="Card3">
                    <br>
                    <p>Thank you.</p>

                    <p>We have a need in our back yard. Your bike will stay in the city or its surrounding area to help 
                        those in need. The $2.00 entrance fee we collect goes to the group fixing these donated bikes.  
                        We also have a bin for collection of parts to stock the shelves for great local non-profits that 
                        re-build bikes within your community. </p>

                    <p>We’re not just local, we help international causes too.  Many of the bikes at the Calgary Swap 
                        are from Bicycles for Humanity; the sale of these bikes will fund the container costs for bikes 
                        sent abroad.  We volunteer and appreciate this great group too.</p>
                </div>
                <input type="button" value="How do I borrow bike racks?" class="faqQuestion" onclick='toggleFAQCard("Card4")'>
                <div class="faqAnswerCard" id="Card4">
                    <p><strong>*** NOTES FOR 2018 *** </strong></p>

                    <p>Yup, all caps, bold and italics – this information is that important. Read ALL of this page. Well, I
                        broke my back (Laura) so we’re going away and that means that the racks are going away too. We asked
                        and asked people to take over, but only a couple of people took us up and that’s not enough to
                        continue running the swaps or giving out the racks. My broken vertebrae prevent me from lifting
                        racks, we need someone to take this part of the swaps over. Is that you?</p>

                    <p>Since we donate half the profit from the bike swaps back to the community, we built bike racks from
                        the profits in 2012 to keep events green throughout the province.</p>

                    <p><strong>What you need to know: </strong></p>

                    <p>Each bike rack holds ~10-12 bikes. We ask that you determine the number of bikes racks that you need
                        – # of bikes you expect, divided by 10 (the number of bikes per rack) equals the number of racks
                        required.</p>

                    <p>We have an industrial design patent and designed the bike racks for our swaps. The bike racks are
                        easily broken down for easier storage/transportation. Since they are easily broken down, we’ve had
                        sets stolen. You are responsible for ensuring that the bike racks are never left in an open space or
                        in an unlocked area. </p>

                    <p>The bike racks can be transported in a pickup truck, and some large vans. The longest section is
                        12’, and the side pieces can be placed in the bed of the truck. Make sure to bring your work gloves,
                        tie downs and red flag.</p>

                    <p><strong>What we expect: </strong></p>

                    <p>We ask that you display our “Racks supplied by” banner; give us a mention in your social media
                        programme for the event; and it would be deluxe to have our logo displayed in your posters and
                        website.</p>

                    <p><strong>What we need to know: </strong></p>

                    <p>How many racks you need.</p>

                    <p>The Date of your event.</p>

                    <p>Use our contact page to request the bike racks, and well let you know if they’re available.</p>
                </div>
                <input type="button" value="Can I swap my bike? " class="faqQuestion" onclick='toggleFAQCard("Card5")'>
                <div class="faqAnswerCard" id="Card5">
                    <p>
                        No, this is a bike buy, sell and donate event. If you’re selling a bike, we’ll sell it for you
                        and there will be bikes there for you to buy.
                    </p>
                </div>
                <input type="button" value="Why is your bike swap safer than online purchase?" class="faqQuestion" onclick='toggleFAQCard("Card6")'>
                <div class="faqAnswerCard" id="Card6">
                    <p>
                        We tech check the bikes and record the serial numbers. Do you know what you’re buying online or
                        who
                        you’re buying the bike from? The police and RCMP have seized bikes from pawn shops and online sales
                        based on our paperwork.
                    </p>
                </div>
                <input type="button" value="Why is there a fee to sell my bike?" class="faqQuestion" onclick='toggleFAQCard("Card7")'>
                <div class="faqAnswerCard" id="Card7">
                    <p>
                        It costs us ~$32.00 out of pocket per bike before it gets into the swap; marketing, truck
                        rentals,
                        venues, bank costs, food (we have ~210 volunteers), insurance, postage, debit fees, printing,
                        security,
                        supplies, and more. We put in anywhere between $11K to $36K/year every year out of our life savings
                        to
                        fund the swaps.
                    </p>
                </div>
                <input type="button" value="Do I have to be there to sell my bike?" class="faqQuestion" onclick='toggleFAQCard("Card8")'>
                <div class="faqAnswerCard" id="Card8">           
                    <p>
                        No, we’ll sell your bike for you and mail you a cheque or e-transfer. It’s not just the
                        convenience
                        of the swap, you’re helping us give money back to the community by selling your bike at the swap.
                        But
                        don’t leave town in case your bike doesn’t sell and you have to come pick it up!
                    </p>
                </div>
                <input type="button" value="How much will you give me for my bike?" class="faqQuestion" onclick='toggleFAQCard("Card9")'>
                <div class="faqAnswerCard" id="Card9">   
                    <p>
                         Sorry, we don’t buy the bikes, but we can help you set a price for the swap.
                    </p>
                </div>
                <input type="button" value="What happens if my bike doesn’t sell?" class="faqQuestion" onclick='toggleFAQCard("Card10")'>
                <div class="faqAnswerCard" id="Card10">   
                    <p>
                        We have a 92% sale rate, it will likely sell, but you have to set the right price. As part of
                        registering your bike for the sale, you leave us a cell or phone number so that we can call you if
                        your
                        bike doesn’t sell. The agreement to sell form also gives the option to donate it to a local
                        non-profit.
                        We only have the venue for the day, and after a reasonable number of attempts to contact you, we
                        take
                        the bike home and it’ll be up to you to pick it up.
                    </p>
                </div>
                <input type="button" value="Can I bring my kid’s bikes to sell?" class="faqQuestion" onclick='toggleFAQCard("Card11")'>
                <div class="faqAnswerCard" id="Card11"> 
                    <p>
                        We have children’s bikes at every swap. The only children’s bikes that we accept are better
                        quality,
                        not from box stores – we do this is to protect your child. If you want to donate children’s bikes,
                        we
                        accept outgrown bikes at ever swap, and we’ll give them to a child in need in your city.
                    </p>
                </div>
                <input type="button" value="How do I get the best price for my bike?" class="faqQuestion" onclick='toggleFAQCard("Card12")'>
                <div class="faqAnswerCard" id="Card12"> 
                    <p>
                        Clean, cared for bikes always sell better. Write-up the upgrades, last service, new parts, etc.,
                        make
                        sure the buyers can tell the value is there.
                    </p>
                </div>
                <input type="button" value="I’m out of town on the day of the event, can I drop my bike off the night before?" class="faqQuestion" onclick='toggleFAQCard("Card13")'>
                <div class="faqAnswerCard" id="Card13">
                    <p>
                        We have the venue for the day and just don’t have the resources to handle early drop-offs or take
                        bikes ahead of time.
                    </p>
                </div>
                <input type="button" value="What will the prices of the bikes be?" class="faqQuestion" onclick='toggleFAQCard("Card14")'>
                <div class="faqAnswerCard" id="Card14">
                    <p>
                        Bikes range from $50 – $4000. Sellers set the price, but we encourage them to price it to sell.
                    </p>
                </div>
                <input type="button" value="What is a Bicycle Shaped Object?" class="faqQuestion" onclick='toggleFAQCard("Card15")'>
                <div class="faqAnswerCard" id="Card15">
                    <p>
                        I didn’t come up with this term. It refers to box store items that look like a bike, smell like a
                        bike, but don’t pedal, shift, stop, or otherwise work the way a real bike should. A bike should make
                        you
                        want to ride it, not leave it in the alley.
                    </p>
                </div>
                <input type="button" value="Don't see your question above?" class="faqQuestion" onclick='toggleFAQCard("Card16")'>
                <div class="faqAnswerCard" id="Card16">
                <div id="faqEmailWrapper">
                    <h5 class="emailFormTitle">Send us an email!</h5>

                    <div role="form" lang="en-CA" dir="ltr">
                        <form action="" method="post" id="emailForm" novalidate="novalidate">
                            <div class="emailField">
                                <i class="material-icons prefix">account_circle</i>
                                <label for="emailSenderName">Name</label>
                                <input type="text" id="emailSenderName" class="inputField" size="40"/>
                            </div>
                            <div class="emailField">
                                <i class="material-icons prefix">email</i>
                                <label for="emailSenderAddress">Email</label>
                                <input type="email" id="emailSenderAddress" class="inputField" size="40"/>
                            </div>
                            <div class="emailField">
                                <i class="material-icons prefix">mode_edit</i>
                                <label for="emailMessage">Message</label>
                                <textarea id="emailMessage" class="inputField" cols="40" rows="6"></textarea>
                            </div>
                            <div id="sendButtonWrapper">
                                <input type="submit" value="SEND" id="sendButton"/>
                            </div>
                        </form>
                    </div>
                </div>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp"%>
    </body>