<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');
 
$db = new PDO('mysql:host=localhost;dbname=mangalist', 'root_con', 'root_connexion'); 

$titre = $_POST['titre'];
$auteur = $_POST['auteur'];
$nbtomes = $_POST['nbtomes'];
$synopsis = $_POST['synopsis'];
$img = "/images/".$_FILES['img']['name'];
if(!empty($titre) && !empty($auteur) && !empty($nbtomes) && !empty($synopsis)){
    $req = $db->prepare('INSERT INTO `manga`(`titre`, `auteur`, `img`, `synopsis`, `tomes`) VALUES (:titre, :auteur, :img, :synopsis, :nbtomes)');
    $req->bindParam(":titre",$titre);
    $req->bindParam(":auteur",$auteur);
    $req->bindParam(":nbtomes",$nbtomes);
    $req->bindParam(":img", $img);
    $req->bindParam(":synopsis",$synopsis);
    $req->execute();
    if($req && move_uploaded_file($_FILES['img']['tmp_name'], "./images/".$_FILES['img']['name'])){
        echo json_encode("Ajout réussi");
    }else{
        echo json_encode("L'ajout a échoué");
    }
}else{
    echo json_encode("Champs mal rempli");
}
?>