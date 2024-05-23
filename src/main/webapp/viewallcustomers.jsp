<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        body {
            font-family: 'lato', sans-serif;
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
            background-color: #95A5A6;
            font-size: 14px;
            text-transform: uppercase;
            letter-spacing: 0.03em;
        }
        .responsive-table .table-row {
            background-color: #ffffff;
            box-shadow: 0px 0px 9px 0px rgba(0,0,0,0.1);
        }
        .col-1, .col-2, .col-3{
            flex-basis: 4%; /* Divide 100% by the number of columns */
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
</head>
<body>
 <%@ include file="adminnav.jsp" %>
    <br>
    <h3 align="center"><u>View All Customers</u></h3>
    <div class="container">
        <ul class="responsive-table">
            <li class="table-header">
                <div class="col col-1">Name</div>
                <div class="col col-2">Email</div>
                <div class="col col-3">phonenumber</div>
            </li>
            <c:forEach items="${customerdata}" var="customer">
                <li class="table-row">
                    <div class="col col-1" data-label="Name"><c:out value="${customer.name}" /></div>
                    <div class="col col-2" data-label="Email"><c:out value="${customer.email}" /></div>
                    <div class="col col-3" data-label="Contact"><c:out value="${customer.phonenumber}" /></div>
                </li>
            </c:forEach>
        </ul>
    </div>
</body>
</html>
