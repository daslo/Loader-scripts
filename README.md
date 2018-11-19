# Loader-scripts

Windows only.
If you don't have a (working) programmer, you can use a Flasher STM32, USB to TTL serial adapter and those 2 batch scripts:

1. Download and install: https://www.st.com/en/development-tools/flasher-stm32.html

2. Connect adapter with USART1 pins (refer to datasheet). On "blue pill" it's: RX1=PA10, TX1=PA9. On "ugly board" these pins are labeled. Don't forget to cross-connect RXes with TXes. Connect VCC and GND.

3. Set the jumpers: BOOT0 high and BOOT1 low for STM32F1. For other refer to Reference Manual (Boot Configuration chapter). It makes the uC to start in bootloader mode.

3. Plug the adapter into USB port. Install drivers if needed. It should appear as COMx port.

Now you could use the "Flasher STM32 Demonstrator GUI" to burn your .bin file on uC. It's OK to use this tool for a few times, but if you want to use it more often it becomes tiresome. It has it's TUI version

4. Edit .bat files and set variables if needed. LOADERPATH is path to STMFlashLoader.exe (I put default location). PORT is COM port number, to be read from Start>Devices and printers. FILEPATH is path to your .bin file. DEVICENAME is name of file in Flash Loader Demo\Map folder. Choose yours based on uC (refer to datasheet).

5. Ready. Now, when you want to burn a file on your uC, reset it and run the STM32_flash_run.bat
When you want to burn a file again, you must reset the uC (it must enter bootloader mode).
If you only want to run program on the uC, reset it and run STM32_run.bat.

NOTES:

To see all available options for STMFlashLoader just run it in command line without parameters.

My flash+run script also performs a global erase on chip.

Most of the parameters are default parameters, copied from GUI version. I've set timeout time to 1 second, because the default of 10s annoyed me.
