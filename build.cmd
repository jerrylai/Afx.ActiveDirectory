@echo off
set Build="%SYSTEMDRIVE%\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\MSBuild\Current\Bin\MsBuild.exe"
if exist publish rd /s /q publish
%Build% "NET40/Afx.ActiveDirectory/Afx.ActiveDirectory.csproj" /t:Rebuild /p:Configuration=Release
%Build% "NET45/Afx.ActiveDirectory/Afx.ActiveDirectory.csproj" /t:Rebuild /p:Configuration=Release
%Build% "NET451/Afx.ActiveDirectory/Afx.ActiveDirectory.csproj" /t:Rebuild /p:Configuration=Release
%Build% "NET452/Afx.ActiveDirectory/Afx.ActiveDirectory.csproj" /t:Rebuild /p:Configuration=Release
%Build% "NET46/Afx.ActiveDirectory/Afx.ActiveDirectory.csproj" /t:Rebuild /p:Configuration=Release
%Build% "NET461/Afx.ActiveDirectory/Afx.ActiveDirectory.csproj" /t:Rebuild /p:Configuration=Release
%Build% "NET462/Afx.ActiveDirectory/Afx.ActiveDirectory.csproj" /t:Rebuild /p:Configuration=Release
%Build% "NET47/Afx.ActiveDirectory/Afx.ActiveDirectory.csproj" /t:Rebuild /p:Configuration=Release
%Build% "NET471/Afx.ActiveDirectory/Afx.ActiveDirectory.csproj" /t:Rebuild /p:Configuration=Release
%Build% "NET472/Afx.ActiveDirectory/Afx.ActiveDirectory.csproj" /t:Rebuild /p:Configuration=Release
%Build% "NET48/Afx.ActiveDirectory/Afx.ActiveDirectory.csproj" /t:Rebuild /p:Configuration=Release
cd publish
del /q/s *.pdb
pause