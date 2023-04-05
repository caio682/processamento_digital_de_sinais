function y = diferenca_atras(x)
    % Inicializa vetor de saída
    y = zeros(size(x));
    % Implementa sistema
    for n = 2:length(x)
        y(n) = x(n) - x(n-1);
    end
end
