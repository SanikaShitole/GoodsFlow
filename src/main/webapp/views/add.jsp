<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Product</title>


<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap"
	rel="stylesheet">


<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<jsp:include page="navbar.jsp"></jsp:include>

<style>
body {
	background-image:
		url('https://images.pexels.com/photos/255379/pexels-photo-255379.jpeg?auto=compress&cs=tinysrgb&w=600');
	background-size: cover;
	background-position: center;
	color: #fff;
	font-family: 'Poppins', sans-serif;
	margin: 0;
	padding: 0;
}

.register-container {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	padding: 200px;
}

.register-form {
	background-color: #ffffff;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	padding: 30px;
	width: 100%;
	max-width: 600px;
}

.register-heading {
	text-align: center;
	font-size: 2rem;
	margin-bottom: 20px;
	color: #333;
	text-transform: uppercase;
}

.form-group {
	margin-bottom: 15px;
}

.form-control {
	border-radius: 5px;
	border: 1px solid #ccc;
	padding: 12px;
	font-size: 1rem;
}

.btn-success {
	width: 100%;
	padding: 12px;
	font-size: 1.1rem;
	background-color: #28a745;
	color: #fff;
	border: none;
	border-radius: 5px;
	transition: background-color 0.3s ease;
}

.btn-success:hover {
	background-color: #218838;
}

@media ( max-width : 768px) {
	.register-form {
		padding: 20px;
	}
	.register-heading {
		font-size: 1.5rem;
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
		padding: 10px;
	}
}
</style>
</head>
<body>

	<!-- Form Container -->
	<div class="register-container">
		<div class="col-md-9 register-right">
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="home" role="tabpanel"
					aria-labelledby="home-tab">
					<h3 class="register-heading">Add Product Details here</h3>
					<form action="insert-product" method="post">
						<div class="row register-form">
							<div class="col-md-12">
								<div class="form-group">
									<input type="text" name="name" class="form-control"
										placeholder="Product Name *" value="" />
								</div>
								<div class="form-group">
									<input type="number" name="price" class="form-control"
										placeholder="Price *" value="" />
								</div>
								<div class="form-group">
									<input type="number" name="qty" class="form-control"
										placeholder="Quantity *" value="" />
								</div>
								<div class="form-group">
									<input type="text" name="category" class="form-control"
										placeholder="Category *" value="" />
								</div>
								<button type="submit" class="btn btn-success">Save
									Record</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
