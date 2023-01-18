# LiFi
The design has been implemented using a modular fashion, and the project was able to decode and encode sound files as well as text files, then transfer them via LED and receive it with an LDR sensor. The encoded data has been stored in ROMs, and decoded data has been displayed on a seven-segment display.

## What is Li-Fi protocol?
Li-Fi is a wireless communication technology that utilizes light to transmit data. This system is capable of transmitting data at high speeds over visible light, ultra- violet, and infrared spectrum. Also, as a technology, Li-Fi is able to function in areas without being affected by electromagnetic interference. Due to the extensive benefits of Li-Fi technology and the theories behind encoding and decoding certain file types.

## Description of the Project
The project is working on Basys3 board and the decoder part has been implemented in a way that it decodes the transmitted data and displays the resulting outcome in a specific way, such as if the received data is a text file, then it displays it on the seven-segment display or if the data is sound file it plays it through the buzzer. When it comes to the encoder part, the desired data is going to be stored in the ROMs which have been implemented on Basys3. For instance, the text files have been parsed into their characters, and the characters’ ASCII code has been encoded into binary to transmit via LED. When LED is on, the LDR sensor yields higher output, and it translates into 1, and contrarily, it yields a low output of 0, and the received data is then rendered by the decoder to determine the outputs of anode and cathode voltages on seven segment display.

## Modules
1. LiFi
  - fClock
  - sClock
  - Transmitter
    - AddressCounter
    - textROM
    - soundROM
    - 2x2 crossbar switch
    - PISO 8-bit Shift Register (Parallel IN Serial OUT)
  - Reciever
    - POSI 8-bit Shift Register (Parallel OUT Serial IN)
    - 8-bit Register (for 1st char)
    - 8-bit Register (for 2st char)
    - 8-bit Register (for 3st char)
    - 8-bit Register (for 4st char)
    - refreshCounter (for 7-segment display)
    - Driver
      - Decoder

To clarify what each module's role is, modules will be briefly explained below:
***LiFi:***
The LiFi module is the top module that implements the receiver and transmitter as intended.
***fClock:***
Due to the fact that Basys3 has a 10ns clock and the circuit operates at 0.1s, this module generates a clock with a period of 0.1 seconds.
***sClock:***
Since the circuit operates at 0.1s and the transfer happens with 8-bit chunks, this module generates a clock with a period of 0.8 seconds.
***Transmitter:***
This module is the transmitter module where the data stored in the ROMs are transmitted via laser.
***AddressCounter:***
The AddressCounter output is used to change the address inputs of the ROMs so that after changing the counter, ROMs can be searched.  
***textROM:***
The ROM stores the encoded text file information and has been stored in 8-bit chars.
***soundROM:***
The ROM, which stores the encoded sound file information and has been stored in 8-bit chunks.
***2x2 crossbar switch:***
This switch is used to swap back and forth with the buzzer and seven-segment display.
***PISO 8-bit Shift Register (Parallel IN Serial OUT):***
The parallel in serial out 8-bit shift register is utilized to send the data read from the ROMs.
***Receiver:***
This module is the receiver module where the data received by the light dependant resistor is stored in tentative 8-bit registers and displayed on the seven-segment display or buzzer depending on the select input.
***POSI 8-bit Shift Register (Parallel OUT Serial IN):***
The parallel-out serial in an 8-bit shift register receives data and stores it temporarily until the 8-bit has been received.
***8-bit Register:***
These registers store the incoming characters for a short amount of time to display them on the seven-segment display. The outputs of these registers then get concatenated and sent to the seven-segment driver as 32-bit vector.
***refreshCounte:r***
This counter is used to refresh the anodes and the cathodes therefore the output of this counter is connected to the driver input.
***Driver:***
The driver module has been implemented to show the outputs of the encoded vector in the seven-segment display.
***decoder***
This module takes the 8-bit encoded data and decodes it according to the ASCII table, and turns it into anodes and cathodes signals.
