1. Install JLink
https://www.segger.com/downloads/jlink/

Run JLinkExe:
/opt/SEGGER/JLink

Programming:
JLinkExe
    connect
    set device
    speed
    etc. (use defaults for everything other than device)

Debugging:
    /opt/SEGGER/JLinkGDBSever
        Configure for STM32F446RE and SWD

    Start arm-none-eabi-gdb

    set remote:
    target remote localhost:2331

TODO:
[] Get the blinky example actually blinking

    Possibly:
        Convert to makefile to cmake
        Add FreeRTOS


