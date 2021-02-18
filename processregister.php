
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <style>
       @keyframes example {
    from {width:0px;opacity:0;}
    to {width:100%;opacity:1;}
    }
       </style>
    <div style="background-image:url('./web/img/tky.jpg'); background-position:center;background-size:cover;height:100vh; width:100%; display:flex;justify-content:center;align-items:center;">
           <div style="width:100%;height:5px;background-color:white;animation-name: example;animation-duration: 1.5s;">
    </div>
</div>

</body>
<script>
    setTimeout(function(){ 
        window.location.href = "index.php";
         }, 1500);
   </script> 


</html>