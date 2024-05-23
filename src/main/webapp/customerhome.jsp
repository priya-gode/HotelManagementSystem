<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <title>HOTEL MANAGMENT SYSTEM </title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="style1.css">

  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />


  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css" integrity="sha512-UTNP5BXLIptsaj5WdKFrkFov94lDx+eBvbKyoe1YAfjeRPC+gT5kyZ10kOHCfNZqEui1sxmqvodNUx3KbuYI/A==" crossorigin="anonymous"
    referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="css/style1.css">
  <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>

</head>


<body>
<% response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate"); %>
  <video autoplay loop muted plays-inline class="back-vedio">
    <source src="Images/vedio-1_NSIePnCr (online-video-cutter.com).mp4" type="video/mp4">
  </video>
   <%@ include file="customernav.jsp" %>
  <br> <br> <br> <br> <br> <br><br> <br> <br> <br> <br> <br> 
  <div class="content">
    <h1> Welcome </h1>
    <a href="rooms"> Book </a>
  </div>
  <br> <br> <br> <br> <br> <br><br> <br><br> <br><br><br> <br> <br>  
  <section class="about top" id="about">
    <div class="container flex">
      <div class="left">
        <div class="img">
          <img src="Images/a1.jpg" alt="" class="image1">
          <img src="Images/a2.jpg" alt="" class="image2">
        </div>
      </div>
      <div class="right">
        <div class="heading">
          <h5>RAISING COMFOMRT TO THE HIGHEST LEVEL</h5>
          <h2>Welcome to Hotel NIVASAA</h2>
          <p>Where comfort meets luxury, our hotel welcomes you to a world of relaxation and impeccable service. Your home away from home awaits </p>
          <p>Discover a haven where hospitality finds its true home, and you find genuine relaxation. Nivasaa offers impeccable accommodations blending modern luxury with local charm. Indulge in exquisite dining, unwind in our spa, and explore a world of local experiences. Your journey of comfort and elegance begins here.</p>
        </div>
      </div>
    </div>
  </section>

  <section class="gallary mtop " id="gallary">
    <div class="container">
      <div class="heading_top flex1">
        <div class="heading">
          <h5>WELCOME TO OUR PHOTO GALLERY</h5>
          <h2>Photo Gallery of Our Hotel</h2>
        </div>
        <div class="button">
        </div>
      </div>

      <div class="owl-carousel owl-theme">
        <div class="item">
          <img src="Images/g-1.jpg" alt="">
        </div>
        <div class="item">
          <img src="Images/g-2.jpg" alt="">
        </div>
        <div class="item">
          <img src="Images/g-3.jpg" alt="">
        </div>
        <div class="item">
          <img src="Images/g-4.jpg" alt="">
        </div>
        <div class="item">
          <img src="Images/g-5.jpg" alt="">
        </div>
        <div class="item">
          <img src="Images/g-6.jpg" alt="">
        </div>
        <div class="item">
          <img src="Images/g-7.jpg" alt="">
        </div>
        <div class="item">
          <img src="Images/g-8.jpg" alt="">
        </div>
      </div>

    </div>
  </section>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js" integrity="sha512-gY25nC63ddE0LcLPhxUJGFxa2GoIyA5FLym4UJqHDEMHjp8RET6Zn/SHo1sltt3WuVtqfyxECP38/daUc/WVEA==" crossorigin="anonymous"
    referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous"
    referrerpolicy="no-referrer"></script>
  <script>
    $('.owl-carousel').owlCarousel({
      loop: true,
      margin: 10,
      nav: true,
      dots: false,
      navText: ["<i class='fas fa-chevron-left'></i>", "<i class='fas fa-chevron-right'></i>"],
      responsive: {
        0: {
          items: 1
        },
        768: {
          items: 2
        },
        1000: {
          items: 4
        }
      }
    })
  </script>

  <section class="restaurant top" id="restaurant">
    <div class="container flex">
      <div class="left">
        <img src="Images/dinning hall.jpg" alt="">
      </div>
      <div class="right">
        <div class="text">
          <h2>Our Restaurant Top Dishes </h2>
          <p> Indulge in the soul-soothing warmth of Indian curries at Nivasaa, where aromatic spices weave a symphony of flavors on your palate.</p>
        </div>
        <div class="accordionWrapper">
          <div class="accordionItem open">
            <h2 class="accordionIHeading">Creamy Paneer Makhani</h2>
            <div class="accordionItemContent">
              <p>Indulge in the velvety allure of our Creamy Paneer Makhani, a dish where soft cottage cheese meets a tomato and cashew cream sauce
              </p>
            </div>
          </div>
          <div class="accordionItem close">
            <h2 class="accordionIHeading">Velvet Mango Delight</h2>
            <div class="accordionItemContent">
              <p>Delight in the smooth fusion of ripe mangoes and creamy yogurt, offering a delectable combination of tropical sweetness and velvety texture.
              </p>
            </div>
          </div>
          <div class="accordionItem close">
            <h2 class="accordionIHeading">Edible Spoons</h2>
            <div class="accordionItemContent">
              <p> We Serve appetizers in edible spoons made from items like cucumber slices, small pastry shells, or even endive leaves. Fill these with dips, spreads, or small bites.
              </p>
            </div>
          </div>
          <div class="accordionItem close">
            <h2 class="accordionIHeading">Hyderabadi Dum Biryani</h2>
            <div class="accordionItemContent">
              <p>Renowned for its rich flavors, this biryani is cooked using the "dum" method, where marinated meat (chicken or mutton) is layered with rice and slow-cooked to allow the flavors to meld beautifully.
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <script>
    var accItem = document.getElementsByClassName('accordionItem');
    var accHD = document.getElementsByClassName('accordionIHeading');

    for (i = 0; i < accHD.length; i++) {
      accHD[i].addEventListener('click', toggleItem, false);
    }

    function toggleItem() {
      var itemClass = this.parentNode.className;
      for (var i = 0; i < accItem.length; i++) {
        accItem[i].className = 'accordionItem close';
      }
      if (itemClass == 'accordionItem close') {
        this.parentNode.className = 'accordionItem open';
      }
    }
  </script>


  <footer>
    <div class="container grid top">
      <div class="box">
        <img src="https://img.icons8.com/external-flatart-icons-flat-flatarticons/48/000000/external-hotel-hotel-services-and-city-elements-flatart-icons-flat-flatarticons-1.png" />
        

        <p>Accepted payment methods</p>
        <div class="payment grid">
          <img src="https://img.icons8.com/color/48/000000/visa.png" />
          <img src="https://img.icons8.com/color/48/000000/mastercard.png" />
          <img src="https://img.icons8.com/color-glass/48/000000/paypal.png" />
          <img src="https://img.icons8.com/fluency/48/000000/amex.png" />
        </div>
      </div>

      <div class="box">
        <h3>Recent News</h3>

        <ul>
          <li>Our Secret Island Boat Tour Is Just for You</li>
          <li>Chill and Escape in Our Natural Shelters</li>
          <li>September in Nivasa Hotel</li>
          <li>Live Music Concerts at Nivasa</li>
        </ul>
      </div>

      <div class="box">
        <h3>For Customers</h3>
        <ul>
          <li>About Nivasa</li>
          <li>Customer Care/Help</li>
          <li>Corporate Accounts</li>
          <li>Financial Information</li>
          <li>Terms & Conditions</li>
        </ul>
      </div>

      <div class="box">
        <h3>Contact Us</h3>

        <ul>
          <li>Benz Circle,Vijayawada</li>
          <li><i class="far fa-envelope"></i>hotelnivasa@gmail.com </li>
          <li><i class="far fa-phone-alt"></i>123 456 7898 </li>
          <li><i class="far fa-phone-alt"></i>123 456 7898 </li>
          <li><i class="far fa-comments"></i>24/ 7 Customer Services </li>
        </ul>
      </div>
    </div>
  </footer>
</body>

</html>