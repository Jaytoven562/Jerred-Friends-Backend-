<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<title>Save Customer</title>

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />
		  <link rel="stylesheet" href="https://kit.fontawesome.com/dad6b99985.css" crossorigin="anonymous">
    <link rel="stylesheet" href = "https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
		  
	<style>
		h2 {
		  text-align: center;
		}
	</style>
</head>

<body>


<header>
        <div class="container-fluid p-0">
            <nav class="navbar navbar-expand-lg ">
                  <a class="navbar-brand" href="#">Jerred & Friends</a>
                  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <div class="mr-auto">

                    </div>

                    </div>
                    <ul class="navbar-nav">
                      <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="http://127.0.0.1:5500/src/Index.html">Home</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="http://127.0.0.1:5500/src/adoption.html">Adopt</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="http://127.0.0.1:5500/src/Donate.html">Donate</a>
                      </li>
                      
                      <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                          Animal Health
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <li><a class="dropdown-item" href="https://www.understandinganimalresearch.org.uk/news/why-vaccinate-your-pets">Vaccinations</a></li>
                          <li><a class="dropdown-item" href="#">Spay/Neuter</a></li>
                          <li><a class="dropdown-item" href="#">Nutrition</a></li>
                          <li><a class="dropdown-item" href="#">Exercise</a></li>
                        </ul>
                      </li>

                
                      <li class="nav-item">
                        <a class="nav-link" href="http://127.0.0.1:5500/src/Admin-login.html">Admin Login</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="http://localhost:8083/web-customer-tracker2/Customer/list">Crud</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="http://localhost:8083/spring-crm-rest/">Rest</a>
                      </li>



                    </ul>
                  </div>
                </div>
              </nav>
              
              
              
              </header>







	
	<div id="wrapper">
		<div id="header">
			<h2>Jerred & Friends Relationship Manager</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save Customer</h3>
	
		<form:form action="saveCustomer" modelAttribute="Customer" method="POST">
		
		

			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />
					
			<table>
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><form:input path="firstName" /></td>
					</tr>
				
					<tr>
						<td><label>Last name:</label></td>
						<td><form:input path="lastName" /></td>
					</tr>

					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>

				
				</tbody>
			</table>
		
		
		</form:form>
	
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/Customer/list">Back to List</a>
		</p>
	
	</div>

</body>

</html>










