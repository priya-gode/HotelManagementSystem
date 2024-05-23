

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
.admin-navbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  background-color: #f6f0f0;
  color: rgb(249, 244, 244);
  
  position: relative; /* Add this */
  z-index: 1; /* Add this */
}

.logo {
  display: flex;
  align-items: center;
}

.logo img {
  width: 40px; /* Adjust the width as needed */
  height: auto;
  margin-right: 10px; /* Add spacing between image and text */
}

.logo a {
  text-decoration: none;
  color: rgb(23, 21, 21);
  font-size: 24px;
  font-weight: bold;
}

.nav-links {
  list-style: none;
  display: flex;
}

.nav-links li {
  margin-right: 20px;
}

.nav-links a {
  text-decoration: none;
  color: rgb(21, 20, 20);
  font-weight: bold;
  transition: color 0.3s;
}

.nav-links a:hover {
  color: #ab4993;
}

</style>

<body>
<nav class="admin-navbar">
    <div class="logo">
      
      <a href="#">Nivasa</a>
    </div>
    <ul class="nav-links">
      <li><a href="adminhome">Home</a></li>
      <li><a href="empreg">Employee Registration</a>
      <li><a href="viewallemps">view Employee</a></li>
      <li><a href="viewallcustomers">view Customers</a></li>
      <li><a href="counts">Counts</a></li>
      <li><a href="adminlogin.jsp">logout</a></li>
    </ul>
  </nav>
</body>
</html>