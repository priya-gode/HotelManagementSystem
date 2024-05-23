<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Hotel Room Booking</title>
<style>
 @import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;600;700&display=swap');

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Open Sans', sans-serif;
}

body {
  display: flex;
  justify-content: center;
  padding: 0 10px;
  min-height: 100vh;
  background-image: url("https://png.pngtree.com/thumb_back/fh260/background/20210222/pngtree-background-business-light-effect-gray-image_564159.jpg");
  background-repeat: no-repeat;
  background-size: 1800px;
}

.card {
  background-color: #fff;
  border-radius: 10px;
  box-shadow: 0 10px 15px rgba(0, 0, 0, 0.1);
  padding: 20px;
  max-width: 700px; /* Adjust the maximum width as needed */
  margin: 20px auto;
  margin-left: auto; /* Push the card to the right side */
}

form {
  padding: 20px; /* Increased padding for better spacing */
  background-image: url("hotel.gif");
  background-repeat: no-repeat;
  background-size: 1500px;
  max-width: 500px;
  width: 100%; /* Adjusted to take full width */
  border-radius: 7px;
  box-shadow: 0 10px 15px rgba(247, 244, 244, 0.1);
}

.form-label {
  font-weight: bold;
  font-size: 14px;
}

.form-input {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
  margin-bottom: 10px;
}

.form-button {
  background-color: #04AA6D;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
  border: none;
}

/* Rest of your styles... */
</style>
</head>
<body>


  <header>
    
  </header>
  <div class="container">
    <div class="room-card">
      <!-- Room card content... -->
    </div>
    <div class="card">
      <div class="booking-form">
      <span class="blink">
<h3 align=center style="color:green; font-size:20px">${message}</h3>
</span>
       
        <form action="insertstandard" method="post">
          <center><h2>Enter Your Details</h2></center><br>
          <label class="form-label" for="name">Name:</label>
          <input class="form-input" type="text" id="name" name="name" required>

          <label class="form-label" for="name">Contact:</label>
          <input class="form-input" type="text" id="contact" name="contact" required>
          
          <label class="form-label" for="email">Email:</label>
          <input class="form-input" type="email" id="email" name="email" required>

          <label class="form-label" for="arrival-date">Arrival Date:</label>
          <input class="form-input" type="date" id="arrival-date" name="arrive" required onchange="calculateCost()">
          

          <label class="form-label" for="departure-date">Departure Date:</label>
          <input class="form-input" type="date" id="departure-date" name="depature" required onchange="calculateCost()">
           
          <label class="form-label" for="departure-date">Number of Rooms:</label>
		  <input type="number" class="form-input" id="room" name="numrooms" min="1" max="10" required onchange="calculateCost()">
		  
          <label class="form-label" for="departure-date">Number of Adults:</label>
          <input type="number" class="form-input" id="quantity" name="numadults" min="1" required><br/>
          
          <label class="form-label" for="departure-date">Number of Children:</label>
          <input type="number" id="quantity" class="form-input" name="numchilds" min="0"  required><br/>
          
          <label for="html" >
          <input type="radio" id="css" name="bed" value="CSS">
         <b>Large single bed</b></label>
           
         <label for="html">
          <input type="radio" id="css" name="bed" value="CSS">
        <b>Two small single beds</b></label><br/><br/>
           
       <h3>Total Cost: ₹<span id="cost">0</span></h3>
       
          <button class="form-button" type="submit">Submit</button>
        </form>
 <script>
  
   const numroomsInput = document.getElementById('room');
   const arrivalDateInput = document.getElementById('arrival-date');
   const departureDateInput = document.getElementById('departure-date');

   numroomsInput.addEventListener('change', calculateCost);
   arrivalDateInput.addEventListener('change', calculateCost);
   departureDateInput.addEventListener('change', calculateCost);

// Function to calculate the cost
function calculateCost() {
  // Initialize the variables
  let numrooms;
  let arrivalDate;
  let departureDate;
  let cost = 0;

  // Get the values from the form fields
  numrooms = parseInt(numroomsInput.value);
  arrivalDate = new Date(arrivalDateInput.value);
  departureDate = new Date(departureDateInput.value);

  // Calculate the cost
  const numDays = (departureDate - arrivalDate) / (1000 * 60 * 60 * 24);
  cost = numrooms *( 990 * numDays);

  // Convert the cost to a string and remove the rupee symbol
  const costElement = document.getElementById('cost');
  costElement.textContent = cost.toString();
}


 </script>
 



   
</body>
</html>
