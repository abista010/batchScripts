@echo off
set /a count=0
for /f %%x in (test.txt) do (
    wmic /node:"%%x" bios get serialnumber>output.txt
    set /a count +=1
)
echo You have searched %count% service tags.
pause