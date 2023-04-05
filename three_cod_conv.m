function three_cod_conv()
    % Lê o arquivo de áudio
    [x, Fs] = audioread('cantinaband.wav');

    % Define a resposta ao impulso do sistema
    h = [1, 0.5, 0, -0.25];

    % Obtém o sinal de saída do sistema
    y = corretor_de_tamanho_de_vetor(x, h);

    % Toca o sinal de saída
    sound(y, Fs);

    % Plota o sinal de saída
    t = (0:length(y)-1)/Fs;
    figure;
    plot(t, y);
    xlabel('Tempo (s)');
    ylabel('Amplitude');
    title('Sinal de saída do sistema LTI');
end

function y = corretor_de_tamanho_de_vetor(x, h)
    % Verifica qual vetor é maior e adiciona zeros no final do vetor menor
    if length(x) > length(h)
        h = [h, zeros(1, length(x)-length(h))];
    else
        x = [x, zeros(1, length(h)-length(x))];
    end
    
    % Realiza a convolução
    y = conv(x, h, 'same');
end
