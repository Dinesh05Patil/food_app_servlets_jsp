<%@page import="org.hibernate.hql.spi.id.inline.IdsClauseBuilder"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.ty.team_jsp__mcd_project_dto.Items"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	int id=0;
	int count = 0;
	%>
	<%  List<Integer> id_count=new ArrayList<Integer>(); %>


	<table border="1px">
		<tr>
			<th>Items id</th>
			<th>Items Name</th>
			<th>Items Description</th>
			<th>Items Price</th>
			<th>Items offer</th>
			<th>Items quantity</th>
			<th>order id</th>


		</tr>
		<%
		List<Items> list = (List) request.getAttribute("list");
       
		for (Items items2 : list) {
		%>
		<tr>
		<%  id= items2.getId(); %>
			<td><%=items2.getId()%></td>
			<td><%=items2.getName()%></td>
			<td><%=items2.getDescrption()%></td>
			<td><%=items2.getPrice()%></td>
			<td><%=items2.getOffer()%></td>
			<td><%=items2.getQuantity()%></td>
			<td><label> order_id : </label> <input type="number"
				name="order_id" value=<%=items2.getId()%> placeholder="enter address"></td>
           <% id_count.add(id ); %>
		</tr>
		<tr>
		</tr>
		<%=count++%>
		<%
		}
		%>


		<br>
	</table>
	<br>
	<form action="food_order" method="post">


		<tr>
			<td>Name : <input type="text" name="name"
				placeholder="Enter customer name"><br>
			</td>
		</tr>
		<br>
		<tr>
			<td>Email : <input type="email" name="email"
				placeholder="Enter email"><br></td>
		</tr>
		<br>
		<tr>
			<td>Phone : <input type="tel" name="phone"
				placeholder="enter phone"><br></td>
		</tr>
		<br>
		<tr>
			<td>Address : <input type="text" name="address"
				placeholder="enter address"><br></td>
		</tr>
		<br>
		<tr>
			<input type="submit" value="Print_Bill">
			<br>
			<br>
		Number of orders :	<input type="number" value=<%=count%> readonly="true" name="count">
		</tr>




	</form>
	<a href="add_items">Add</a>


</body>
</html>