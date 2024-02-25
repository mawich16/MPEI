function [probabilidade] = prob_moedas(p,n,N,k)

lancamentos=rand(n,N)>p;
casos_favoraveis=sum(sum(lancamentos)==k);
probabilidade=casos_favoraveis/N

end