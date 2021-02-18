<?php
    // Start the session
    session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php 
        
            $servername = "localhost:3308";
            $username = "root";
            $password = "root";
            
            $login=$_GET["login"];
            $password2=$_GET['password'];
            try {
                $conn = new PDO("mysql:host=$servername;dbname=cmss", $username, $password);
                // set the PDO error mode to exception
                $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                
                
                
                $sql = "SELECT 	* FROM auteur WHERE 	name='".$login."' and password='".$password2."'";
                //$sql = "SELECT 	* FROM users WHERE 	login='toto' and password='toto'";
                $stmt = $conn->prepare($sql);
                $result=$stmt->execute();
                $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
                $result =$stmt->fetchAll();
                if($result){
                    foreach(new RecursiveArrayIterator($result) as $k=>$v) {

                        
                        // Set session variables
                        $_SESSION["login"]=$v["name"];
                        $_SESSION["image"]=$v["profile_pic"];
                        $_SESSION["idauthor"]=$v["id"];
                        $_SESSION["logged"]=1;
                    }
                    
                    header('Location: dashbord/');
                    
                    
                    
                    
                }else{
                    header('Location: register.php');
                }
                
            }catch(PDOException $e) {
                echo "Connection failed: " . $e->getMessage();
            }
        
    ?>
</body>
</html>