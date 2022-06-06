<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');
 
$db = mysqli_connect("localhost", "root_con", "root_connexion","mangalist")
or die('could not connect to database');

$mail = mysqli_real_escape_string($db,htmlspecialchars($_POST['mail']));
$mdp = mysqli_real_escape_string($db,htmlspecialchars($_POST['mdp']));

if(isset($mail) && isset($mdp) && !empty($mail) && !empty($mdp)){
    $req = 'SELECT mdp,id_role FROM utilisateurs WHERE mail = "'.$mail.'"';
    $exe_req = mysqli_query($db,$req);
    $rep = mysqli_fetch_assoc($exe_req);
    if(!empty($rep)){
        if(password_verify($mdp, $rep['mdp']) || $rep['id_role']==2){
            $requete = 'SELECT id,pseudo,prenom,nom,mail,id_role FROM utilisateurs WHERE mail="'.$mail.'";';
            $exe_requete = mysqli_query($db,$requete);
            $info = [];
            while($reponse = mysqli_fetch_assoc($exe_requete)){
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
mysqli_close($db);
?>