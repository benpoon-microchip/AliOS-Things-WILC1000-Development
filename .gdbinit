#GDB_PATH=cmd /C  C:\Users\a16023\github\AliOS-Things\build\compiler\gcc-arm-none-eabi\Win32\bin\arm-none-eabi-gdb.exe 
set remotetimeout 20 
shell C:/Users/a16023/github/AliOS-Things/build/cmd/win32/taskkill /F /IM openocd.exe 
shell start /B C:/Users/a16023/github/AliOS-Things/build/OpenOCD/Win32/bin/openocd.exe -f .//build/OpenOCD/Win32/interface/jlink_swd.cfg -f .//build/OpenOCD/Win32/atsame54/atsame54.cfg -f .//build/OpenOCD/Win32/atsame54/atsame54_gdb_jtag.cfg -l out/openocd.log 
