<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <script>
        // Function to perform the search
        function performSearch() {
            // Get the phone number entered by the user
            const phoneNumber = document.getElementById("form1").value;

            // You can use the 'phoneNumber' value to perform a search or any other action here
            // For demonstration purposes, we will just display an alert with the phone number
            alert("Searching for phone number: " + phoneNumber);
        }
    </script>
</head>
<body>
    <div class="input-group">
        <div class="form-outline">
            <input type="tel" id="form1" class="form-control" />
            <label class="form-label" for="form1">Enter Phone Number</label>
        </div>
        <button type="button" class="btn btn-primary" onclick="performSearch()">
            <i class="fas fa-search"></i> Search
        </button>
    </div>
</body>
</html>
    