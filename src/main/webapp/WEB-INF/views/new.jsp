<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/webresources/styles/new.css" />

    <title>Create New Patient</title>
    
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
            <h5>Create New Patient</h5>
        </div>
   

</head>
<body>


   
    <br />
    
      <form:form method="post" modelAttribute="clinic" action="/save">
      <form:hidden path="id" />
      <fieldset class="form-group">
       <form:label path="Patientname" class="form-control1" ><h6>Patient Name:</h6></form:label>
 <br />
       <form:input path="Patientname" type="text" class="control" 
        required="required" />
     
      </fieldset>
      
      <fieldset class="form-group">
       <form:label path="Diagnosis" class="form-control1"><h6>Diagnosis:</h6></form:label>  <br />
       <form:input path="Diagnosis" type="text" class="control"
        required="required" />
     
      </fieldset>
      
      <fieldset class="form-group">
       <form:label path="Treatment" class="form-control1"><h6>Treatment:</h6></form:label>  <br />
       <form:input path="Treatment" type="text" class="control"
        required="required" />
     
      </fieldset>
      
      <fieldset class="form-group">
       <form:label path="Advice" class="form-control1"><h6>Advice:</h6></form:label> <br />
       <form:input path="Advice" type="text" class="control"
        required="required" />
     
      </fieldset>
      
      <fieldset class="form-group">
       <form:label path="Date" class="form-control1"><h6>Date:</h6></form:label> <br />
       <form:input path="Date" type="text" class="control"
        required="required" />
     
      </fieldset>
      
       <fieldset class="form-group">
       <form:label path="Fee" class="form-control1"><h6>Fee:</h6></form:label>  <br />
       <form:input path="Fee" type="text" class="control"
        required="required" />
     
      </fieldset>
      
      <div class="btn-text-center">
      <button type="submit" class="btn btn-success" >Save</button>
     </div>
     </form:form>



</body>
</html>