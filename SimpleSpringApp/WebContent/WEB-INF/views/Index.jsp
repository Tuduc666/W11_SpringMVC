<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to the Simple Application</title>
</head>
<body>
	<div class="container">
		<form action="userInfo" method="post">	
			<div class="sub_field">
				<label>User Name</label>
				<input type="text" id="user" name="username"  />
			</div>
			<div class="sub_field">
				<label>Password</label>
				<input type="password" id="pass" name="password"  />
			</div>
			<div class="sub_field">
				<label>Email</label>
				<input type="text" id="email" name="email"  />
			</div>
			<div class="btn">
				<input type="submit" name="submit"  value="Submit Info" />
			</div>
		</form>
	</div>
</body>
</html>