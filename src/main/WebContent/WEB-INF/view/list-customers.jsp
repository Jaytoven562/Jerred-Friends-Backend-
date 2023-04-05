<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="_method" value="DELETE" scope="request" />

<!DOCTYPE html>

<html>

<head>
	<title>List Customers</title>
	
	<!-- reference our style sheet -->

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />
		  <link rel="stylesheet" href="https://kit.fontawesome.com/dad6b99985.css" crossorigin="anonymous">
    <link rel="stylesheet" href = "https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    
    <style>
		h2 {
		  text-align: center;
		}
		
		th{
		
	 color:black;
		
		
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
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="adoption.html">Adopt</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="Donate.html">Donate</a>
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
                        <a class="nav-link" href="Admin-login.html">Admin Login</a>
                      </li>
                     



                    </ul>
                  </div>
                </div>
              </nav>
              
              
              <h2>Jerred & Friends adoption database </h2>
              </header>


	
	
	         <div id="container">
	
	          <div id="content">
			
		
	           <table class = "table table-bordered" style="margin-top: 20px;">
			
			
				<tr style ="color-dark">
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
				
		
				
				<!-- loop over and print our customers -->
				<c:forEach var="tempCustomer" items="${Customer}">
				
					<!-- construct an "update" link with customer id -->
					<c:url var="updateLink" value="/Customer/showFormForUpdate">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>	
					
				<c:url var="deleteLink" value="/Customer/deleteCustomer">
                        <c:param name="command" value="DELETE" />
                            <c:param name="customerId" value="${tempCustomer.id}" />
                                </c:url>
                                
       	
					<tr>
						<td> ${tempCustomer.firstName} </td>
						<td> ${tempCustomer.lastName} </td>
						<td> ${tempCustomer.email} </td>
						
						<td>
									
							<!-- display the update link -->
							<a href="${updateLink}">Update</a>
							
							<a href="${deleteLink}"
onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">
Delete</a>
							
						</td>
						
					</tr>
				
				</c:forEach>
				
		
						
			</table>
			
			
				<!-- put new button: Add Customer -->
		<input style = "text-align:center" type="button" value="Add Customer"
				   onclick="window.location.href='showFormForAdd'; return false;"
				   class="add-button"
			/>
     
				
		</div>
	
	</div>
	
	

</body>

</html>









