<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

$db = mysqli_connect("localhost", "root_con", "root_connexion","mangalist")
or die('could not connect to database');

$req = 'SELECT * FROM manga;';
$exe_req = mysqli_query($db,$req);
$lignes = [];
while($rep = mysqli_fetch_assoc($exe_req)){
    $lignes[] = $rep;
}


echo json_encode($lignes);

?>
