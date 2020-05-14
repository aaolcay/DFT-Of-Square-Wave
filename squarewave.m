% Abdullah Azzam Olcay - Gebze Technical University
% Discrete Time Of Square Wave And Fast Fourier Transform
clear all;clc;
N=2^5;     
K = ceil((N) / 3); 
x = zeros(1, N);  
x(1:(K)) = 0;
x(K+1:(2*K)) = 1;
x(2*K:N) = 0;
figure;
stem(x,'LineWidth', 3, 'Color', 'b');
title('Discrete Time Domain Of Square Wave');
fourier_transform_of_sq=fftshift(fft(x));
figure;
stem(abs(fourier_transform_of_sq),'LineWidth', 3, 'Color', 'b');
title('Discrete Frequency Domain Of Square Wave');