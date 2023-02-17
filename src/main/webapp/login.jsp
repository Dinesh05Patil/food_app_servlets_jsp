<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


		<form action="login" method="post">
	<div style="border:1px;margin-left: 500px;font-size: 30px;margin-top: 300px">
		<table style="font-size: 30px">
			<tr>
				<td>Email :</td>
				<td><input type="email" name="email"
					placeholder="Enter the email" style="font-size: 20px;width:250px;height:20px"></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="password" name="pwd"
					placeholder="Enter the password" style="font-size: 20px;width:250px;height:20px"></td>
			</tr>
			<tr>
				<td></td>
				<td> <marquee behavior="slide">  <input type="submit" value="login" ></td></marquee>
			</tr>
		</table>
		</div>
		</form>


	
</body>
</html>