@ echo off 
rem hides text display unless instructed to display
rem take user input set/p
rem do something

:: prompt user for input
set /p userInput="Enter folder to search: "
set /p textInput="Enter text to search: "

rem search for text in folder

rem output results to file not the command prompt for python and txt files
cd %userInput%
findstr /i /m /c:%textInput% *.py *.txt > C:\file_ui.txt rem writes to C:
rem findstr /i /m /c:%textInput% *.py *.txt > .file_ui.txt rem writes to current folder cmd running in (%userInput%)
