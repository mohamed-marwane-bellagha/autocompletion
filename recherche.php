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
<main id='recherche'>
<h1 class='title'>Resultat de la recherche</h1>
<div class='resultcontainer'>
<?php 
if(isset($_GET['search'])){
    $search=htmlspecialchars(trim($_GET['search']));
    $db=new PDO('mysql:host=localhost;dbname=autocompletion', 'root', '');
    $query=$db->prepare("SELECT * FROM `information` WHERE `nom` LIKE '{$search}%'");
    $query->execute();
    $allresult=$query->fetchAll();
    for($i=0;isset($allresult[$i]);$i++){?>
    <a href='element.php?id=<?=$allresult[$i]['id']?>'><?=ucfirst($allresult[$i]['nom'])?></a>
    
    
    <?php
    }
}

?>
</div>
<a class='backindex' href='index.php'>Retour a l'accueil</a>
    </main>
    </body>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="script.js"></script>
    </html>

