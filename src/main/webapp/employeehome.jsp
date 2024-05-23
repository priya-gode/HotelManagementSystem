<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 80%;
  max-height: 70%;
  position: relative;
  margin: auto;
  
}
         body{
    background: -webkit-linear-gradient(left, #3931af, #00c6ff);
}
.large-text {
    font-size: 20px; /* Adjust the size as needed */
    color: #333;     /* Text color in hex code */
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif, sans-serif; /* Font family */
    line-height: 1.5; /* Line height for spacing */
    margin-bottom: 10px; /* Margin at the bottom of the paragraph */
    font-weight: 900;
  }
/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
  
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 100%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 500px) {
  .text {font-size: 11px}
}

.slideshow-container {
  max-width: 1500px;
  position: relative;
  margin: auto;
}

.mySlides {
  display: none;
}

img {
  width: 100%;
}
</style>
</head>
<body>


<%@ include file="employeenavbar.jsp" %>

   <video autoplay loop muted plays-inline class="back-vedio">
            <source src="production_id_4069480 (2160p).mp4" type="video/mp4">
          </video>

</body>
</html> 
