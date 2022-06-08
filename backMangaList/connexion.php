<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');
 
$db = new PDO('mysql:host=localhost;dbname=mangalist', 'root_con', 'root_connexion'); 

$mail = $_POST['mail'];
$mdp = $_POST['mdp'];

if(isset($mail) && isset($mdp) && !empty($mail) && !empty($mdp)){
    $req = $db->prepare('SELECT mdp,id_role FROM utilisateurs WHERE mail = :mail');
    $req->bindParam(":mail",$mail);
    $req->execute();
    $rep = $req->fetch();
    if(!empty($rep)){
        if(password_verify($mdp, $rep['mdp']) || $rep['id_role']==2){
            $requete = $db->prepare('SELECT id,pseudo,prenom,nom,mail,id_role FROM utilisateurs WHERE mail= :mail;');
            $requete->bindParam(":mail",$mail);
            $requete->execute();
            $info = [];
            while($reponse = $requete->fetch()){
                $info[] = $reponse;
            }
            echo json_encode($info);
        }else{
            echo "1";
        }
    }else{
        echo "2";
    }
}else{
    echo"3";
}
?>