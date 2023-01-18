# LiFi
The design has been implemented using a modular fashion, and the project was able to decode and encode sound files as well as text files, then transfer them via LED and receive it with an LDR sensor. The encoded data has been stored in ROMs, and decoded data has been displayed on a seven-segment display.

## What is Li-Fi protocol?
Li-Fi is a wireless communication technology that utilizes light to transmit data. This system is capable of transmitting data at high speeds over visible light, ultra- violet, and infrared spectrum. Also, as a technology, Li-Fi is able to function in areas without being affected by electromagnetic interference. Due to the extensive benefits of Li-Fi technology and the theories behind encoding and decoding certain file types.

# Description of the Project
The project is working on Basys3 board and the decoder part has been implemented in a way that it decodes the transmitted data and displays the resulting outcome in a specific way, such as if the received data is a text file, then it displays it on the seven-segment display or if the data is sound file it plays it through the buzzer. When it comes to the encoder part, the desired data is going to be stored in the ROMs which have been implemented on Basys3. For instance, the text files have been parsed into their characters, and the characters’ ASCII code has been encoded into binary to transmit via LED. When LED is on, the LDR sensor yields higher output, and it translates into 1, and contrarily, it yields a low output of 0, and the received data is then rendered by the decoder to determine the outputs of anode and cathode voltages on seven segment display.

# Modules
1. LiFi
  - fClock
  - sClock
  1. Transmitter
    - AddressCounter
    - textROM
    - soundROM
    - 2x2 crossbar switch
    - PISO 8-bit Shift Register (Parallel IN Serial OUT)
  2. Reciever
    - POSI 8-bit Shift Register (Parallel OUT Serial IN)
    - 8-bit Register (for 1st char)
    - 8-bit Register (for 2st char)
    - 8-bit Register (for 3st char)
    - 8-bit Register (for 4st char)
    - refreshCounter (for 7-segment display)
    - Driver
      - Decoder
