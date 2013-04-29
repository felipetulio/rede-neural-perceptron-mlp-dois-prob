function [ YClassificacao y numPadroes ] = yPMC( XValidacao, W1, W2, YValidacao )
%YPERCEPTRON Summary of this function goes here
%   Detailed explanation goes here

    numPadroes = size(XValidacao,2);
    [x,y] = size(YValidacao);
    %Polarização da matriz X (inserção do bias)
    pol = ones(1,numPadroes);
    XValidacao = [pol; XValidacao ];
    
    YClassificacao = zeros(x,y);

    for i = 1 : numPadroes
       
        %% PASSO FORWARD
        
        Icamada1 = W1*XValidacao(:,i);
        
        Y1 = sigmf(Icamada1, [5 0]);
        
        polarizacao = 1;
        Y1 = [polarizacao; Y1];
        
        Icamada2 = W2*Y1;
        
        Y2 = sigmf(Icamada2, [5 0]);
           
        %parte que converte para classificação em 0 e 1
        for j = 1 : x
            if(Y2(j,:) >= 0.5)
                YClassificacao(j,i) = 1;
            else
                YClassificacao(j,i) = 0;
            end
        end
        
    end

end

