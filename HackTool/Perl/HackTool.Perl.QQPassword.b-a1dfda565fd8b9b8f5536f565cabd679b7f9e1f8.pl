#!/usr/bin/perl

$HTTPSERVER = "login.tencent.com";
$HTTPPATH = "/login";
$HTTPPORT = 80;
$oicq_s = "u";
$pass_s = "p";
$add_s = "u1=http://bbs.tencent.com/cgi-bin/club_first";

print "�ѣѣ�����̽���� v0128���´����հ棩������֤���� By BigJim���ڲ�ʹ�ã�\n\n";
print "�����������˳��������ѧϰ���� Perl ���Ա�̼���Ŀ�ġ�\n\n\n";

#####�������벿��
do
{
	print "��������Ҫ��֤�Ĵ�����ʽ xx.xx.xx.xx:xx����";
	$proxy = <STDIN>;
	chomp($proxy);
	$proxy =~ s/ //g;
} until ($proxy =~ /^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}:[0-9]{1,4}$/);
($PROXYIP, $PROXYPORT) = split(/:/, $proxy);

do
{
	print "������һ��������֤�ģѣѺ��룺";
	$qq = <STDIN>;
	chomp($qq);
} while ($qq =~ /[^0-9]/ or $qq < 10000 or $qq eq "");

do
{
	print "������������֤�ģѣ����룺";
	$pass = <STDIN>;
	chomp($pass);
} while ($pass eq "");

#####��ʼ�ж�
print "\n���ڼ�⣬���Ժ�...\n\n";
$result = &search($qq, $pass);
if ($result == 1)
{
	print "�������ϲ����������Ĵ����������������̽�⣡\n";
}
elsif ($result == -1)
{
	print "�����̫��ϧ�ˣ���������Ĵ����������������̽�⣬����Ŀǰ�� Ban �ˣ�\n";
}
else
{
	print "������ܲ��ң���������Ĵ������������������̽�⣡\n";
}
print "\n�밴�س����˳���\n";
getc;
exit;

#####������֤�ӳ���
sub search
{
	my ($number, $password) = @_;
	my ($name, $aliases, $type, $len, @thataddr, $a, $b, $c, $d, $that);

	($name, $aliases, $type, $len, @thataddr) = gethostbyname($PROXYIP);
	($a, $b, $c, $d) = unpack("C4", $thataddr[0]);
	$that = pack('S n C4 x8', 2, $PROXYPORT, $a, $b, $c, $d);

	return 0 unless (socket(S, 2, 1, 0));
	select(S);
	$| = 1;
	select(STDOUT);
	return 0 unless (connect(S, $that));

	my $postdata = "$oicq_s=$number&$pass_s=$password&$add_s";
	my $datalength = length($postdata);
	print S "POST http://$HTTPSERVER:$HTTPPORT$HTTPPATH HTTP/1.1\r\n";
	print S "Content-Type: application/x-www-form-urlencoded\r\n";
	print S "Content-Length: $datalength\r\n\r\n";
	print S $postdata;

	my $status1 = <S>;
	my $status2 = <S>;
	$status2 = <S>;
	close(S);

	if ($status2 =~ /tencent login server/)
	{
		if ($status1 =~ /302/)
		{
			return 1;
		}
		elsif ($status1 =~ /200/)
		{
			return -1;
		}
	}

	return 0;
}