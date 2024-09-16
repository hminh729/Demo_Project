
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Table User ${id}</title>
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
                  
                    <h3>Detail User</h3>
                
                  
            
                </div>
                
                <hr  width="100%" align="center" />

              <table class="table table-bordered table-hover"  >
                
                <div class="d-flex justify-content-start">
                    
                    <thead>
                        
                      </thead>
        
                      <tbody>
                        <div class="card">
                            <div class="card-header">
                                User Information
                            </div>
                            <ul class="list-group list-group-flush">
                            <li class="list-group-item">ID: -${id}</li>
                            <li class="list-group-item">Full Name: -</li>
                            <li class="list-group-item">Email: -</li>
                            <li class="list-group-item">Address: -</li>
                            <li class="list-group-item">PassWord: -</li>
                            <li class="list-group-item">Phone: -</li>

                            </ul>
                        </div>
                       
                      </tbody>

                </div>

            </table>

            </div>

        </div>
       
    
    </div>
    
</body>
</html>