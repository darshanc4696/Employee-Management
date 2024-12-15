<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.project.EmployeeManagement.model.Employee, java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Management</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;700&family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Inter', sans-serif;
            background-color: #f8f9fa;
            color: #333;
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

        .header .description {
            font-size: 1rem;
            font-weight: 300;
            margin-top: 5px;
        }

        .main {
        	margin: 4rem;
            padding: 20px;
        }

        .Adding {
            text-align: right;
            margin-bottom: 20px;
        }

        .Adding a {
            display: inline-block;
            background-color: #007bff;
            color: white;
            font-size: 1rem;
            font-weight: 700;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }

        .Adding a:hover {
            background-color: #0056b3;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: white;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #007bff;
            color: white;
            text-align: center;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 0.9rem;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        @media (max-width: 768px) {
            .Adding {
                text-align: center;
            }

            table {
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>
	<nav class="header">
        <h1 class="title">Employee Management</h1>
        <p class="description">List of employees working</p>
    </nav>
<% List<Employee> employees = (List<Employee>)session.getAttribute("employees"); %>

<section class="main">
    <div class="Adding">
        <a href="/views/add.jsp">ADD</a>
    </div>

    <div class="content">
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Designation</th>
                    <th>Phone Number</th>
                    <th colspan="2">Actions</th>
                </tr>
            </thead>
            <tbody>
                <% for(Employee employee : employees) { %>
                <tr>
                    <td><%= employee.getName() %></td>
                    <td><%= employee.getEmail() %></td>
                    <td><%= employee.getDesignation() %></td>
                    <td><%= employee.getPhoneNumber() %></td>
                    <td>
                        <form action="/getemployee/<%= employee.getId() %>">
                            <input type="submit" value="Update">
                        </form>
                    </td>
                    <td>
                        <form action="/delete/<%= employee.getId() %>">
                            <input type="submit" value="Delete">
                        </form>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</section>
</body>
</html>
