<?php 
$search=htmlspecialchars(trim($_POST['nom']));
$db=new PDO('mysql:host=localhost;dbname=autocompletion', 'root', '');
$query=$db->prepare("SELECT * FROM `information` WHERE `nom` LIKE '{$search}%'");
$query->execute();
$allresult=$query->fetchAll();

echo json_encode($allresult);
?>