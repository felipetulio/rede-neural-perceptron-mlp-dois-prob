function [ derivada ] = DerivaSigmoide(Icamada)
%DERIVASIGMOIDE Summary of this function goes here
%   Detailed explanation goes here
    b = 5;    
    derivada = exp(-b*Icamada)./((1 + exp(-b*Icamada)).*(1 + exp(-b*Icamada)));
end

