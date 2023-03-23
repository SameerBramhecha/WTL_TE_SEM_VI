<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBookStore</title>
<style>
table,th,td{
border : 2px solid;
}
table{
	font-size : 20px;
	text-align:center;
	margin-left:auto;
	margin-right:auto;
	width:90%;
/*  	border-spacing: 5px; */
}
td{
	padding : 13px;
}
h1{
	font-size : 40px;
}
button{ 
  background-color: #008CBA;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 24px;
  border-radius : 8px;
  width : 25%;
}
</style>
</head>
<body>
	<h1>
	<center>E-BOOK STORE</center>
	</h1>
	<%
	try{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/wtl?characterEncoding=utf8";
		String un = "root";
		String pass = "sameer";
		Connection con = DriverManager.getConnection(url,un,pass);

		PreparedStatement st = null;
		ResultSet rs = null;	
		st = con.prepareStatement("SELECT * FROM ebookstore;");
		rs = st.executeQuery();
		int id;
		String name;
		String author;
		int price;
		int quantity;
	%>
	<table>
		<tr>
		<th>ID</th>
		<th>NAME</th>
		<th>AUTHOR</th>
		<th>PRICE</th>
		<th>QUANTITY</th>
		</tr>
		<%
		while(rs.next())
		{	
		%>
		<tr>
			<td> <%= rs.getInt(1) %></td>
			<td> <%= rs.getString(2) %></td>
			<td> <%= rs.getString(3) %></td>
			<td> <%= rs.getInt(4) %></td>
			<td> <%= rs.getInt(5) %></td>
		</tr>
		<%} %>
	</table>
	<%
	}catch(Exception e){
		System.out.print("Exception Caught: " + e);
	}
	%>
	<br>
	<form action="index.html">
		<center><button>Go Home</button></center>   
	</form>
</body>
</html>