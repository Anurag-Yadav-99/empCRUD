<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <style>
        body {
            background: linear-gradient(135deg, #2c3e50, #4ca1af);
            font-family: 'Poppins', sans-serif;
            color: #fff;
            min-height: 100vh;
        }
        .navbar {
            padding: 1.5rem;
            background-color: rgba(0, 0, 0, 0.8);
        }
        .navbar-brand {
            font-size: 1.5rem;
            font-weight: bold;
            color: #fff;
            text-transform: uppercase;
        }
        .navbar-text {
            color: #ccc;
            font-size: 0.9rem;
        }
        .container {
            padding-top: 2rem;
        }
        .heading {
            color: #fff;
            font-weight: 700;
            text-align: center;
            font-size: 2.5rem;
            letter-spacing: 1.5px;
            text-transform: uppercase;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
            border-bottom: 4px solid #ff416c;
            padding-bottom: 10px;
            display: inline-block;
            margin-bottom: 2rem;
        }
        .form-control {
            background-color: rgba(255, 255, 255, 0.1);
            border: none;
            color: #fff;
            padding: 0.8rem;
            margin-bottom: 1rem;
        }
        .form-control:focus {
            background-color: rgba(255, 255, 255, 0.2);
            color: #fff;
            box-shadow: none;
        }
        .form-label {
            color: #fff;
            font-weight: 600;
        }
        .btn-primary {
            background-color: #ff6f61;
            border: none;
            padding: 0.8rem 2rem;
            font-weight: 600;
            letter-spacing: 1px;
            text-transform: uppercase;
        }
        .btn-primary:hover {
            background-color: #ff8561;
        }
        .btn-outline-danger {
            color: #fff;
            border-color: #fff;
        }
        .btn-outline-danger:hover {
            background-color: #fff;
            color: #ff6f61;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">EMPLOYEE MANAGEMENT SYSTEM</a>
            <span class="navbar-text">
                © All Rights Reserved
            </span>
        </div>
    </nav>

    <div class="container">
        <h2 class="heading">Add Employee</h2>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <form action="${pageContext.request.contextPath}/handleEmployee" method="post">
                    <div class="mb-3">
                        <label for="name" class="form-label">Name:</label>
                        <input type="text" name="empName" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label for="empAge" class="form-label">Age:</label>
                        <input type="number" id="empAge" name="empAge" class="form-control" required min="0" placeholder="">
                        <div class="error-message" id="ageError"></div>
                    </div>
                    <div class="mb-3">
                        <label for="address" class="form-label">Address:</label>
                        <input type="text" name="empAddress" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label for="Department" class="form-label">Department:</label>
                        <input type="text" name="empDept" class="form-control" required>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">Save</button>
                        <a href="${pageContext.request.contextPath}/home" class="btn btn-outline-danger">Back</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
    function validateAge(age) {
        const ageNum = parseInt(age, 10);
        return !isNaN(ageNum) && ageNum >= 0 && ageNum <= 100;
    }
    document.getElementById('empAge').addEventListener('input', function(e) {
        if (e.target.value < 0) {
            e.target.value = 0;
        }
    });
    </script>
</body>
</html>