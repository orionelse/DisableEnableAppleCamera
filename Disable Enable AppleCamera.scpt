-- Disable Enable AppleCamera
-- orion.else@gmail.com
-- Script Editor

display dialog "Disable Enable AppleCamera
Test on OS X EI Capitan

!!Required Administrator privileges" buttons {"Enable", "Disable", "Cacel"} with icon stop

set MySelect to button returned of result
set MyLib to "/Library/CoreMediaIO/Plug-Ins/DAL/AppleCamera.plugin/Contents/MacOS/AppleCamera"

if MySelect = "Enable" then
	do shell script "/bin/chmod a+r " & MyLib with administrator privileges
else if MySelect = "Disable" then
	do shell script "/bin/chmod a-r " & MyLib with administrator privileges
else if MySelect = "Cancel" then
	do shell script ""
end if
