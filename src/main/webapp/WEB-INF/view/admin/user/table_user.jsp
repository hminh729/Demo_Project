
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Table User {id}</title>
        <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
    rel="stylesheet">
    <!-- Latest compiled JavaScript -->
    <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- <link href="/css/demo.css" rel="stylesheet" > -->

    </head>
<body>

    <div class="container mt-5">
        <div class="row">

            <div class="col-md-11 col-12 mx-auto">

                <div class="d-flex justify-content-between">
                  
                    <h3>Table users</h3>
                
                    <a href="/admin/user/create" class="btn btn-primary">Create a User</a>
            
                </div>
                
                <hr  width="100%" align="center" />

              <table class="table table-bordered table-hover"  >
                
                <div class="d-flex justify-content-start">
                    
                    <thead>
                        <tr>
                          <th scope="col" >ID</th>
                          <th scope="col" >Email</th>
                          <th scope="col" >Full Name</th>
                          <th scope="col" >Action</th>
                        </tr>
                      </thead>
        
                      <tbody>
                        <c:forEach var="user" items="${users1}">
                            <tr>
                                <th>${user.id}</th>
                                <td>${user.email}</td>
                                <td>${user.fullName}</td> 
                                <td>
                                  <a type="button" class="btn btn-success" href="/admin/user/${user.id}">View</a>
                                  <a type="button" class="btn btn-warning mx-2" href="/admin/user/update/${user.id}">Update</a>
                                  <button type="button" class="btn btn-danger">Delete</button>
                                </td>
                              </tr>
                        </c:forEach>

                        
                       
                        
        
                      </tbody>

                </div>

            </table>

            </div>

        </div>
       
    
    </div>
    
</body>
</html>