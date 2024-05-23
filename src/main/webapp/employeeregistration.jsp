<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        /* Style for the container that holds the form */
        .container {
            width: 30%;
            margin: 20px 0px 30px 90px; /* Adjust the left margin to center the container */
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
            /* Adjust the left margin to move the image to the right */
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
<%@ include file="adminnav.jsp" %>
<h3 align=center style="color:green; font-size:20px">${message}</h3>
    <!-- Add your image here, before the form -->
    <div class="image">
        <img src="Images/reg.gif" alt="Your Image">
    </div>

    <div class="container">
        <br>
        <h3 align="center"><u>Employee Registration</u></h3>
        <br>
        <form method="post" action="insertemp">
            <table align="center">
                <tr>
<td><label>Name</label></td>
<td>
<input type="text" name="name" required="required"/>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Gender</label></td>
<td>
<input type="radio" name="gender" value="MALE" required/>Male
<input type="radio" name="gender" value="FEMALE" required/>Female
<input type="radio" name="gender" value="OTHERS" required/>Others
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Date of Birth</label></td>
<td>
<input type="date" name="dob" required="required"/>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Role</label></td>
<td>
<input type="text" name="role" required="required"/>
</td>
</tr>

<tr><td></td></tr>


<tr>
<td><label>Salary</label></td>
<td><input type="number" name="salary" step="0.01" required/></td>
</tr>

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

<tr>
<td><label>Location</label></td>
<td><input type="text" name="location" required/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Contact No</label></td>
<td><input type="text" name="contact" pattern="[789][0-9]{9}"  placeholder="Must be 10 digits" required/></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Register" class="button"></td>
</tr>
            </table>
        </form>
    </div>
</body>
</html>
