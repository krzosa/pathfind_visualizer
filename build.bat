@echo off

..\core_main.exe main.core
cd build
cl ..\generated_main.c -Zi -nologo -W3 -wd4200 -wd4267 -wd4244 -diagnostics:column -Fe:main.exe user32.lib raylibdll.lib
cd ..