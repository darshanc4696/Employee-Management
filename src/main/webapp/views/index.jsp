<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

        .content {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 40px 20px;
        }

        .content .image img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .employee_list {
            text-align: center;
        }

        .employee_list a {
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

        .employee_list a:hover {
            background-color: #0056b3;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        
        .employee_list p{
        	font-size: 3rem;
        	letter-spacing: -0.05rem;
        	font-weight: 700;
        	color: gray;
        	text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }
        

        @media (min-width: 768px) {
            .content {
                flex-direction: row;
                justify-content: space-between;
                padding: 60px;
            }

            .content .image, .content .employee_list {
                flex: 1;
                margin: 0 20px;
            }
        }
    </style>
</head>
<body>
    <nav class="header">
        <h1 class="title">Employee Management</h1>
        <p class="description">List of employees working</p>
    </nav>

    <section class="content">
        <div class="image">
            <img src="/css/Screenshot 2023-04-30 155828.png" alt="employee picture">
        </div>

        <div class="employee_list">
        	<p>"The only thing that overcomes hard luck is hard work.”</p>
            <a href="/getemployees">Start</a>
        </div>
    </section>
</body>
</html>
