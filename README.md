<div id="top"></div>



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/aplokwn/ABS2022_June">
    <img src="https://raw.githubusercontent.com/aplokwn/ABS2022_June/d4c67361f55bb45681a1b21b1a7a7484ad84be26/readmeImage/logo-01.svg" alt="Logo" width="200" height=auto>
  </a>

<h3 align="center">Alberta Bike Swap</h3>

  <p align="center">
    <br />
    <a href="https://sampleabs.herokuapp.com"><strong>Live Demo @ heroku »</strong></a><br/>
    <a href="https://github.com/aplokwn/ABS2022_June"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <br />
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
        <li><a href="#built-with">Support Library</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#Dependencies">Dependencies</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project


 ![Screen Shot-Landing Page](https://raw.githubusercontent.com/aplokwn/ABS2022_June/master/readmeImage/ABS_pic.png)
 [![Screen Shot-Bike Livefeed]](https://raw.githubusercontent.com/aplokwn/ABS2022_June/master/readmeImage/ABS_pic02.png)
 [![Screen Shot-Bike Location Page]](https://raw.githubusercontent.com/aplokwn/ABS2022_June/master/readmeImage/ABS_pic03.png)


This is a Java with mavel web application which act as a infornation display for the Alberta Bike Swap Event, and also act as a bike inventory display platform during the event. 

Bike Live Feed Page (bike inventory) is designd to access bike inventory through JSON API. 

<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

* [Java](https://www.java.com/en/)
* [Javascript](https://www.javascript.com/)
* [Bootstrap](https://getbootstrap.com)
  

### Library Support
* [JSTL](https://docs.oracle.com/javaee/5/jstl/1.1/docs/tlddocs/overview-summary.html)
* [Gson](https://github.com/google/gson/blob/master/UserGuide.md)
* [jsPDF](https://github.com/parallax/jsPDF)



<p align="right">(<a href="#top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

1. The default server of this application Tomcat. POM need to be update if using server other than Tomcat.

2. Project JDK version: 1.7

3. Maven version: 3.1
   
4. Best competibilty IDE: NetBean 12. Using IntelliJ may require to update project's Maven to 3.3 or higher, and update project's JDK to 1.8.



### Dependencies
```Maven POM
<dependencies>
 <dependency>
  <groupId>javax</groupId>
    <artifactId>javaee-web-api</artifactId>
      <version>7.0</version>
      <scope>provided</scope>
 </dependency>
<dependency>
  <groupId>com.google.code.gson</groupId>
   <artifactId>gson</artifactId>
   <version>2.9.0</version>
  </dependency>
 <dependency>
   <groupId>javax.servlet</groupId>
    <artifactId>jstl</artifactId>
    <version>1.2</version>
 </dependency>
</dependencies>

```



### Installation

1. Simply download the web application on Github > Code > Dowload ZIP.
2. Import the project to your perfered IDE.
3. If you are using VScode or IntelliJ IDEA as your IDE, you need to setup a tomcat server for running this application on the local host.



<p align="right">(<a href="#top">back to top</a>)</p>












