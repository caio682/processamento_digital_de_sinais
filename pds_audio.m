% Carregar o arquivo de áudio
[x, Fs] = audioread('cantinaband.wav');

% Definir os parâmetros da média móvel
M1 = 10;
M2 = 20;

% Filtrar o sinal de voz
y = media_movel(x, M1, M2);

% Plotar o sinal de voz original e o sinal filtrado
t = (0:length(x)-1)/Fs;
figure;
subplot(2,1,1);
plot(t,x);
title('Sinal de voz original');
xlabel('Tempo (s)');
ylabel('Amplitude');
subplot(2,1,2);
plot(t,y);
title('Sinal de voz filtrado');
xlabel('Tempo (s)');
ylabel('Amplitude');
Fs = 44100;
audiowrite('audio.wav', y, Fs);


