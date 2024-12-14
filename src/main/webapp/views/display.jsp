<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="ISO-8859-1">
<title>Display Page</title>


<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap"
	rel="stylesheet">


<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background-image:
		url('https://images.pexels.com/photos/255379/pexels-photo-255379.jpeg?auto=compress&cs=tinysrgb&w=600');
	background-size: cover;
	font-family: 'Roboto', sans-serif;
	background-color: #f5f7fa;
	margin: 0;
	padding: 0;
}

h1 {
	color: #333;
	font-weight: bold;
	margin-top: 20px;
}

.table {
	background-color: #f8f9fa;
	border-radius: 8px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
	margin-top: 20px;
}

.table th {
	background-color: #007bff;
	color: white;
	font-weight: bold;
}

.table td, .table th {
	padding: 12px;
	text-align: center;
}

.table-hover tbody tr:hover {
	background-color: #e9ecef;
	cursor: pointer;
}

.table-striped tbody tr:nth-child(odd) {
	background-color: #f1f1f1;
}

.btn-warning {
	background-color: #f39c12; /* Update button: Yellow-orange */
	border: none;
	color: white;
	font-weight: bold;
	border-radius: 20px;
	padding: 10px 20px;
	transition: background-color 0.3s, transform 0.3s;
}

.btn-warning:hover {
	background-color: #e67e22;
	transform: scale(1.05);
}

.btn-danger {
	background-color: #e74c3c; /* Delete button: Red */
	border: none;
	color: white;
	font-weight: bold;
	border-radius: 20px;
	padding: 10px 20px;
	transition: background-color 0.3s, transform 0.3s;
}

.btn-danger:hover {
	background-color: #c0392b;
	transform: scale(1.05);
}

.container {
	margin-top: 40px;
}
</style>
</head>

<body>

	<!-- Navbar (Include your actual navbar.jsp file here) -->
	<jsp:include page="navbar.jsp"></jsp:include>
	<br>

	<!-- Heading -->
	<h1 class="text-center pt-4">All Products Data</h1>

	<!-- Table -->
	<div class="container table-responsive py-5">
		<table class="table table-bordered table-hover table-striped">
			<thead class="table-primary">
				<tr>
					<th scope="col">Pid</th>
					<th scope="col">Product Name</th>
					<th scope="col">Price</th>
					<th scope="col">Quantity</th>
					<th scope="col">Category</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="p" items="${products}">
					<tr>
						<th scope="row">${p.pid}</th>
						<td>${p.name}</td>
						<td>${p.price}</td>
						<td>${p.qty}</td>
						<td>${p.category}</td>
						<td><a href="view-product?pid=${p.pid}"
							class="btn btn-warning">UPDATE</a> <a
							href="delete-product?pid=${p.pid}" class="btn btn-danger">DELETE</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>
