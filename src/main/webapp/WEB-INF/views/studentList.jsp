<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Details</title>

    <!-- Vendor CSS Files -->
    <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
</head>

<body>
<!-- Header Section -->
<header class="bg-primary text-white text-center py-3">
    <h1>Student Details</h1>
    <p class="lead">View student information below</p>
</header>

<!-- Main Content -->
<section class="container mt-4">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <!-- Student Details Table -->
            <div class="card shadow">
                <div class="card-body">
                    <h4 class="card-title text-center mb-4">Student List</h4>
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <th>Name</th>
                            <th>Class</th>
                            <th>Registration Number</th>
                            <th>Date of Birth</th>
                            <th>Profile Photo</th>
                            <th>Mark</th> <!-- New column for Mark Button -->
                        </tr>
                        </thead>
                        <tbody>
                        <!-- Loop through student list and display their data dynamically -->
                        <c:forEach var="student" items="${students}">
                            <tr>
                                <td>${student.name}</td>
                                <td>Class ${student.studentClass}</td>
                                <td>${student.regNo}</td>
                                <td>${student.dob}</td>
                                <td>
                                    <img src="<c:out value='${student.profilePhoto}' />" alt="Profile Photo" class="img-thumbnail" style="width: 100px; height: 100px;">
                                </td>
                                <td>
                                    <!-- Mark Button -->
                                    <a href="/student/studentList/studentMark" class="btn btn-warning">
                                        Add Marks
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Footer -->
<footer class="bg-light text-center text-muted py-3 mt-4">
    &copy; 2024 Class Management System. All Rights Reserved.
</footer>

<!-- Vendor JS Files -->
<script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

</html>