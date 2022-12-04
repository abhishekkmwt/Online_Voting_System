<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta  charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
<title>Register</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css" href="css\style.css">
<%@ include file="adminNavbar.jsp"%> 
<%
   
    String a[] = new String[100];
 
    Class.forName("com.mysql.cj.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineVotingSystem","root","mysql");
	
	PreparedStatement preparedStatement = con.prepareStatement("select partie,count(partie) as c from vote group by partie");
	ResultSet rs=((java.sql.Statement) preparedStatement).executeQuery("select partie,count(partie) as c from vote group by partie");
	
    int i=0;
    while(rs.next()){
        a[i] = rs.getString("c");
        i++;
    }
    %>
</head>
<body>
<table class="table table-responsive table-hover" >
		<thead class="table-dark">
			<tr class="text-center">
			<th>Parties</th>
			<th>Names</th>
			<th>Votes</th>
			</tr>
		</thead>
		<tbody>
			<tr class="text-center">
			<td>
			<img src="https://allaboutbelgaum.com/wp-content/uploads/2018/05/nota.jpg" alt="NOTA">
			</td>
			<td>NOTA</td>
			<td><%=a[0]%></td>
			</tr>
			
			<tr class="text-center">
			<td>
			<img src="https://m.economictimes.com/thumb/msid-66428118,width-1200,height-900,resizemode-4,imgsize-94513/aap-agencies.jpg" alt="AAP">
			</td>
			<td>Aam Aadmi Party</td>
			<td><%=a[1]%></td>
			</tr>
			
			<tr class="text-center">
			<td>
			<img src="https://bsmedia.business-standard.com/_media/bs/img/topic-profile/profile-images/thumb/464_464/1554912502.png" alt="BJP">
			</td>
			<td>BJP</td>
			<td><%=a[2]%></td>
			</tr>
			
			<tr class="text-center">
			<td>
			<img src="https://images.news18.com/ibnlive/uploads/2021/02/1614153935_51olnod-qjl._sl1132_.jpg" alt="BSP">
			</td>
			<td>BSP</td>
			<td><%=a[3]%></td>
			</tr>
			
			<tr class="text-center">
			<td>
			<img src="https://bsmedia.business-standard.com/_media/bs/img/topic-profile/profile-images/thumb/464_464/1554907259.png" alt="Congress">
			</td>
			<td>Congress</td>
			<td><%=a[4]%></td>
			</tr>
			
			<tr class="text-center">
			<td>
			<img src="https://yt3.ggpht.com/_I9ILyxWicoD1QPXt7RFHgE1fz8tVfrhzVKm0T7UFQt9ikvwQKHeHC8HFIGZlffSsLyxmupQ8g=s900-c-k-c0x00ffffff-no-rj" alt="CPI">
			</td>
			<td>CPI</td>
			<td><%=a[5]%></td>
			</tr>
		</tbody>
</table>

</body>
</html>