<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

$db = new PDO('mysql:host=localhost;dbname=mangalist', 'root_con', 'root_connexion'); 

$req = $db->prepare('SELECT * FROM manga;');
$req->execute();
$lignes = [];
while($rep = $req->fetch()){
    $lignes[] = $rep;
}

echo json_encode($lignes);

?>
