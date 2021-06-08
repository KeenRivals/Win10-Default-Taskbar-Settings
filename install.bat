:: Default Taskbar Settings
:: Apply some defaults to the appearance of the user taskbar.

:: Load the default user's registry hive.
reg load HKLM\DefaultUsers C:\Users\Default\ntuser.dat

:: Hide the taskbar search button by default.
reg add HKLM\DefaultUsers\Software\Microsoft\Windows\CurrentVersion\Search /v SearchboxTaskbarMode /t REG_DWORD /d 0 /f

:: Hide the Task View button by default.
reg add HKLM\DefaultUsers\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ShowTaskViewButton /t REG_DWORD /d 0 /f

:: Hide the People button by default
reg add HKLM\DefaultUsers\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People /v PeopleBand /t REG_DWORD /d 0 /f

:: Hide the News Feed by default
reg add HKLM\DefaultUsers\Software\Microsoft\Windows\CurrentVersion\Feeds /v ShellFeedsTaskbarViewMode /t REG_DWORD /d 2 /f

:: Unload the default user's hive
reg unload HKLM\DefaultUsers