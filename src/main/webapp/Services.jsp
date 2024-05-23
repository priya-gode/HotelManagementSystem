<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Our Services</title>
  <style>
  @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800;900&display=swap");

* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}

body {
  font-family: 'Poppins', sans-serif;
  background-color:  #b3b3b3 /* Change to grey */
}

h1, h2 {
  font-family: sans-serif;
  font-weight: 400;
}

a {
  text-decoration: none;
}

li {
  list-style: none;
}

.flex {
  display: flex;
}

.flex_space {
  display: flex;
  justify-content: space-between;
}

button {
  border: none;
  background: none;
  outline: none;
  transition: 0.5s;
  cursor: pointer;
  
}

.primary-btn {
  padding: 15px 40px;
  background: #7fc142;
  font-weight: bold;
  color: Blue;
}

.secondary-btn {
  padding: 15px 40px;
  background: none;
  border: 2px solid white;
  font-weight: bold;
  color: white;
}

.container {
  max-width: 85%;
  margin: auto;
}




/*--------about---------*/
.left, .right {
  width: 50%;
  padding: 30px;
}

.top {
  margin-top: 80px;
}

.mtop {
  margin-top: 40px;
}

.heading h1 {
  font-size: 100px;
  font-weight: 500;
  opacity: 0.1;
  font-family: serif;
  position: absolute;
  top: -30px;
}

.heading h2 {
  margin: 30px 0;
  font-size: 45px;
  font-family: serif;
  font-weight: 400;
}

.about .heading h1 {
  top: 55px;
}

.about {
  position: relative;
}

.about .left {
  margin-top: 30px;
}

.about p {
  font-size: 15px;
}

.about button {
  margin: 30px 0;
}

/*--------about---------*/


/*--------services---------*/
.services {
  position: relative;
}

.grid2 {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  grid-gap: 30px;
}

.services .left {
  padding: 30px 0;
}

.services .box {
  border: 1px solid rgba(0, 0, 0, 0.1);
  text-align: center;
  transition: 0.5s;
  padding: 20px;
  background: white;
  color: blue;
}

.services .box .text {
  padding: 30px 0;
  border: 1px dashed #fff;
  color:  #909090;
}

.services i {
  font-size: 50px;
  color: #7fc142;
  transition: 0.5s;
  color:  #909090;
}

.services h3 {
  font-size: 20px;
  font-weight: 400;
  margin-top: 20p;
  transition: 0.5s;
}

.services img {
  width: 100%;
  height: 100%;
}

.services .box:hover {
  background: 	#008080;
  color: #fff;
  cursor: pointer;
}

.services .box:hover i,
.services .box:hover h3 {
  color: #fff;
}

/*--------services---------*/
  </style>
</head>

<body>

 <%@ include file="customernav.jsp" %>
  <section class="services top">
    <div class="container">
      <div class="heading">
       <h1 style="color: white;">SERVICES</h1>
        <h2 style="color: white;">Our Services</h2>
      </div>


      <div class="content flex_space">
        <div class="left grid2">
          <div class="box">
            <div class="text">
              <i class="fa-solid fa-utensils"></i>
              <h3>Delious Food</h3>
            </div>
          </div>
          <div class="box">
            <div class="text">
              <i class="fa-solid fa-person-biking"></i>
              <h3>Fintness</h3>
            </div>
          </div>
          <div class="box">
            <div class="text">
             <i class="fas fa-gamepad"></i>
              <h3>Games</h3>
            </div>
          </div>
          <div class="box">
            <div class="text">
              <i class="fa-solid fa-spa"></i>
              <h3>Beauty Spa</h3>
            </div>
          </div>
        </div>
        <div class="right">
          <img src="https://raw.githubusercontent.com/sunil9813/Crowny-Hotel-Using-HTML-and-CSS/master/Images/service.png" alt="">
        </div>
      </div>
    </div>
  </section>
  <script src="https://kit.fontawesome.com/032d11eac3.js" crossorigin="anonymous"></script>
</body>

</html>