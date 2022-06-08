<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

$db = new PDO('mysql:host=localhost;dbname=mangalist', 'root_con', 'root_connexion'); 

$req = $db->prepare('SELECT * FROM manga ORDER BY id DESC LIMIT 4;');
$req->execute();
$lignes = [];

while($rep = $req->fetch()){
    $lignes[] = $rep;
}


echo json_encode($lignes);

?>
