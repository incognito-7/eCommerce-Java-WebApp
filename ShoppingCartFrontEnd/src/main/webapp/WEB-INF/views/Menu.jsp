<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Bootstrap Case</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script> -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" id="my-navbar">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a href="Home" class="navbar-brand">Shopping Cart</a>
			</div>
			<div class="collapse navbar-collapse" id="navbar-collapse">
				<a href="RegistrationPage" class="btn btn-warning navbar-btn navbar-right"> SignUp </a>
				<a href="LoginPage" class="btn btn-warning navbar-btn navbar-right"> Login </a>
				<ul class="nav navbar-nav">

					<!-- Dropdown of category -->


					<c:forEach var="category" items="${categoryList}">
						<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">${category.name}
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu scrollable-menu" role="menu">
								<c:forEach var="product" items="${productList}">
									<c:if test="${product.category_id == category.id}">
										<li><a href="#">${product.name}</a></li>
									</c:if>

									<!-- <li><a href="#">${product.name}</a></li> -->
								</c:forEach>


							</ul></li>
					</c:forEach>
					
					<%-- Toggle Product--%>
				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">
						All Products <span class="caret"></span>
					</a>
					<ul class="dropdown-menu scrollable-menu">

						<c:forEach var="product" items="${productList}">
							<li><a href="#">${product.name}</a></li>

						</c:forEach>
					</ul></li>
				<%----%>


				</ul>
			</div>
		</div>
	</nav>


</body>
</html>
