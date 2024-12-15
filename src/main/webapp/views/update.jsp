<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Employee</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;700&family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Inter', sans-serif;
            background-color: #f8f9fa;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        
        .header {
            background-color: #007bff;
            color: white;
            padding: 20px;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .header .title {
            font-size: 2rem;
            font-weight: 700;
            margin: 0;
        }

        form {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 10px 0;
        }

        input[type="text"],
        input[type="email"],
        input[type="tel"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 1rem;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        tr:last-child td {
            text-align: right;
        }

        label {
            font-weight: bold;
        }
    </style>
</head>
<body>
<%@ page import="com.project.EmployeeManagement.model.Employee" %>
<% Employee employee = (Employee)session.getAttribute("employee"); %>

    <form action="/update/<%= employee.getId() %>">
    <nav class="header">
        <h1 class="title">Employee Management</h1>
        <p class="description">Update the employee details.</p>
    </nav>
        <table>
            <tr>
                <td><label for="id">ID</label></td>
                <td><input type="text" id="id" name="id" value="<%= employee.getId() %>" disabled></td>
            </tr>
            <tr>
                <td><label for="name">Name</label></td>
                <td><input type="text" id="name" name="name" value="<%= employee.getName() %>" required></td>
            </tr>
            <tr>
                <td><label for="email">Email</label></td>
                <td><input type="email" id="email" name="email" value="<%= employee.getEmail() %>" required></td>
            </tr>
            <tr>
                <td><label for="designation">Designation</label></td>
                <td><input type="text" id="designation" name="designation" value="<%= employee.getDesignation() %>" required></td>
            </tr>
            <tr>
                <td><label for="phoneNumber">Phone Number</label></td>
                <td><input type="tel" id="phoneNumber" name="phoneNumber" value="<%= employee.getPhoneNumber() %>" required></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Update"></td>
            </tr>
        </table>
    </form>
</body>
</html>
