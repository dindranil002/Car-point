<%@page import="com.entity.CarDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CarDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="porche.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>

<body>
    <!--Navbar -->
    <header>
        <div class="nav container">
            <!--logo-->
            <a href="index.jsp" class="logo">Car<span>Point</span></a>
            <div class="navb">
                <ul class="navbar">
                    <li><a href="index.jsp" >Home</a></li>
                    <li><a href="index.jsp">Cars</a></li>
                    <li><a href="index.jsp">About</a></li>
                    <li><a href="Logout">Hello, <%=session.getAttribute("name") %></a></li>
                </ul>
            </div>
      </div>
    </header>

    <section class="main">
        <div class="porche"> 
        <%
        CarDAOImpl dao=new CarDAOImpl(DBConnect.getConn());
        List<CarDtls> list= dao.getporscheCar();
        for(CarDtls c:list)
        {%>
        <div class="car1">
                <div class="car_img">
                    <img src="img/<%=c.getPhotoName() %>"alt="">
                </div>
                <div class="wrtn_prt">
                    <h2><%=c.getCarName() %> <br> <span><%=c.getModel() %></span></h2>
                    <h5>
                        <ul>
                            <li ><%=c.getSpecification() %></li>
                            
                        </ul>
                    </h5>
                        <h4><i class='bx bx-rupee'></i><%=c.getPrice() %>/Day</h4>
                    
                    <p>4.7 <i class='bx bxs-star'></i></p>
                    <a href="booking.jsp?id=<%=c.getCarId() %>" class="btn">Book Now!</a>

                </div>
            </div>
        	
       <%}
        %>
        
        
            
            
        </div>
        </div>
    </section>
    <!-- footer -->
    <section class="footer">
        <div class="footer-container container">
            <div class="footer-box">
                <a href="#" class="logo">Car <span>Point</span></a>
                <div class="social">
                    <a href="#"><i class='bx bxl-facebook'></i></a>
                    <a href="#"><i class='bx bxl-twitter'></i></a>
                    <a href="#"><i class='bx bxl-instagram'></i></a>
                    <a href="#"><i class='bx bxl-youtube'></i></a>
                </div>
            </div>
            <div class="footer-box">
                <h3>Page</h3>
                <a href="">Home</a>
                <a href="">Cars</a>
                <a href="">Contact</a>
                <a href="">Rents</a>
            </div>
            <div class="footer-box">
                <h3>Legal</h3>
                <a href="">Privacy</a>
                <a href="">Refund Policy</a>
                <a href="">Cookie Policy</a>
            </div>
            <div class="footer-box">
                <h3>Contact</h3>
                <p>All Over India</p>
            </div>
        </div>
    </section>
    <!-- copyright -->
    <div class="copyright">
        <p>&#169;CarpointVenom All Rights Reserved</p>
    </div>

</body>
</html>