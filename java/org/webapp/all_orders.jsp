<%@page import="com.entity.booking"%>
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
                <th>Name</th>
                <th>Email</th>
                <th>Contact</th>
                <th>Address</th>
                <th>Starting Date</th>
                <th>Return Date</th>
                <th>Amount/Day</th>
                <th>Model Name</th>
            </tr>
        </thead>
        <tbody>
        <tbody>
        <%
        CarDAOImpl dao=new CarDAOImpl(DBConnect.getConn());
        List<booking> list= dao.getAllorders(); 
        for(booking d:list){
        %>
       <tr>
                <td><%=d.getuserId() %></td>
                <td><%=d.getuserName() %></td>
                <td><%=d.getuserEmail() %></td>
                <td><%=d.getuserMobile() %></td>
                <td><%=d.getuserAddress()%></td>
                <td><%=d.getuserStartDate() %></td>
                <td><%=d.getuserReturnDate() %></td>
                <td><%=d.getuserAmount() %></td>
                <td><%=d.getcarModel()%></td>
            </tr>
        <%	
        
        }
        
        %>
            
            
        </tbody>
    </table>
</body>
</html>
    