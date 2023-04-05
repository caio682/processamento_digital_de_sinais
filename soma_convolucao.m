function y = soma_convolucao(x, h)
    % Calcula o tamanho do vetor de saída
    N = length(x) + length(h) - 1;
    % Preenche os vetores com zeros
    x = [x, zeros(1, N - length(x))];
    h = [h, zeros(1, N - length(h))];
    y = zeros(1, N);
    % Realiza a convolução
    for n = 1:N
        for k = 1:n
            y(n) = y(n) + x(k) * h(n-k+1);
        end
    end
end
