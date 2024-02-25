%% 1 a)
clear, close, clc

A=4:2:100

%% 1 b)
clear, close, clc

A=5:-1:-5

%% 1 c)
clear, close, clc

A=linspace(0,1,100)

%% 1 d)
clear, close, clc

B=rand(20,30)
C=B(10:15, 9:12)

%% 1 e)
clear, close, clc

x=-pi:pi/15:pi

%% 1 f)
clear, close, clc

x=-pi:pi/15:pi 
plot(x,sin(4*pi*x))

%% 2
clear, close, clc

N=1e4;
n=3;
k=2;
p=0.5;

lancamentos=rand(n,N);
experiencias=lancamentos>p
casos_favoraveis=sum(sum(experiencias)==2)
probabilidade=casos_favoraveis/N

%% 3
clear,close,clc

N=1e4;
n=15;
k=6;
p=0.5;

lancamentos=rand(n,N)>p;
casos_favoraveis=sum(sum(lancamentos)==6);
probabilidade=casos_favoraveis/N

%% 4
clear,close,clc

N=1e4;
n=15;
k=6;
p=0.5;

lancamentos=rand(n,N)>p;
casos_favoraveis=sum(sum(lancamentos)>=6);
probabilidade=casos_favoraveis/N

%% 5
clear, close, clc

p=0.5;
n=20;
N=1e4;
k=15;

prob_moedas(p,n,N,k);

subplot(1,3,1)
stem(prob_moedas(p,20,N,k))

subplot(1,3,2)
stem(prob_moedas(p,40,N,k))

subplot(1,3,3)
stem(prob_moedas(p,40,N,k))

%% 6
clear, close, clc

n=15;
k=6;
p=0.5;

probabilidade=nchoosek(n,k)*p^k*(1-p)^(n-k)

%% 7 a)
clear, close, clc

N=1e4;
p=0.3;
n=5;
k=3;

% por simulação
lancamentos=rand(n,N)>p;
casos_favoraveis=sum(sum(lancamentos)==k);
probsml=casos_favoraveis/N

% analiticamente
probanal=nchoosek(n,k)*p^k*(1-p)^(n-k)

%% 7 b)
clear, close,clc

N=1e4;
n=5;
p=0.3;
k=2;

% por simulação
lancamentos=rand(n,N)>p;
casos_favoraveis=sum(sum(lancamentos)<=k);
probsim=casos_favoraveis/N

% analiticamente
probanal=nchoosek(n,2)*p^2*(1-p)^(n-2) + nchoosek(n,1)*p^(1)*(1-p)^(n-1)

%% 7 c)
clear, close, clc

N=1e4;
n=5;
p=0.3;

for k=0:n
    p(k)=prob_def(p,n,N,k)

end

histogram(p)







