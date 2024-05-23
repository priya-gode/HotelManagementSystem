<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<!-- Coding by CodingNepal | www.codingnepalweb.com-->
<html lang="en" dir="ltr">
<head>
  <meta charset="UTF-8">
  <title>Login and Registration Form in HTML & CSS | CodingLab</title>
  <link rel="stylesheet" href="style.css">
  <!-- Fontawesome CDN Link -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    #comment-icon {
      position: fixed;
      bottom: 30px; /* Adjust as needed to move it up */
      right: 30px; 
      cursor: pointer;
       font-size: 40px;
    }
  </style>
</head>
<body>
  <div class="typewriter">
    <span class="typewriter-text">Welcome To Hotel Nivasa..!!</span>
  </div>
  <div class="container">
    <input type="checkbox" id="flip">
    <div class="cover">
      <div class="front">
        <div class="gif-container">
          <img src="Images/login.gif" alt="">
        </div>
      </div>

      <div class="back">
        <!--<img class="backImg" src="images/backImg.jpg" alt>-->
        <div class="text">
          <span class="text-1">Complete miles of journey <br> with one step</span>
          <span class="text-2">Let's get started</span>
        </div>
      </div>
    </div>
    <div class="forms">
      <div class="form-content">
        <div class="login-form">
          <span class="blink">
            <h3 align=center style="color:red">${message}</h3>
          </span>
          <div class="title">Login</div>
          <form action="checkcustomerlogin" method="post">
            <div class="input-boxes">
              <div class="input-box">
                <i class="fas fa-envelope"></i>
                <input type="email" placeholder="Enter your email" required name="email">
              </div>
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <input type="password" placeholder="Enter your password" required name="password">
              </div>
              <div class="text"><a href="#">Forgot password?</a></div>
              <div class="button input-box">
                <input type="submit" value="Submit">
              </div>
              <div class="text sign-up-text">Don't have an account? <label for="flip">Signup now</label></div>
            </div>
          </form>
        </div>
        <div class="signup-form">
          <div class="title">Signup</div>
          <form action="insertcustomer" method="post">
            <div class="input-boxes">
              <div class="input-box">
                <i class="fas fa-user"></i>
                <input type="text" placeholder="Enter your name" required name="name">
              </div>
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <input type="text" placeholder="Enter your phone number" required name="phonenumber">
              </div>
              <div class="input-box">
                <i class="fas fa-envelope"></i>
                <input type="text" placeholder="Enter your email" required name="email">
              </div>
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <input type="password" placeholder="Enter your password" required name="password">
              </div>
              <div class="button input-box">
                <input type="submit" value="Submit">
              </div>
              <div class="text sign-up-text">Already have an account? <label for="flip">Login now</label></div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <!-- Place the comment icon here to keep it at the end of the page -->
  <i class="fas fa-comment" id="comment-icon" onclick="openCommentBox()"></i>

  <script>
    function openCommentBox() {
      window.location.href = "chatbot";
    }
  </script>
</body>
</html>
