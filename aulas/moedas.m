function [probsimulacao] = moedas(p,n,pdf,N)
    lancamentos=rand(n,N)>p;
    sucessos=sum(lancamentos)==pdf;
    probsimulacao=sum(sucessos)/N
end