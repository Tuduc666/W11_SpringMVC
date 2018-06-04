<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>User Form Page</h1>
	<div class="container">
		<form action="process-form" method="post">	
			<div class="sub_field">
				<label>First Name</label>
				<input type="text" id="firstName" name="firstName"  />   
			</div>
			<div class="sub_field">
				<label>Last Name</label>
				<input type="text" id="lastName" name="lastName"   />   
			</div>
			<div class="sub_field">
				<label>User Name</label>
				<input type="text" id="userName" name="userName"   />   
			</div>
			<div class="sub_field">
				<label>Gender</label>
				<input type="radio"  name="gender" value="male"   />   Male
				<input type="radio"  name="gender" value="female"   />   Female
			</div>
			<div class="sub_field">
				<label>Email</label>
			 	<input type="email"  name="contactInfo.email" />    
			</div>
			<div class="sub_field">
				<label>Phone Number</label>
			 	<input type="number"  name="contactInfo.phoneNumber"  />    
			</div>
			<div class="sub_field">
				<label>linkedInUrl</label>
			 	<input type="text" name="contactInfo.linkedInUrl"  />    
			</div>
			<div class="sub_field">
				<label>ssn</label>
			 	<input type="number"  name="privateInfo.ssn"  />    
			</div>
			<div class="sub_field">
				<label>ccn</label>
			 	<input type="number"  name="privateInfo.ccn"  />    
			</div>
			<div class="sub_field">
				<label>dob</label>
			 	<input type="date"  name="privateInfo.dob"  />    
			</div>
			

			<div class="btn">
				<input type="submit" name="submit"  value="Confirm Info" />
			</div>
		</form>
	</div>
</body>
</html>