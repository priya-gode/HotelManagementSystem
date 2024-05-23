<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>	WELCOME TO HOTEL MANGMENT SYSTEM</title>
</head>
<style>
body {
      margin: 0;
      padding: 0;
      overflow: hidden;
    }

    #background-video {
      position: fixed;
      top: 0;
      left: 0;
      min-width: 100%;
      min-height: 100%;
      width: auto;
      height: auto;
      z-index: -1;
    }

    .content {
      text-align: center;
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      color: #fff;
      font-size: 24px;
    }
button {
  --c: 	#888888; /* Change the color here */

  background: 
    linear-gradient(90deg, #FAAFBA 33%, #fff5, #FFFFF0 67%) var(--_p,100%)/300% no-repeat,
    #E97F02; /* background color */
  color: #0000;
  border: none;
  transform: perspective(500px) rotateY(calc(20deg*var(--_i,-1)));
  text-shadow: 
    calc(var(--_i,-1)* 0.08em) -.01em 0   var(--c),
    calc(var(--_i,-1)*-0.08em)  .01em 2px #0004;
  outline-offset: .1em;
  transition: 0.3s;
}
button:hover,
button:focus-visible {
  --_p: 0%;
  --_i: 1;
}
button:active {
  text-shadow: none;
  color: var(--c);
  box-shadow: inset 0 0 9e9q #0005;
  transition: 0s;
}

body {
  margin: 0;
  min-height: 100vh;
  display: grid;
  place-content: center;
  background: #ccc;
}
button {
  font-family: system-ui, sans-serif;
  font-weight:bold;
  font-size: 4rem;
  margin: 0;
  cursor: pointer;
  padding: .1em .3em;
}
</style>
<body>
<video id="background-video" autoplay loop muted>
  <source src="Images/Back.mp4" type="video/mp4">
  <!-- Add additional source elements for other video formats (WebM, Ogg) -->
</video>
<button class="button" onclick="rp1()">Admin</button><br><br><br>
<button class="button" onclick="rp2()">Customer</button><br><br><br>
<button class="button" onclick="rp3()">Employee</button><br><br><br>

<script>
	function rp1	() { 
        window.location.href = "adminlogin.jsp"; 
      }
	function rp2	() { 
        window.location.href = "customerlogin.jsp"; 
      }
	function rp3	() { 
        window.location.href = "employeelogin.jsp"; 
      }
</script>
</body>

</html>