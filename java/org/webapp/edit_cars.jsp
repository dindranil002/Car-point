<%@page import="com.entity.CarDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CarDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Car Form</title>
    <link rel="stylesheet" href="add_cars.css">
    <style>
    </style>
</head>
<body>
    <div class="container">
        <h2>Edit Car</h2>
        
        <%
        int id =Integer.parseInt(request.getParameter("id"));
        CarDAOImpl dao=new CarDAOImpl(DBConnect.getConn());
        CarDtls c=dao.getBookById(id);
        %>
        
            <form action="edit_cars" method="post" >
            <input type="hidden" name="id" value="<%=c.getCarId() %>">
            <div class="form-group">
                <label for="carMake">Car Make:</label>
                <select id="carMake" name="carMake" required >
                <%
                    if("Audi".equals(c.getCarName())){%>
                    <option value="Audi">Audi</option>
                    <option value="Bmw">BMW</option>
                    <option value="Porsche">Porsche</option>
                    <option value="Mg">MG</option>
                    <option value="Mahindra">Mahindra</option>
                    <option value="Jaguar">Jaguar</option>
                    <%}if("Bmw".equals(c.getCarName())){%>
                    <option value="Bmw">BMW</option>
                    <option value="Audi">Audi</option>
                    <option value="Porsche">Porsche</option>
                    <option value="Mg">MG</option>
                    <option value="Mahindra">Mahindra</option>
                    <option value="Jaguar">Jaguar</option>
                   <%}
                    else if("Porsche".equals(c.getCarName())){%>
                    <option value="Porsche">Porsche</option>
                    <option value="Audi">Audi</option>
                    <option value="Bmw">BMW</option>
                    <option value="Mg">MG</option>
                    <option value="Mahindra">Mahindra</option>
                    <option value="Jaguar">Jaguar</option>
                   <%}
                    else if("Mg".equals(c.getCarName())){%>
                    <option value="Mg">MG</option>
                    <option value="Audi">Audi</option>
                    <option value="Porsche">Porsche</option>
                    <option value="Bmw">BMW</option>
                    <option value="Mahindra">Mahindra</option>
                    <option value="Jaguar">Jaguar</option>
                   <%}
                    if("Mahindra".equals(c.getCarName())){%>
                    <option value="Mahindra">Mahindra</option>
                    <option value="Audi">Audi</option>
                    <option value="Bmw">BMW</option>
                    <option value="Mg">MG</option>
                    <option value="Porsche">Porsche</option>
                    <option value="Jaguar">Jaguar</option>
                   <%}
                    if("Jaguar".equals(c.getCarName())){%>
                    <option value="Jaguar">Jaguar</option>
                    <option value="Audi">Audi</option>
                    <option value="Bmw">BMW</option>
                    <option value="Mg">MG</option>
                    <option value="Porsche">Porsche</option>
                    <option value="Mahindra">Mahindra</option>    
               <%}
                    %>
                </select>
            </div>
            <div class="form-group">
                <label for="model">Model:</label>
                <input type="text" id="model" name="model" required value="<%=c.getModel()%>">
            </div>
            <div class="form-group">
                <label for="specification">Specification:</label>
                <input type="text" id="specification" name="specification" required value="<%=c.getSpecification()%>">
            </div>
            
            <div class="form-group">
                <label for="price">Price:</label>
                <input type="number" id="price" name="price" min="0" step="0.01" required value="<%=c.getPrice()%>">
            </div>
            
            <label for="carstatus">Car status:</label>
            <select id="carstatus" name="carstatus" required value="<%=c.getStatus()%>">
                    
                    <%
                    if("Active".equals(c.getStatus())){%>
                        <option value="Active">Active</option>
                    	<option value="Inactive">Inactive</option>
                    <%}else{%>
                        <option value="Inactive">Inactive</option>
                    	<option value="Active">Active</option>
                   <%}
                    %>
                </select> <br> <br>
           
            <button type="submit" value="submit">Update</button>
        </form>
    </div>
</body>
</html>
