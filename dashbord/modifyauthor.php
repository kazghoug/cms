<?php
 session_start();
 if($_SESSION["logged"]!=1){
     header('Location: ../index.php');
     
 }

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
    
    <?php
    
    $whattodelete=$_POST["idofauthor"];
    
    if( $_POST["sub"]=="Delete") {
        
        $servername = "localhost:3308";
        $username = "root";
        $password = "root";
        try {
            $conn = new PDO("mysql:host=$servername;dbname=cmss", $username, $password);
            // set the PDO error mode to exception
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            $sql = "DELETE FROM auteur WHERE id='".$whattodelete."'";
            $result=$conn->exec($sql);
            echo "this is the result".$result;
        }catch(PDOException $e) {
            echo "Connection failed: " . $e->getMessage();
        }
            $conn = null;
        header('Location: authors.php');
    }else{
        $imagg=$_POST["imagepic"];
        $nameg=$_POST["nameofauthor"];
        $emailg=$_POST["emailofauthor"];
        echo "
        <div class='d-flex'>
        <div style='width:50%'>
        <div style='text-align:center'>Old</div>
        <form class='mx-3' method='POST' enctype='multipart/form-data'>
            <label for='' class='mb-2' >Name</label>
            <input type='text'  class='form-control mb-2 ' value='".$nameg."'   readonly/>
            
            <label for='' class='mb-2'>Email</label>
            <input type='text'  class='form-control mb-2' value='".$emailg."' readonly/>

            <label for='' class='mb-2' >Image</label>
            <div>
            <img src='".$imagg."' style='width:150px; height:150px;' />
            </div>
            
        </form>
        </div>
        <div style='width:50%'>
        <div style='text-align:center'>New</div>
        <form class='mx-3' method='POST' enctype='multipart/form-data'>
            <label for='' class='mb-2' >Name</label>
            <input type='text' name='newname' class='form-control mb-2'/>
            
            <label for='' class='mb-2'>Email</label>
            <input type='text' name='newemail' class='form-control mb-2'/>

            <label for='' class='mb-2' >Image</label>
            <input type='file' name='newimage' class='d-block mb-2'/>
            <input type='text' name='idofauth' value='".$whattodelete."' hidden/>
            <input type='submit' name='submit' class='btn btn-primary' value='Submit'/>
        </form></div></div>";

        
    }
    if(isset($_POST["submit"])){
        
        $servername = "localhost:3308";
        $username = "root";
        $password = "root";
        $newname =$_POST["newname"];
        $newemail =$_POST["newemail"];
        $idofauth=$_POST["idofauth"];
        $filepath="../images/".$_FILES["newimage"]["name"];
        $filename=$_FILES["newimage"]["name"];
        move_uploaded_file($_FILES["newimage"]["tmp_name"], $filepath);
        
        try {
            $conn = new PDO("mysql:host=$servername;dbname=cmss", $username, $password);
            // set the PDO error mode to exception
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            $sql = "UPDATE auteur SET name='".$newname."', email='".$newemail."', profile_pic ='".$filename."' WHERE id='".$idofauth."'";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            echo "this is the result".$stmt->rowCount();
        }catch(PDOException $e) {
            echo "Connection failed: " . $e->getMessage();
        }
        $conn = null;
        header('Location: authors.php');
    }
    ?>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>