carrier_frequency = 10e3; %%% Initializing carrier frequency to 10 KHz

signal_amplitude = 5; %%% Setting signal amplitude to 5

signal_frequency = 150; %%% Initializing signal frequency to 150 Hz

sampling_frequency = 80e3; %%% Initializing sampling frequency to 80 KHz. Sampling frequensy has to be at least twice as carrier frequency

time_vector = (0:1/sampling_frequency:0.01)'; %%% Creating a time vector of duration 0.01 s

snr_dB = 10; %%% Initializing Signal to Noise Ratio (SNR) in dB

awgn_channel = comm.AWGNChannel('NoiseMethod', 'Variance', 'VarianceSource', 'Input port'); %%% Defining Additive White Gaussian Noise Channel