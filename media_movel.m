function y = media_movel(x, M1, M2)
    k = -M1;           % Define k como -M1
    z1 = 0;            % Define z1 como zero
    z2 = 0;            % Define z2 como zero
    y = zeros(size(x));% Cria vetor de saída com o mesmo tamanho de x
    for n = 1:length(x) % Loop de 1 a N, onde N é o tamanho do vetor de entrada x
        if n >= M2     % Verifica se já é possível calcular a saída
            z2 = z1;   % Atualiza z2 com o valor anterior de z1
            z1 = x(n); % Atualiza z1 com o valor atual de x[n]
            % Calcula a saída utilizando a fórmula do sistema
            y(n) = (1/(M2-M1)) * sum(x(n-M2+1:n+k)) + (1/(M2-M1)) * sum(z2:x(n+k-1));
        end
    end
end

