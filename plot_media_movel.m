% Geração do sinal de entrada
fs = 100;               % Frequência de amostragem
t = 0:1/fs:1-1/fs;       % Vetor de tempo
x = sin(2*pi*100*t);     % Sinal de entrada (sinusoidal de 100 Hz)

% Parâmetros da média móvel
M1 = 10;                 % Atraso inicial
M2 = 20;                 % Atraso final

% Cálculo da resposta da média móvel
y = media_movel(x, M1, M2);

% Plotagem dos sinais de entrada e saída
figure;
subplot(2,1,1);
plot(t, x);
title('Sinal de entrada x(t)');
xlabel('Tempo (s)');
ylabel('Amplitude');
subplot(2,1,2);
plot(t, y);
title('Resposta da média móvel');
xlabel('Tempo (s)');
ylabel('Amplitude');
