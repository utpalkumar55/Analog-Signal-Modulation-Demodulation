clc; %%% Clearing the Matlab colsole
clear; %%% Clearing the workspace

Initialize_PM_Modulation_Demodulation; %%% Including this file to initialize all the required variables and objects

%%%-----------PM Modulation and Demodulation for a fixed point SNR-----------%%%
signal_data = signal_amplitude * sin(2 * pi * signal_frequency * time_vector); %%% Generating sample sinusoidal signal

modulated_signal = pmmod(signal_data, carrier_frequency, sampling_frequency, phase_deviation); %%% Modulating data bits using PM modulator
transmitted_signal = modulated_signal; %%% Pushing modulated signal to the transmitting unit

signal_power = 10*log10(var(transmitted_signal));    %%% Calculating signal power from the transmitted signal in dB
noise_variance = 10.^(0.1.*(signal_power - snr_dB)); %%% Calculating noise variance from signal power and noise power

recevied_signal =  awgn_channel(transmitted_signal, noise_variance); %%% Passing the transmitted data through AWGN channel using the calculated noise variance

demodulated_signal = pmdemod(recevied_signal, carrier_frequency, sampling_frequency, phase_deviation); %%% Demodulating the received data using PM demodulator

figure('Name','Visualizing PM Modulation and Demodulation','NumberTitle','off','Position', ...
    [50, 80, 900, 550]); % Naming the figure and setting the position
plot(time_vector, signal_data, 'b-', time_vector, modulated_signal, 'r-', 'LineWidth', 1.5); %%%Plotting both the transmitted singal and the modulated signal in the same figure
grid on;
xlabel('Time (s)');
ylabel('Amplitude');
legend('Transmitted Signal', 'Modulated Signal');

figure('Name','Visualizing PM Modulation and Demodulation','NumberTitle','off','Position', ...
    [350, 80, 900, 550]); % Naming the figure and setting the position
plot(time_vector, signal_data, 'b-', time_vector, demodulated_signal, 'r-', 'LineWidth', 1.5); %%%Plotting both the transmitted singal and the demodulated signal in the same figure
grid on;
xlabel('Time (s)');
ylabel('Amplitude');
legend('Transmitted Signal', 'Demodulated Signal');
%%%-----------PM Modulation and Demodulation for a fixed point SNR-----------%%%