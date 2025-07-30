<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
         if(session.getAttribute("name")==null){
        	 response.sendRedirect("signin.jsp");
         }
    
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Rental Website</title>
    <link rel="stylesheet" href="style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

</head>
<body>
    <!--Navbar -->
    <header>
        <div class="nav container">
            <!-- Menu icons -->
            <i class='bx bx-menu' id="menu-icon"></i>
            <!--logo-->
            <a href="index.jsp" class="logo">Car<span>Point</span></a>
            <!--navlist-->
            <ul class="navbar">
                <li><a href="#home" class="active">Home</a></li>
                <li><a href="#cars">Cars</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="Logout">Logout</a></li>
                <li><a href="#"> Hello, <%=session.getAttribute ( "name") %></a></li>
            </ul>
            <!--search icon-->
            <i class='bx bx-search' id="search-icon"></i>
            <!--search box-->
            <div class="search-box container">
                <input type="search" name="" id="" placeholder="Search here...">
            </div>
        </div>
    </header>
    <!--home-->
    <section class="home" id="home">
        <div class="home-text">
            <h1>Powerful Fun And <br>Fierce To <span>Drive</span></h1> 
            <p>"Your Journey, Your Way: Book with Us Today!"</p><br> <br>
                <a href="#cars" class="btn">Book a Car Now</a>
        </div>
    </section>
    <!--car section-->
    <section class="cars" id="cars">
        <div class="heading">
            <span>All Cars</span>
            <h2>We Have All Types Of Cars</h2>
            <p></p>
        </div>
        <!-- car container-->
        <div class="cars-container container">
            <!--box 1-->
            <div class="box">
               <a href="porche.jsp"><img src="img/car1.jpg" alt=""></a>
                <a href="porche.jsp"><h2>Porsche</h2></a>
            </div>
            <!--box 2-->
            <div class="box">
                <a href="audi.jsp"><img src="img/car2.jpg" alt=""></a>
               <a href="audi.jsp"><h2>Audi</h2></a>
            </div>
            <!--box 3-->
            <div class="box">
                <a href="mahindra.jsp"><img src="img/mahindra-alturas-g4.jpg" alt=""></a>
                <a href="mahindra.jsp"><h2>Mahindra</h2></a>
            </div>
            <!--box 4-->
            <div class="box">
                <a href="mg.jsp"><img src="img/car10.jpeg" alt=""></a>
                <a href="mg.jsp"><h2>MG</h2></a>
            </div>
            <!--box 5-->
            <div class="box">
                <a href="bmw.jsp"><img src="img/car11.jpg" alt=""></a>
                <a href="bmw.jsp"><h2>BMW</h2></a>
            </div>
            <!--box 6-->
            <div class="box">
                <a href="jaguar.jsp"><img src="img/car6.jpg" alt=""></a>
                <a href="jaguar.jsp"><h2>Jaguar</h2></a>
            </div>
        </div>
    </section>
    <section>
        <!--about-->
        <section class="about container" id="about">
            <div class="about-img">
                <img src="img/about.png" alt="">
            </div>
            <div class="about-text">
                
                <h2>Cheapest Fare With <br>Quality Cars</h2><br>
                <p>Are you planning a trip to Kolkata? Do you want to explore the city at your own pace? Then renting cars in Kolkata from CarPoint is the perfect choice. With CarPoint, you can experience a comfortable, hassle-free, and private ride while exploring the City of Joy. So, what are you waiting for? Rent a car in Kolkata from CarPoint and get ready to discover the hidden gems of the city.

                    Whether you're in Kolkata for business or leisure, a CarPoint guarantees you the finest driving experience at affordable rates. With rental cars in Kolkata, you can explore the city at your own pace and enjoy the freedom of choosing your own itinerary.
                    
                    So, get ready to explore the beautiful city of Kolkata in a CarPoint. Book your ride now!</p><br>
                <!--About btn-->
                <a href="#" class="btn">Learn More</a>
            </div>
        </section>
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
    <script src="script.js"></script>
    
</body>
</html>