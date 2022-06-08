<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

$db = new PDO('mysql:host=localhost;dbname=mangalist', 'root_con', 'root_connexion');
 
$prenom =$_POST['prenom'];
$nom =$_POST['nom'];
$pseudo =$_POST['pseudo'];
$mail =$_POST['mail'];
$id = $_POST['id'];
$req = $db->prepare('UPDATE utilisateurs SET prenom = :prenom, nom = :nom, pseudo = :pseudo, mail = :mail WHERE id =:id');
$req->bindParam(":prenom",$prenom);
$req->bindParam(":nom",$nom);
$req->bindParam(":pseudo",$pseudo);
$req->bindParam(":mail",$mail);
$req->bindParam(":id", $id);
$req->execute();
if($req){
    $recup = $db->prepare('SELECT prenom, nom, pseudo, mail FROM utilisateurs WHERE id = :id');
    $recup->bindParam(":id", $id);
    $recup->execute();
    $lignes = [];    
    
    while($reponse = $recup->fetch()){
        $lignes[] = $reponse;
    }
    $message = "Changement effectué sans accroc";
    echo json_encode($message);
    echo json_encode($lignes);
}
?>
