<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Glowing Inputs Login Form UI</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
  </head>

  <style>
    @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap");
    * {
      margin: 0;
      padding: 0;
      font-family: "Poppins";
      box-sizing: border-box;
    }

    body {
      display: flex;
      justify-content: center;
      align-items: center;
      background: white;
      min-height: 100vh;
    }

    .container {
      position: relative;
      width: 256px;
      height: 256px;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .container span {
      position: absolute;
      left: 0;
      width: 32px;
      height: 6px;
      background: white;
      border-radius: 8px;
      transform-origin: 128px;
      transform: scale(2.2) rotate(calc(var(--i) * (360deg / 50)));
      animation: animateBlink 3s linear infinite;
      animation-delay: calc(var(--i) * (3s / 50));
    }

    @keyframes animateBlink {
      0% {
        background: #008080;
      }

      25% {
        background: #2c4766;
      }
    }

    .login-box {
      position: absolute;
      width: 400px;
    }

    .login-box form {
      width: 100%;
      padding: 0 50px;
    }

    h2 {
      font-size: 2em;
      color: #008080;
      text-align: center;
    }
    
    .error-message {
      text-align: center;
      margin-bottom: 20px;
    }

    .error-message h3 {
      color: red;
    }

    .input-box {
      position: relative;
      margin: 25px 0;
    }

    .input-box input {
      width: 100%;
      height: 50px;
      background: transparent;
      border: 2px solid #2c4766;
      outline: none;
      border-radius: 40px;
      font-size: 1em;
      color: black;
      padding: 0 20px;
      transition: 0.5s;
    }

    .input-box input:focus,
    .input-box input:valid {
      border-color: #008080;
    }

    .input-box label {
      position: absolute;
      top: 50%;
      left: 20px;
      transform: translateY(-50%);
      font-size: 1em;
      color: black;
      pointer-events: none;
      transition: 0.5s ease;
    }

    .input-box input:focus ~ label,
    .input-box input:valid ~ label {
      top: 1px;
      font-size: 0.8em;
      background-color: #1f293a;
      padding: 0 6px;
      color: white;
    }

    .forgot-password {
      margin: -15px 0 10px;
      text-align: center;
    }

    .forgot-password a {
      font-size: 0.85em;
      color: #fff;
      text-decoration: none;
    }

    .forgot-password a:hover {
      text-decoration: underline;
    }

    .btn {
      width: 100%;
      height: 45px;
      border-radius: 45px;
      background: #008080;
      border: none;
      outline: none;
      cursor: pointer;
      font-size: 1em;
      color: white;
      font-weight: 600;
    }

    .signup-link {
      margin: 20px 0 10px;
      text-align: center;
    }

    .signup-link a {
      font-size: 1em;
      color: #008080;
      text-decoration: none;
      font-weight: 600;
    }

    .signup-link a:hover {
      text-decoration: underline;
    }
  </style>

  <body>

    <div class="container">
      <div class="login-box">
      <div class="error-message">
          <h3 style="color: red">${message}</h3>
        </div>
        <h2>Login</h2>
        
        <form method="post" action="checkadminlogin">
          <div class="input-box">
            <input type="text" name="uname" required>
            <label>username</label>
          </div>
          <div class="input-box">
            <input type="password" name="pwd" required>
            <label>Password</label>
          </div>
          <button type="submit" class="btn">Login</button>
        </form>
      </div>

      <span style="--i:0;"></span>
  <span style="--i:1;"></span>
  <span style="--i:2;"></span>
  <span style="--i:3;"></span>
  <span style="--i:4;"></span>
  <span style="--i:5;"></span>
  <span style="--i:6;"></span>
  <span style="--i:7;"></span>
  <span style="--i:8;"></span>
  <span style="--i:9;"></span>
  <span style="--i:10;"></span>
  <span style="--i:11;"></span>
  <span style="--i:12;"></span>
  <span style="--i:13;"></span>
  <span style="--i:14;"></span>
  <span style="--i:15;"></span>
  <span style="--i:16;"></span>
  <span style="--i:17;"></span>
  <span style="--i:18;"></span>
  <span style="--i:19;"></span>
  <span style="--i:20;"></span>
  <span style="--i:21;"></span>
  <span style="--i:22;"></span>
  <span style="--i:23;"></span>
  <span style="--i:24;"></span>
  <span style="--i:25;"></span>
  <span style="--i:26;"></span>
  <span style="--i:27;"></span>
  <span style="--i:28;"></span>
  <span style="--i:29;"></span>
  <span style="--i:30;"></span>
  <span style="--i:31;"></span>
  <span style="--i:32;"></span>
  <span style="--i:33;"></span>
  <span style="--i:34;"></span>
  <span style="--i:35;"></span>
  <span style="--i:36;"></span>
  <span style="--i:37;"></span>
  <span style="--i:38;"></span>
  <span style="--i:39;"></span>
  <span style="--i:40;"></span>
  <span style="--i:41;"></span>
  <span style="--i:42;"></span>
  <span style="--i:43;"></span>
  <span style="--i:44;"></span>
  <span style="--i:45;"></span>
  <span style="--i:46;"></span>
  <span style="--i:47;"></span>
  <span style="--i:48;"></span>
  <span style="--i:49;"></span>
    </div>
    
  </body>
</html>
