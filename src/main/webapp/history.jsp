<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<style>
body {
  font-family: 'Poppins', sans-serif;
  background-color:  #b3b3b3 /* Change to grey */
}
        
        .container {
            max-width: 1000px;
            margin-left: auto;
            margin-right: auto;
            padding-left: 10px;
            padding-right: 10px;
        }
        h2 {
            font-size: 26px;
            margin: 20px 0;
            text-align: center;
        }
        h2 small {
            font-size: 0.5em;
        }
        .responsive-table li {
            border-radius: 3px;
            padding: 15px; /* Adjust the padding to control spacing between values */
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px; /* Adjust the margin to control spacing between rows */
        }
        .responsive-table .table-header {
            background-color: #008080;
            font-size: 14px;
            color:white;
            text-transform: uppercase;
            letter-spacing: 0.03em;
        }
        .responsive-table .table-row {
            background-color: #ffffff;
            box-shadow: 0px 0px 9px 0px rgba(0,0,0,0.1);
        }
        .col-1, .col-2, .col-3, .col-4, .col-5, .col-6, .col-7, .col-8, .col-9 {
            flex-basis: 9%; /* Divide 100% by the number of columns */
        }
        .col-7, .col-8 {
            flex-basis: 8%; /* Adjust the width of Email and Location columns */
        }
        @media all and (max-width: 767px) {
            .table-header {
                display: none;
            }
            .table-row {
            }
            li {
                display: block;
            }
            .col {
                flex-basis: 100%;
            }
            .col {
                display: flex;
                padding: 10px 0;
            }
        }
   
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<%@ include file="customernav.jsp" %>
<br> <br> <br> <br> <br> <br> <br> <br>

    <div class="container">
        <ul class="responsive-table">
            <li class="table-header">
                <div class="col col-1">Room Type</div>
                <div class="col col-2">Name</div>
                <div class="col col-3">Arrival</div>
                <div class="col col-4">Depature</div>
                <div class="col col-5">Email</div>
                <div class="col col-6">No Of Rooms</div>
            </li>
            <c:forEach items="${history}" var="emp">
                <li class="table-row">
                    <div class="col col-1" data-label="Room Type"><c:out value="${emp.roomtype}" /></div>
                    <div class="col col-2" data-label="Name"><c:out value="${emp.name}" /></div>
                    <div class="col col-3" data-label="Arrival"><c:out value="${emp.arrive}" /></div>
                    <div class="col col-4" data-label="Depature"><c:out value="${emp.depature}" /></div>
                    <div class="col col-7" data-label="Email"><c:out value="${emp.email}" /></div>
                    <div class="col col-8" data-label="No Of Rooms"><c:out value="${emp.numrooms}" /></div>
                </li>
            </c:forEach>
        </ul>
    </div>
</body>
</html>
