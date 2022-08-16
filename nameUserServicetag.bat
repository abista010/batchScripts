@echo off
set /a count=0
set uwu=---------------------------------------------------------------------------------------
for /f %%x in (test.txt) do (
echo %uwu%>>output3.csv
wmic /node:"%%x" computersystem get name | find /v "Name">>output3.csv
query user /server:"%%x" | find /v "USERNAME" >>output3.csv
wmic /node:"%%x" bios get serialnumber | find /v "SerialNumber">>output3.csv
echo %uwu%>>output3.csv
set /a count +=1
)
echo You have searched %count% service tags.
pause