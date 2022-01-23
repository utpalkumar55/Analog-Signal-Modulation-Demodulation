# Analog Signal Modulation Demodulation
This repository contains examples of amplitude, frequency, and phase modulation demodulation of analog signal using analog carrier.

All the examples here follows the block diagram below. First analog signal is created using sine function with necessary parameters. Then, the signal is modulated using the desired modulation method. After that, the modulated signal is passed through an AWGN channel. Next, the received signal is demodulated using the same demodulator to get the recovered signal.

![Block diagram of Analog signal Modulation and Demodulation](https://user-images.githubusercontent.com/3108754/147626449-e9f059f0-f3b8-45b8-930a-f97aca1ac00c.JPG)

Each modulation-demodulation file is associated with an initilization file where the required parameters are declared and defined.
