<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/webresources/styles/index.css" />
   




<title>Deepa Clinic Management</title>
</head>
<body>
	
    <section id="top">
        <div class="container">

            <div class="heading">

                <center>
                    <h2>Deepa Clinic Management</h2>
                </center>

            </div>
        </div>
    </section>


        <div align="center">
            <h4><a href="/new">Add new Patient</a></h4>
        </div>

 

	
	  <table>
    <tr>
      		<th>Patient ID</th>
            <th>Patient Name</th>
            <th>Diagnosis</th>
            <th>Treatment</th>
             <th>Advice</th>
            <th>Date</th>
             <th>Fee</th>
            <th>Edit</th>
            <th>Delete</th>
   	</tr>
  
   	
   	 <c:forEach items="${listclinic}" var="clinic" >
        <tr>
            <td>${clinic.id}</td>
              <td>${clinic.patientname}</td>
                <td>${clinic.diagnosis}</td>
                  <td>${clinic.treatment}</td>
           <td>${clinic.advice}</td>
            <td>${clinic.date}</td>
            <td>${clinic.fee}</td>
            
            
            <td>
			<a href="/edit/${clinic.id}">Edit</a>
		</td>							    
		<td>
			<a href="/delete/${clinic.id}">Delete</a>
		</td>		
           
        </tr>
    </c:forEach>
    
    </table>
 

          


</body>
</html>