<?php
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Check if the form is submitted
    $username = $_POST['name'];
    $password = $_POST['password'];

    // Establish a database connection
    $conn = mysqli_connect('localhost', 'root', '', 'shop_db');
    if (!$conn) {
        die('Database connection error: ' . mysqli_connect_error());
    }

    // Prepare a SQL statement to retrieve user information
    $query = "SELECT UserName FROM tbluser WHERE UserName=?";
    $stmt = mysqli_prepare($conn, $query);
    mysqli_stmt_bind_param($stmt, "s", $username);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    if ($row = mysqli_fetch_assoc($result)) {
        // Verify the password
        if (password_verify($password, $row['Password'])) {
            $_SESSION['user_name'] = $row['UserName']; // Set the session variable
            header("Location: home.php"); // Redirect to the welcome page after successful login
            exit;
        } else {
            echo "Invalid username or password";
        }
    } else {
        echo "Invalid username or password";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file -->

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <style>
    body {
        background: linear-gradient(to bottom, #343adf, #000000);
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .container {
        /* Make the container smaller */
        max-width: 500px;
    background-color: rgb(185 184 184 / 16%);
    border-radius: 10px;
    padding: 20px;
}
    

    .d-grid {
        justify-content: center; /* Center the buttons horizontally */
    }
    </style>
</head>
<body>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <h3 class="card-title text-center">Login</h3>
                    <form action="userlogin1.php" method="POST">
                        <div class="mb-3">
                            <label for="username" class="form-label">Username</label>
                            <input type="text" name="name" class="form-control" placeholder="Enter your username">
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" name="password" class="form-control" placeholder="Enter your password">
                        </div>
                        <div class="d-grid gap-2">
                            <button type="submit" class="btn btn-primary">LOGIN</button>
                        </div>
                        <div class="d-grid gap-2 py-3">
                            <a href="reset_password.php" class="text-decoration-none text-primary">Forgot Password?</a>
                        </div>
                    </form>
                    <div class="d-grid gap-2 py-3">
                        <button type="submit" class="btn btn-primary"><a href="register.php" class="text-decoration-none text-white">REGISTER</a></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
