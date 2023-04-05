% Lê o arquivo de áudio
[x, Fs] = audioread('cantinaband.wav');

% Plota o gráfico do sinal original
t = (0:length(x)-1)/Fs;
figure;
subplot(2,1,1);
plot(t, x);
xlabel('Tempo (s)');
ylabel('Amplitude');
title('Sinal original');

% Aplica o filtro diferença para trás
y = diferenca_atras(x);

% Plota o gráfico do sinal filtrado
subplot(2,1,2);
plot(t, y);
xlabel('Tempo (s)');
ylabel('Amplitude');
title('Sinal filtrado com diferença para trás');
