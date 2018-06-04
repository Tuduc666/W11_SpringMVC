<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.springmvc.models.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Submission Detail Page</h1>
	<div class="container">
		<table>
			<tr>
				<td>First Name</td>
			 	<td>${userkey.firstName }</td>    
			</tr> 
			<tr>
				<td>Last Name</td>
			 	<td>${userkey.lastName }</td>    
			</tr> 
			<tr>
				<td>User Name</td>
			 	<td>${userkey.userName }</td>    
			</tr> 
			<tr>
				<td>Gender</td>
			 	<td>${userkey.gender }</td>    
			</tr> 
			<tr>
				<td>Email</td>
			 	<td>${userkey.contactInfo.email }</td>    
			</tr> 
			<tr>
				<td>Phone</td>
			 	<td>${userkey.contactInfo.phoneNumber }</td>    
			</tr> 
			<tr>
				<td>url</td>
			 	<td>${userkey.contactInfo.linkedInUrl }</td>    
			</tr> 
			<tr>
				<td>ssn</td>
			 	<td>${userkey.privateInfo.ssn }</td>    
			</tr> 
			<tr>
				<td>ccn</td>
			 	<td>${userkey.privateInfo.ccn }</td>    
			</tr> 
			<tr>
				<td>dob</td>
			 	<td>${userkey.privateInfo.dob }</td>    
			</tr> 
			

		</table>
	</div>
</body>
</html>