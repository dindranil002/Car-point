<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Admin Page</title>
    
    <style>
    :root{
    --main-color:#d90429;
    --text-color:#020120;
    --bg-color:#fff;
}
        body {
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
            
            background: url(img/Background-home.png);
        }

        .admin-header {
            text-align: center;
            background-color: #020120;
            color: white;
            padding: 20px 0;
        }

        .admin-container {
            display: flex;
            justify-content: space-around;
            align-items: center;
            height: 80vh;
        }

        .admin-box {
            width: 200px;
            height: 200px;
            background-color: #d90429;
            color: white;
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            border-radius: 10px;
        }

        .admin-box a {
            text-decoration: none;
            color: white;
            font-weight: bold;
        }
.footer{
    background: var(--text-color);
    color: #f6f6f6;
    border-top: 2px solid var(--main-color);
}
.footer-container{
    display: flex;
    justify-content: space-between;
    gap: 1rem;
}
.footer-container .logo{
    color: var(--bg-color);
    margin-bottom: 1rem;
}
.footer-container .footer-box{
    display: flex;
    flex-direction: column;
}
.social{
    display: flex;
    align-items: center;
}
.social a{
    font-size: 24px;
    color: var(--bg-color);
    margin-right: 1rem;
}
.social a:hover{
    color: var(--main-color);

}
.footer-box h3{
    font-size: 1.1rem;
    font-weight: 400;
    margin-bottom: 1rem;
}
.footer-box a,
.footer-box p{
    color: #818181;
    margin-bottom: 10px;
}
.footer-box a:hover{
    color: var(--main-color);
} 
.copyright{
    padding: 20px;
    text-align: center;
    color: var(--bg-color);
    background: var(--text-color);
}
.logo{
    margin-left: 0px;
    font-size: 1.2rem;
    font-weight: 700;
    color: var(--text-color);
}
.logo span{
    color: var(--main-color);
}
        
    </style>
</head>
<body>
    <div class="admin-header">
        <h1>Hello Admin</h1>
    </div>
    <form action="add_cars" method="post">
    <div class="admin-container">
        <div class="admin-box">
         <a href="add_cars.jsp"><i class="fa-solid fa-square-plus fa-4x"></i></a><br><br>
        
            <a href="add_cars.jsp">Add Cars</a>
        </div>
        <div class="admin-box">
        <a href="all_cars.jsp"><i class="fa-sharp fa-solid fa-car fa-4x"></i></a><br><br>
            <a href="all_cars.jsp">All Cars</a>
        </div>
        <div class="admin-box">
        <a href="all_orders.jsp"><i class="fa-solid fa-pen-to-square fa-4x"></i></a><br><br>
            <a href="all_orders.jsp">All Orders</a>
        </div>
        <div class="admin-box">
        <a href="Logout"><i class="fa-solid fa-right-from-bracket fa-4x"></i></a><br><br>
            <a href="Logout">Logout</a>
        </div>
    </div>
    </form>
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
                <a href="home.jsp">Home</a>
                <a href="home.jsp">Cars</a>
                <a href="home.jsp">Contact</a>
                <a href="home.jsp">Rents</a>
            </div>
            <div class="footer-box">
                <h3>Legal</h3>
                <a href="home.jsp">Privacy</a>
                <a href="home.jsp">Refund Policy</a>
                <a href="home.jsp">Cookie Policy</a>
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
