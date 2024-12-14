<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Product Management Portal</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">


<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background-image: url('https://images.pexels.com/photos/255379/pexels-photo-255379.jpeg?auto=compress&cs=tinysrgb&w=600');
    background-size: cover;
    background-position: center;
    font-family: 'Poppins', sans-serif;
    margin: 0;
    padding: 0;
}

.container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    text-align: center;
}

..jumbotron {
    background-color: rgba(248, 249, 250, 0.9); 
    border-radius: 12px;
    padding: 60px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1); 
}


.display-4 {
    font-size: 3.5rem;
    font-weight: 900;
    color: #FF8C00;
}

.lead {
    font-size: 1.5rem;
    color: black;
    margin-bottom: 20px;
}

.btn-primary {
    background-color: #f5a623;
    border-color: #f5a623;
    font-size: 1.2rem;
    padding: 15px 40px;
    border-radius: 50px;
    font-weight: 600;
    transition: all 0.3s ease;
}

.btn-primary:hover {
    background-color: #d88c1f;
    border-color: #d88c1f;
    transform: scale(1.1);
}

hr {
    border-top: 2px solid #f5a623;
    width: 60%;
    margin: 30px auto;
}
</style>
</head>
<body>

<jsp:include page="navbar.jsp"></jsp:include>
<br>
<hr>

<div class="container">
    <div class="jumbotron">
        <h1 class="display-4">Product Management Portal</h1>
        <hr class="my-4">
        <p class="lead">"Let solving customer needs drive product development, not the reverse"</p>
    </div>
</div>

</body>
</html>
