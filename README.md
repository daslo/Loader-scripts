# STM32-Loader-scripts

Windows only.

If you don't have a (working) STM32 programmer, you can use a STM32 Flasher and USB<->TTL serial adapter.

1. Download and install: https://www.st.com/en/development-tools/flasher-stm32.html

2. Connect adapter with uC via USART1 pins (refer to datasheet). Remeber to cross-connect TX and RX.

3. Set the jumpers so that uC boots in "System Memory mode" (refer to Reference Manual: "Boot Configuration" chapter).

Example: for STM32F1 BOOT0=HIGH and BOOT1=LOW.

4. Plug the adapter into USB port. Install drivers if needed. It should appear as COMx port (in "Start > Devices and printers")

Now you could use the "Flasher STM32 Demonstrator GUI" to burn your .bin file on uC, but if you want to use it often it becomes tiresome. It has it's TUI version.

5. Edit .bat files and set variables if needed. LOADERPATH is path to STMFlashLoader.exe (I put default install location). PORT is COM port number, to be read from "Start > Devices and printers". FILEPATH_1 is path to your IDE's workspace and FILEPATH_2 is path to folder with .bin file (relative to FILEPATH_1). DEVICENAME is name of file in "Flash Loader Demo\Map folder". Choose yours based on uC (refer to datasheet).

5. Ready. Now, when you want to burn a file on your uC, reset it and run the STM32_flash_run.bat. 
When you want to burn a file again, you must reset the uC (it must enter bootloader mode).

If you only want to run program on the uC, reset it and run STM32_run.bat.

If you want to global erase the chip, run STM32_erase.bat (can be useful if you have "Wrong device detected" error while using programmer).

NOTES:

To see all available options for STMFlashLoader just run it in command line without parameters.

My flash+run script also performs a global erase on chip.

Most of the parameters are default parameters, copied from GUI version. I've set timeout time to 1 second.
