function plotarSaidas( YValidacao, YAuxiliar )
%PLOTARSAIDAS Summary of this function goes here
%   Detailed explanation goes here
    
figure
plot(YValidacao, 'b-')
legend('Saídas da validação')
hold on
grid on
plot(YAuxiliar, 'r-')
legend('Saídas desejadas')
title('Gráficos das saídas desejadas e obtidas')

end

