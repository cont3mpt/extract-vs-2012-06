#!/usr/bin/perl
#�ļ�����
$filename="wu.log";
#����ļ�����
$filename1="wu26.log";
#���˴�
$filterchar="wu-2.6.0";
#������
open(READTXTFILE,"$filename");
@readtxtfile=<READTXTFILE>;
close(READTXTFILE);
$count=0;
#���Ƿ�ʽ��
open(AAAA,">$filename1");
foreach(@readtxtfile)
{
    if($count==0)
    {
        $temp=$_;
        $count=1000;
    }
    else
    {
        if($_=~/$filterchar/i)
        {
            print  AAAA $temp;
        }
        $temp=$_;
    }
}
close AAAA;
system "cat wu26.log|tr -d w >wuhack.log";
system "./wuftpd26scan >>/dev/null";
exit 0;
 
