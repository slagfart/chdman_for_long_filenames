for /r %%i in (*.cue, *.gdi) do (
cd %%~ni
rename "%%~ni.gdi" 1.gdi
..\chdman.exe createcd -i "1.gdi" -o "1.chd"
rename "1.chd" "%%~ni.chd"
move %%~ni\%%~ni.chd ..
cd ..
)