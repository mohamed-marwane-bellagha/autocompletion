<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel='stylesheet' href='style.css'>
    <title>Document</title>
</head>
<body>
<header>
<form method="post" class='formsearch'>
        <input type="text" name="search" id="txt" onchange='myFunction()'>
        <button name="submit">Chercher</button>
    </form>
    <div class='dropdown'>
    <ul class='dropdown-content' id="result">
    </ul>
    </div>
</header>
<main id='element'>
<?php 
if(isset($_GET['id'])){ $db=new PDO('mysql:host=localhost;dbname=autocompletion', 'root', '');
    $query=$db->prepare("SELECT information.*, camp.camp FROM `information` JOIN `camp` ON information.id_camp=camp.id WHERE information.id='{$_GET['id']}'");
    $query->execute();
    $allresult=$query->fetchAll();?>
<div class='result'>
<p> Nom: <?=$allresult[0]['nom'] ?></p>
<p> Camp: <?=$allresult[0]['camp'] ?></p>
<p> Metier: <?=$allresult[0]['metier'] ?></p>
<p><a href='index.php'>Retour a l'accueil</a></p>
<div>
<?php }else{
    header("Location:index.php");
}

   
?>
</main>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="script.js"></script>
</html>