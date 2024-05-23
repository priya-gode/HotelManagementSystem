<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 

<html>
    <head>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
       
        <style>
           body{
               background: white;
           }
           .emp-profile{
               padding: 3%;
               margin-top: 3%;
               margin-bottom: 3%;
               border-radius: 0.5rem;
               background: -webkit-linear-gradient(left, #3931af, #00c6ff);
           }
           .profile-img{
               text-align: center;
           }
           .profile-img img{
               width: 70%;
               height: 100%;
           }
           .profile-img .file {
               position: relative;
               overflow: hidden;
               margin-top: -20%;
               width: 70%;
               border: none;
               border-radius: 0;
               font-size: 15px;
               background: #212529b8;
           }
           .profile-img .file input {
               position: absolute;
               opacity: 0;
               right: 0;
               top: 0;
           }
           .profile-head h5{
               color: #333;
           }
           .profile-head h6{
               color: #0062cc;
           }
           .profile-edit-btn{
               border: none;
               border-radius: 1.5rem;
               width: 70%;
               padding: 2%;
               font-weight: 600;
               color: #6c757d;
               cursor: pointer;
           }
           .proile-rating{
               font-size: 12px;
               color: #818182;
               margin-top: 5%;
           }
           .proile-rating span{
               color: #495057;
               font-size: 15px;
               font-weight: 600;
           }
           .profile-head .nav-tabs{
               margin-bottom:5%;
           }
           .profile-head .nav-tabs .nav-link{
               font-weight:600;
               border: none;
           }
           .profile-head .nav-tabs .nav-link.active{
               border: none;
               border-bottom:2px solid #0062cc;
           }
           .profile-work{
               padding: 14%;
               margin-top: -15%;
           }
           .profile-work p{
               font-size: 12px;
               color: #818182;
               font-weight: 600;
               margin-top: 10%;
           }
           .profile-work a{
               text-decoration: none;
               color: #495057;
               font-weight: 600;
               font-size: 14px;
           }
           .profile-work ul{
               list-style: none;
           }
           .profile-tab label{
               font-weight: 600;
               color:white;
           }
           .profile-tab p{
               font-weight: 600;
               color: #0062cc;
           }
        </style>
    </head>
    <body>
        <%@ include file="employeenavbar.jsp" %>
        <div class="container emp-profile">
            <div class="row justify-content-center align-items-center">
                <div class="col-md-8">
                    <form method="post" action="update">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="profile-head text-center">
                                    <h3 style="color:white">Hi, ${ename}</h3>
                                </div>
                            </div>
                        </div>
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Name</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p><input type="text" name="name" required="required" value="${emp.name}"/></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Email</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p><input type="email" name="email" required value="${emp.email}" readonly/></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Phone</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p><input type="text" name="contact" required value="${emp.contact}" /></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Date of Birth</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p><input type="date" name="dob" required="required" value="${emp.dateofbirth}" /></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Salary</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p><input type="number" name="salary" step="0.01" required value="${emp.salary}" readonly /></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Location</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p><input type="text" name="location" required value="${emp.location}"/></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Role</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p><input type="text" name="role" required value="${emp.role}" readonly/></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Password</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p><input type="password" name="pwd" required value="${emp.password}" /></p>
                                    </div>
                                </div>
                                <div class="row justify-content-center">
                                    <input style="background-color:white;color:black" type="submit" value="Update" class="btn btn-primary">
                                </div>
                            </div>
                        </div>
                    </form>           
                </div>
            </div>
        </div>
    </body>
</html>
