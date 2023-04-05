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
