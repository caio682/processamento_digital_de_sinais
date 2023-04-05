% Lê o arquivo de áudio
[x, Fs] = audioread('cantinaband.wav');

% Define a resposta ao impulso do sistema
h = [1, 0.5, 0, -0.25];

% Obtém o sinal de saída do sistema
y = soma_convolucao(x, h);

% Toca o sinal de saída
sound(y, Fs);

% Plota o sinal de saída
t = (0:length(y)-1)/Fs;
figure;
plot(t, y);
xlabel('Tempo (s)');
ylabel('Amplitude');
title('Sinal de saída do sistema LTI');
