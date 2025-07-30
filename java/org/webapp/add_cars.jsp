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
        <h2>Add Car</h2>
            <form action="add_cars" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="carMake">Car Make:</label>
                <select id="carMake" name="carMake" required>
                     <option selected>--select--</option>
                    <option value="Audi">Audi</option>
                    <option value="Bmw">BMW</option>
                    <option value="Porsche">Porsche</option>
                    <option value="Mg">MG</option>
                    <option value="Mahindra">Mahindra</option>
                    <option value="Jaguar">Jaguar</option>
                    <!-- Add more options as needed -->
                </select>
            </div>
            <div class="form-group">
                <label for="model">Model:</label>
                <input type="text" id="model" name="model" required>
            </div>
            <div class="form-group">
                <label for="specification">Specification:</label>
                <input type="text" id="specification" name="specification" required>
            </div>
            
            <div class="form-group">
                <label for="price">Price:</label>
                <input type="number" id="price" name="price" min="0" step="0.01" required>
            </div>
            
            <label for="carstatus">Car status:</label>
            <select id="carstatus" name="carstatus" required>
                     <option selected>--select--</option>
                    <option value="Active">Active</option>
                    <option value="Inactive">Inactive</option>
                    <!-- Add more options as needed -->
                </select> <br> <br>
            <div class="form-group">
                <label for="carImage">Car Image:</label>
                <input type="file" id="carImage" name="carImage" accept="image/*" required>
            </div>
            <button type="submit" value="submit">Add Car</button>
        </form>
    </div>
</body>
</html>
