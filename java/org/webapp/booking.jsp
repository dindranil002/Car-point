<%@page import="com.entity.CarDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CarDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking</title>
<link rel="stylesheet" href="form.css">
</head>
<body>        
  <div class="container">
    <div class="title">Book Your Car</div>
    <div class="content">
    <%
        int id =Integer.parseInt(request.getParameter("id"));
        CarDAOImpl dao=new CarDAOImpl(DBConnect.getConn());
        CarDtls c=dao.getBookById(id);
        %>
      <form method="post" action="booking" onsubmit="return validateform() ">
      <input type="hidden" name="id" value="<%=c.getCarId() %>">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text" name="userName" id="userName" placeholder="Enter your name" required>
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="email" name="userEmail" id="userEmail" placeholder="Enter your email" required>
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="number" name="userMobile" id="userMobile" placeholder="Enter your number" required>
          </div>
          <div class="input-box">
            <span class="details">Address</span>
            <input type="text" name="userAddress" id="userAddress" placeholder="Enter your Address" required>
          </div>
          <div class="input-box">
            <span class="details">Enter Starting Date</span>
            <input type="date" name="userStartDate" id="userStartDate" placeholder="Enter Starting Date" required>
          </div>
          <div class="input-box">
            <span class="details">Enter Return Date</span>
            <input type="date" name="userReturnDate" id="userReturnDate" placeholder="Enter Returning Date" required>
          </div>
          <div class="input-box">
            <span class="details"> Amount/Day</span>
            <input type="number" name="userAmount" id="userAmount" value="<%=c.getPrice()%>" readonly="readonly">
          </div>
          <div class="input-box">
            <span class="details">Model Name</span>
            <input type="text" name="carModel" id="carModel" value="<%=c.getModel()%>" readonly="readonly" >
          </div> 
        </div>
        
        <div class="button">
          <input type="submit" value="Book Now" id="submit" onclick="display()">
        </div>
      </form>
    </div>
  </div>
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="js/main.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <link   rel ="stylesheet" href="alert/dist/sweetalert.css">
  
  <script type="text/javascript">
  function validateform() {
	  var x=document.getElementById("userMobile").value;
	  if(x.length<10)
	  {
		  alert("Enter Correct Phone Number");
		  return false;
	  }
	  else{
		  alert("Booking Successful");
		  true;
		  }
	  }
  	
	</script>

</body>
</html>