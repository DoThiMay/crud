<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ProductList by CategoryID</title>
    <style> 
    	table, th, td {
    		border:1px solid black;
    	}
    </style>
   
</head>
<body>
   <!-- <h1>name = ${name}, age = ${age }</h1> --> 
    <!-- Hiển thị danh sách categories, bên trong một bảng -->
    <h1>ProductList by CategoryID</h1>
    <table>
    	<tr> 
    	<th> Product's ID </th>
    	<th> Product's Name </th>
    	<th> Price </th>
    	<th> Description </th>
    	<th> Action </th> 
    	</tr>
    	<c:forEach var="product" items="${products}">
    	<tr> 
    	<td> ${product.getProductID()}</td>
    	<td> ${product.getProductName()}</td>
    	<td> ${product.getFormattedPrice()}</td>
    	<td> ${product.getDescription()}</td>
    	<td> <a href= "../../products/changeCategory/${product.getProductID()}"> Update this Product </a></td>
    	</tr>
    	</c:forEach>
    </table>
    <a href= "../../categories"> Go back to Category Page </a>
</body>
</html>