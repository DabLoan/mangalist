<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');
 
$db = mysqli_connect("localhost", "root_con", "root_connexion","mangalist")
or die('could not connect to database');

$nom = mysqli_real_escape_string($db,htmlspecialchars($_POST['nom']));
$prenom = mysqli_real_escape_string($db,htmlspecialchars($_POST['prenom']));
$pseudo = mysqli_real_escape_string($db,htmlspecialchars($_POST['pseudo']));
$mail = mysqli_real_escape_string($db,htmlspecialchars($_POST['mail']));
$mdp = mysqli_real_escape_string($db,htmlspecialchars($_POST['mdp']));
$confmdp = mysqli_real_escape_string($db,htmlspecialchars($_POST['confmdp']));

if(!empty($nom) && !empty($prenom) && !empty($mail) && !empty($mdp) && !empty($confmdp)){
    if($mdp == $confmdp){
        $mdp = password_hash($mdp, PASSWORD_DEFAULT);
        $req = 'INSERT INTO utilisateurs (nom,prenom,pseudo,mail,mdp) VALUES ("'.$nom.'","'.$prenom.'","'.$pseudo.'","'.$mail.'", "'.$mdp.'");';
        $exe_req = mysqli_query($db,$req);
        if($exe_req){
            echo "1";
        }else{
            $message = "Un probleme est survenu.";
            echo json_encode($message);
        }
    }else{
        $message = "Veuillez bien confirmer le mot de passe.";
        echo json_encode($message);
    }
}else{
    $message = "Veuillez bien remplir les champs.";
    echo json_encode($message);
}
?>