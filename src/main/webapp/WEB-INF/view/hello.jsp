
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>laptopShop</title>
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
                
                    <a href="user/create" class="btn btn-primary">Create a User</a>
            
                </div>
                
                <hr  width="100%" align="center" />

              <table class="table table-bordered"  >
                
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
        
                        <tr>
                          <th scope="row">1</th>
                          <td>Mark</td>
                          <td>Otto</td>
                          <td>
                            <button type="button" class="btn btn-success">View</button>
                            <button type="button" class="btn btn-warning">Update</button>
                            <button type="button" class="btn btn-danger">Delete</button>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row">2</th>
                          <td>Jacob</td>
                          <td>Thornton</td>
                          <td>
                            <button type="button" class="btn btn-success">View</button>
                            <button type="button" class="btn btn-warning">Update</button>
                            <button type="button" class="btn btn-danger">Delete</button>
                          </td>
                        </tr>
                        
        
                      </tbody>

                </div>

            </table>

            </div>

        </div>
       
    
    </div>
    
</body>
</html>