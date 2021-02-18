
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">
    <link rel="stylesheet" href="./web/css/bootstrap.css">
    <link rel="stylesheet" href="./web/css/font-awesome.min.css">
    <link rel="stylesheet" href="./web/css/owl.carousel.min.css">
    <link rel="stylesheet" href="./web/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="./web/style.css">
    <link rel="stylesheet" href="./web/responsive.css">
    <title>Document</title>
</head>
<script>
    setTimeout(function(){ 
        document.getElementById("regisst").remove();
         }, 2000);
   </script> 
   <style>
       @keyframes example {
    from {top:800px;opacity:0;}
    to {top:200px;opacity:1;}
    }
       </style>
<body class=" " style="background-color:rgba(74,111,220,0.3);">
    <div style="display:grid; grid-template-columns: 50% 50%;">
        <div style="background-image:url('./web/img/fun.jpg'); background-position:center;background-size:cover;">
        </div>
        <div style="width:100%; height:100vh; margin:0 auto; text-align:center; display:flex; justify-content:center; align-items:center;position:relative; ">
            <div id="regisst" style="color:rgba(181,47,223,0.6); font-size:35px; text-align:center; position:absolute; width:100%; top:200px;left:0;right:0;animation-name: example;animation-duration: 1.5s;">
                Your are not registred in our database<br>   
                Please register 
            </div>
            <form class="form-signin" action="register.php" method="post" enctype="multipart/form-data">
            <img class="mb-4"  alt="" width="72" height="72" style="background-image:url('./web/img/blog-wp-login.png'); background-position:center; background-size:cover;"/>
            <br>
            <h1 class="h3 mb-3 font-weight-normal">Please Register</h1>
            
            <label for="inputEmail" class="sr-only mb-3">Login</label>
            <br>
            <input type="text"  class="form-control mb-3" name="login" placeholder="Login" required="" autofocus="">
            <br>
            <label for="inputEmail" class="sr-only mb-3">Email</label>
            <br>
            <input type="text"  class="form-control mb-3" name="email" placeholder="Email" required="" autofocus="">
            <br>
            <label for="inputEmail" class="sr-only mb-3">Image</label>
            <br>
            <input type="file"  class="form-control mb-3" name="newimage" placeholder="Image" required="" autofocus="">
            <br>
            <label for="inputPassword" class="sr-only mb-3" >Password</label>
            <br>
            <input  type="password" id="inputPassword" class="form-control mb-3" name="password" placeholder="Password" required="">
            <br>
            <br>
            <input class="btn btn-lg btn-primary btn-block mb-3" type="submit" name="submit">Register</button>
            <br>
            <p class="mt-5 mb-3 text-muted">© 2020-2021</p>
            </form>
        <div>
    <div>
</body>
    <?php
    if(isset($_POST["submit"])){

        try {
            $servername = "localhost:3308";
            $username = "root";
            $password = "root";
            $conn = new PDO("mysql:host=$servername;dbname=cmss", $username, $password);
            // set the PDO error mode to exception
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            
            $filepath="../images/".$_FILES["newimage"]["name"];
            $filename=$_FILES["newimage"]["name"];
            //echo "this is the file name".$filename;
            move_uploaded_file($_FILES["newimage"]["tmp_name"], $filepath);
            
             
            $sql ="INSERT INTO auteur (name, password,email,profile_pic) VALUES ('".$_POST['login']."', '".$_POST['password']."', '".$_POST['email']."', '$filename')";
            $stmt = $conn->prepare($sql);
            $result=$stmt->execute();
            header('Location: processregister.php');
        }catch(PDOException $e) {
            echo "Connection failed: " . $e->getMessage();
        }
    }
    ?>
    
</html>