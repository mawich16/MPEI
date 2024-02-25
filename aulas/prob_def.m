function [prob_def] = prob_def(p,n,N,k)

lancamentos=rand(n,N)>p;
casos_favoraveis=sum(sum(lancamentos)==k);
prob_def=casos_favoraveis/N

end