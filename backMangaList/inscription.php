<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');
 
$db = new PDO('mysql:host=localhost;dbname=mangalist', 'root_con', 'root_connexion'); 

$nom = $_POST['nom'];
$prenom = $_POST['prenom'];
$pseudo = $_POST['pseudo'];
$mail = $_POST['mail'];
$mdp = $_POST['mdp'];
$confmdp = $_POST['confmdp'];

if(!empty($nom) && !empty($prenom) && !empty($mail) && !empty($mdp) && !empty($confmdp)){
    $verif = $db->prepare('SELECT COUNT(*) AS nb FROM Utilisateurs WHERE mail = :mail');
    $verif->bindParam(":mail", $mail);
    $verif->execute();
    $verification = $verif->fetch();
    if($verification['nb'] == 0){
        if($mdp == $confmdp ){
            $mdp = password_hash($mdp, PASSWORD_DEFAULT);
            $req = $db->prepare('INSERT INTO utilisateurs (nom,prenom,pseudo,mail,mdp) VALUES (:nom,:prenom,:pseudo,:mail,:mdp);');
            $req->bindParam(":nom", $nom);
            $req->bindParam(":prenom", $prenom);
            $req->bindParam(":pseudo", $pseudo);
            $req->bindParam(":mail", $mail);
            $req->bindParam(":mdp", $mdp);
            $req->execute();
        if($req){
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
        $message = "Cette adresse mail est déjà utilisée";
        echo json_encode($message);
    }    
}else{
    $message = "Veuillez bien remplir les champs.";
    echo json_encode($message);
}
?>