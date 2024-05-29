**Project Title: Hotel Management System**

The project is developed using HTML,CSS for frontend, SpringBoot as middleware and MySQL for backend<br/>

The project contains three modules i.e Admin,Customer,Employee

**Admin Module Consist of:**<br/>
->Admin home<br/>
->Login using the right credentials<br/>
->Register the employee<br/>
->view all the employees<br/>
->Count of employees and customers<br/>

**Employee Module Consist of:**<br/>
->Employee home<br/>
->Login with right credentials<br/>
->view all the bookings<br/>
->Book for the customer offline<br/>
->Manage the check-in and check-out<br/>
->Contact admin<br/>
->Employee profile update<br/>

**Customer Module Consist of:**<br/>
->Customer home<br/>
->Register and login<br/>
->Book Rooms<br/>
->view all the available services<br/>
->view there booking history<br/>

**SpringBoot Advantages:**<br/>
->Provides Modularity and Scalability<br/>
->Opiniated Framework<br/>
->It allowed us to develop the project in MicroServices <br/>
->Providing security with the use of different layers such as Repository and Service layers

**Project Flow:**<br/>
**step1**:<br/>The application starts running from the file which contains the @SpringBootApplication annotation. This file acts as the entry point for the Spring Boot application.<br/>
**step2**:<br/>Upon startup, Spring Boot scans for entities in the models package and creates the required tables in the database based on these entities.<br/>
**step3**:<br/>The application then proceeds to the controllers. Controllers contain methods mapped to specific URLs using annotations such as @GetMapping, @PostMapping, etc.<br/>
**step4**:<br/>When a request is received, the controller checks for the corresponding method in the service layer interface.<br/>
**step5**:<br/>The service layer interface defines the business logic methods, and the service implementation class provides the actual implementation of these methods.<br/>
**step6**:<br/>If user-defined methods or custom queries are needed, they are written in the repository layer. This layer uses interfaces extending JpaRepository or CrudRepository, and custom queries can be defined using the @Query annotation.<br/>
**step7**:<br/>The service implementation interacts with the repository layer to execute database operations.<br/>
**step8**:<br/>The response from the controller is returned to the client, typically through JSP files in a traditional Spring MVC application, which are used to render the output to the user.
 


