@echo off
set count=0
for /f %%x in (test.txt) do (
    echo %%x>>output.txt
    echo %%x>>output.txt
    count+=1
)
pause