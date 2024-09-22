<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
	integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<style>
    body {
        background: linear-gradient(135deg, #2c3e50, #4ca1af); /* Sleek gradient */
        font-family: 'Poppins', sans-serif;
        color: #fff; /* White text for contrast */
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
    /* Styling the heading */
    .heading-wrapper {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-top: 3rem;
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
    }
    .employee-card {
        background: #fff;
        border-radius: 8px;
        box-shadow: 0 3px 10px rgba(0, 0, 0, 0.15);
        padding: 1.5rem;
        margin-bottom: 2rem;
        transition: transform 0.3s ease;
        color: #333;
    }
    .employee-card:hover {
        transform: translateY(-10px);
    }
    .employee-card h5 {
        font-weight: 600;
        font-size: 1.2rem;
        color: #2c3e50;
    }
    .employee-card p {
        margin: 0.2rem 0;
        color: #777;
        font-size: 0.95rem;
    }
    .actions {
        margin-top: 0.8rem;
    }
    .actions a {
        color: #fff;
        font-size: 1rem;
        margin-right: 0.4rem;
        padding: 0.5rem;
        border-radius: 50%;
        background-color: #ff6f61;
        transition: background 0.3s ease;
    }
    .actions a:hover {
        background-color: #ff8561;
    }
    .btn-add-employee {
        background: #ff6f61;
        color: #fff;
        border: none;
        font-size: 0.9rem;
        padding: 0.8rem 1.5rem;
        border-radius: 50px;
        text-transform: uppercase;
        transition: background 0.3s ease;
    }
    .btn-add-employee:hover {
        background: #ff8561;
    }
</style>

<title>Employee Management</title>

</head>

<body>

<nav class="navbar navbar-expand-lg">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">EMPLOYEE MANAGEMENT SYSTEM</a>
    <div class="collapse navbar-collapse">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0"></ul>
      <span class="navbar-text">
        © All Rights Reserved
      </span>
    </div>
  </div>
</nav>

<div class="container">
	<div class="heading-wrapper">
		<h2 class="heading">List of Employees</h2>
		<a href="addEmployee" class="btn btn-add-employee">
			<i class="fa-solid fa-user-plus"></i> Add Employee
		</a>
	</div>
	<div class="row justify-content-center mt-5">
		<c:forEach items="${employeesList}" var="emp">
			<div class="col-md-4">
				<div class="employee-card">
					<h5>${emp.empName}</h5>
					<p><strong>Age:</strong> ${emp.empAge}</p>
					<p><strong>Address:</strong> ${emp.empAddress}</p>
					<p><strong>Department:</strong> ${emp.empDept}</p>
					<div class="actions">
						<a href="update/${emp.empId}" class="btn btn-warning">
							<i class="fa-regular fa-pen-to-square"></i>
						</a>
						<a href="remove/${emp.empId}" class="btn btn-danger">
							<i class="fa-solid fa-trash"></i>
						</a>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OP5zxSwTRjwpXl3mLQ/x4vF1ZcyWfqJcpHwIpccFQupEkEbIC7LnzBgMD51hAmm/"
	crossorigin="anonymous"></script>
</body>
</html>
