function plotarGrafico( VetordeErros )
%PLOTARGRAFICO Summary of this function goes here
%   Detailed explanation goes here

% Evolução do erro quadrático/por época
figure
plot(VetordeErros, '^-')
grid on
xlabel('Época')
ylabel('Erro Quadrático')
title('Erro Quadrático Acumulado por Época de Treinamento')

end

