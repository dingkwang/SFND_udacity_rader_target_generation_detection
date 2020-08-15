clear
clc

% 2-D Transform
% The 2-D Fourier transform is useful for processing 2-D signals and other 2-D data such as images.
% Create and plot 2-D data with repeated blocks.

P = peaks(20);
M = 50;
N = 100;
X = repmat(P,[M N]);
figure(1)
imagesc(X)

% TODO : Compute the 2-D Fourier transform of the data.  
% Shift the zero-frequency component to the center of the output, and 
% plot the resulting 100-by-200 matrix, which is the same size as X.

signal_fft = fft2(X, M, N);
% signal_fft = fft2(X);
signal_fft = fftshift(signal_fft);
signal_fft = abs(signal_fft);
figure(2)
imagesc(signal_fft);