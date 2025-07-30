<%@page import="com.entity.CarDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CarDAOImpl"%>
<%@page import="java.awt.print.Book"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 100px;
        }

        table, th, td {
            border: 1px solid #ccc;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .action-column {
            text-align: center;
        }

        .action-column a {
            text-decoration: none;
            color: #007bff;
            margin: 0 5px;
        }
    </style>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Image</th>
                <th>Car Make</th>
                <th>Car Model</th>
                <th>Specification</th>
                <th>price</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
        <%
        CarDAOImpl dao=new CarDAOImpl(DBConnect.getConn());
        List<CarDtls> list= dao.getAllCars(); 
        for(CarDtls c:list){
        %>
       <tr>
                <td><%=c.getCarId() %></td>
                <td><img src="img/<%=c.getPhotoName()%>"
                style="width: 50px;height:50px;"></td>
                <td><%=c.getCarName() %></td>
                <td><%=c.getModel() %></td>
                <td><%=c.getSpecification() %></td>
                <td><%=c.getPrice()%></td>
                <td><%=c.getStatus() %></td>
                <td class="action-column">
                    <a href="edit_cars.jsp?id=<%=c.getCarId()%>"><i class="fa-solid fa-pen-to-square"></i> Edit</a>
                    <a href="delete?id=<%=c.getCarId() %>"><i class="fa-sharp fa-solid fa-trash"></i> Delete</a>
                </td>
            </tr>
        <%	
        
        }
        
        %>
            
            
        </tbody>
    </table>
</body>
</html>
    