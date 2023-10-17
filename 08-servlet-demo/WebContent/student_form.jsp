<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Student Form</h2>
<form action="StudentServlet">
  <div class="form-group m-3">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
   
  </div>
 <div class="col m-3">
  <label for="exampleInputName">User Name</label>
      <input type="text" class="form-control" name="username" placeholder="Username">
    </div>
    
 <div>
 <select class="form-select m-3" name = "degree">
				<option>BE</option>
				<option>Bcom</option>
				<option>Bsc</option>
			</select>
</div>
<div class="form-check ">
<label for="exampleGender">Gender</label>
 <br>
<input type="radio" name="gender" value="Male" /> Male
<br>
			<input type="radio" name="gender" value="Female" /> Female

</div>	

<div class="form-check mt-3 ">
 	<label for="exampleGender">Favourite Language</label>
 	<br>
			<input type="checkbox" name = "language" value="Java" /> Java
			<input type="checkbox" name = "language" value="Python" /> Python
			<input type="checkbox" name = "language" value="Js" /> Js
</div>

  <button type="submit" class="btn btn-primary m-3">Submit</button>
  
</div>	

</form>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>