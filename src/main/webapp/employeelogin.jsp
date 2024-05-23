<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        /* Style for the container that holds the form */
        .container {
            width: 25%;
            margin: 150px 0 0 160px; /* Keep the container centered in the middle of the page */
            background: url("bg.png"), -webkit-linear-gradient(bottom, #59b9e8, #b4e0e3);
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            float: left; /* Float the container to the left */
        }

        /* Style for the image */
        .image {
            width: 50%; /* Adjust the width of the image as needed */
            float: right; /* Float the image to the right */
        }

        /* Style for form labels */
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        /* Style for form input fields */
        input[type="text"],
        input[type="number"],
        input[type="email"],
        input[type="password"],
        input[type="date"],
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        /* Style for radio buttons */
        input[type="radio"] {
            margin-right: 10px;
        }

        /* Style for the submit button */
        .button {
            background-color: #80ffff;
            color: black;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
        }

        /* Style for the submit button on hover */
        .button:hover {
            background-color: #2691d9;
        }

      
    </style>
</head>
<body>
    <div class="container">
        <br>
        <h3 align="center"><u>Employee Login</u></h3>
        <br>
        <form method="post" action="checkemplogin">
            <table align="center">
                <tr><td></td></tr>
                <tr>
                    <td><label>Email ID</label></td>
                    <td><input type="email" name="email" required/></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label>Password</label></td>
                    <td><input type="password" name="pwd" required/></td>
                </tr>
                <tr><td></td></tr>
                <tr align=center>
                    <td colspan=2><input type="submit" value="login" class="button"></td>
                </tr>
            </table><br>
            
        </form>
    </div>
    
    <!-- Add your image here -->
    <div class="image">
        <img src="Images/reg.gif" alt="Your Image">
    </div>
</body>
</html>
