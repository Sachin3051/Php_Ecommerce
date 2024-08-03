<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Form</title>
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
    <div class="col-md-6">
      <div class="card">
        <div class="card-body">
          <h3 class="card-title text-center">User Register</h3>
          <form action="insert.php" method="Post">
            <div class="mb-3">
              <label for="username" class="form-label">Username</label>
              <input type="text" name="name" class="form-control"  placeholder="Enter your username">
            </div>
            <div class="mb-3">
              <label for="" class="form-label">Email</label>
              <input type="email" name="email" class="form-control"  placeholder="Enter your username">
            </div>
            <div class="mb-3">
              <label for="username" class="form-label">Mobile Number</label>
              <input type="number" name="number" class="form-control"  placeholder="Enter your username">
            </div>
            <div class="mb-3">
              <label for="password" class="form-label">Password</label>
              <input type="password" name="password" class="form-control"  placeholder="Enter your password">
            </div>
            <div class="d-grid gap-2">
              <button type="submit" name="submit" class="btn btn-primary">Register</button>
            </div><br>
            <div class="d-grid gap-2">
              <button type="submit" name="submit" class="btn btn-primary py-2"><a href="userlogin.php" class="text-decoration-none text-white">Alredy Register</a></button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>
