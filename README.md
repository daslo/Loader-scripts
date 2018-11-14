# Loader-scripts

If you don't have a (working) programmer, you can use a Flasher STM32, USB to TTL serial adapter and those 2 batch scripts:

1. Download and install: https://www.st.com/en/development-tools/flasher-stm32.html

2. Connect adapter with USART1 pins (refer to datasheet). On "blue pill" it's: RX1=PA10, TX1=PA9. On "ugly board" these pins are labeled. Don't forget to cross-connect RXes with TXes. Connect VCC and GND.

3. Set the jumpers: BOOT0 high and BOOT1 low. It makes the uC to start in bootloader mode.

3. Plug the adapter into USB port. Install drivers if needed.

Now you could use the "Flasher STM32 Demonstrator GUI" to burn your .bin file on uC. It's OK to use this tool for a few times, but if you want to use it more often it becomes tiresome. It has it's TUI version

4. Edit .bat files and set variables if needed. LOADERPATH is path to STMFlashLoader.exe (I put default location). PORT is COM port number, to be read from Start>Devices and printers. FILEPATH is path to your .bin file. DEVICENAME is name of file in Flash Loader Demo\Map folder. Choose yours based on uC (refer to datasheet).
