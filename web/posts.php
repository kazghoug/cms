<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Front page</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="responsive.css">
</head>

<body>
    <div class="wrapper">
        <header class="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-10">
                        <div class="menu">
                            <ul style="float:left">
                                <li class=" "><a href="index.php">Home</a></li>
                                <?php 

                                    $servername = "localhost:3308";
                                    $username = "root";
                                    $password = "root";

                                try {
                                        $conn = new PDO("mysql:host=$servername;dbname=cmss", $username, $password);
                                        // set the PDO error mode to exception
                                        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                                        
                                        
                                        $sql = "SELECT * FROM categorie";
                                        $stmt = $conn->prepare($sql);
                                        $stmt->execute();
                                        $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
                                        foreach(new RecursiveArrayIterator($stmt->fetchAll()) as $k=>$v) {
                                ?>
                                    <li class=""><a href="categorie.php?idcategorie=<?php echo $v['id']; ?>&categoriename=<?php echo $v['name']; ?>"><?php echo $v['name']; ?></a></li>     
                                <?php        }
                                    }catch(PDOException $e) {
                                    echo "Connection failed: " . $e->getMessage();
                                    }
                                ?>
                                
                                
                            </ul>
                            
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="logo" style="float:right">
                            <h2><a href="#">Classic</a></h2>
                        </div>
                    </div>
                </div>
                <hr style="height:5px; background-color:rgb(241,241,241);">
            </div>
        </header>
        <section class="blog-post-area">
            <div class="container">
                <?php 
                    $idodthearticle=$_GET['idarticle'];                   
                    $nomauteur=$_GET['nomauteur'];                   
                    $servername = "localhost:3308";
                    $username = "root";
                    $password = "root";

                    try {
                        $conn = new PDO("mysql:host=$servername;dbname=cmss", $username, $password);
                        // set the PDO error mode to exception
                        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                        
                        
                        $sql = "SELECT 	* FROM article WHERE id='".$idodthearticle."'";
                        $stmt = $conn->prepare($sql);
                        $stmt->execute();
                        $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
                        foreach(new RecursiveArrayIterator($stmt->fetchAll()) as $k=>$v) {

                ?>
                        <img  style="width:100%; background-image:url('../images/<?php echo $v['image']; ?>'); height:75vh; background-position:center; background-size:cover;" alt=''/>
                        <h3><a href='#'><?php echo $v['title']; ?></a></h3>
                        <h4><span>Posted By: <span class='author-name'><a href='authorposts.php?nomauteur=<?php echo $nomauteur; ?>'><?php echo $nomauteur; ?></a></span></span></h4>
                        <p style="text-align: justify;"><?php echo $v['text']; ?></p>                            

                <?php        }
                    }catch(PDOException $e) {
                        echo "Connection failed: " . $e->getMessage();
                    } 
                ?>

            </div>
        </section>

        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="footer-bg">
                            <div class="row">
                                <div class="col-md-9">
                                    <div class="footer-menu">
                                        <ul>
                                            <li class="active"><a href="index.php">Home</a></li>
                                           
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="footer-icon">
                                        <p><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></p>
                                    </div>
                                </div>
                            </div> .
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/active.js"></script>
</body>

</html>