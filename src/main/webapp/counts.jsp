<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link type="text/css" rel="stylesheet" href="css/style.css">

<style>
 .statistics-container {
    display: flex;
    justify-content: center;
    margin-top: 50px;
    animation: fallIn 1.5s ease-in-out;
 }
 @keyframes fallIn {
    0% {
        transform: translateY(-200px);
    }
    100% {
        transform: translateY(0);
    }
 }
 .statistics-box:hover {
    transform: scale(1.1);
    background-color: #e7c798;
 }
 .statistics-box p {
    font-size: 48px;
    margin: 0;
    color: #008000;
 }
 .statistics-box {
    max-width: 300px;
    background-color: #cad9db;
    padding: 20px;
    margin: 10px;
    box-shadow: 0 5px 10px rgba(163, 157, 157, 0.2);
    text-align: center;
    color: #0a0808;
    border-radius: 10px;
 }
 .statistics-box h3 {
    font-size: 36px;
    margin-bottom: 20px;
 }

</style>


</head>
<body>

<%@ include file="adminnav.jsp" %>

<div class="statistics-container">
    <div class="statistics-box">
        <h3>Total Employees</h3>
	<p id="anotherStatCount">${ecount}</p><%-- Employee counts from employee table --%>
    </div>
    
    <div class="statistics-box">
        <h3>Total Customers</h3>
        <p id="anotherStatCount">${ccount}</p>
    </div>
</div>

</body>
</html>
