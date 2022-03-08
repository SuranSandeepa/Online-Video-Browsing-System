<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style/style.css">
<title>Register-Form</title>
</head>
<body>

    <div class="container">
        <div class="row content">
            <div class="col-md-6 mb-3">
                <img src="Images/netflix.png" class="img-fluid" alt="image">
            </div>
            <div class="col-md-6">
                <h3 class="signin-text mb-3">Sign Up</h3>

                <form action="insert" method="Post">
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" class="form-control" id="username" name="uid" required ="required" placeholder="Username.....">
                    </div>
                    <div class="form-group">
                        <label for="password">Email</label>
                        <input type="text" class="form-control" name="email"required="required" placeholder="Email.....">
                    </div>
                    <div class="form-group">
                        <label for="password">Phone</label>
                        <input type="text" class="form-control" name="phone" required="required" placeholder="Phone.....">
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" name="psw" required="required" placeholder="Password.....">
                    </div>
                    <div>
                        <button class="btn btn-class" name="submit">Sign Up</button><br><br>
                        <p>Already Have an Account ? <a href="login.jsp">Sign In</a></p>
                        <a href="homepage.jsp">Back to Home</a>
                    </div>
                </form>

            </div>

        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>


</body>
</html>