%% 1 c)
c=linspace(0,1,100)

%% 2
clear,clc

experiencias=rand(3,1000)
lancamentos=experiencias>0.5
resultados=sum(lancamentos)
sucessos=resultados==2
probsimulacao=sum(sucessos)/1000

N=1e4;
p=0.5;
k=2;
n=3;
lancamentos=rand(n,N)>p
sucessos=sum(lancamentos)==k
probsimulacao=sum(sucessos)/N

%% 3
clear,clc

N=1e4;
p=0.5;
k=6;
n=15;
lancamentos=rand(n,N)>p
sucessos=sum(lancamentos)==k
probsimulacao=sum(sucessos)/N

%% 4
clear,clc

N=1e4;
p=0.5;
k=6;
n=15;
lancamentos=rand(n,N)>p;
sucessos=sum(lancamentos)>=k
probsimulacao=sum(sucessos)/N

%% 5
%a)
clear,clc

p=0.5;
nlancamentos=20;
ncaras=6;
N=1e4;
moedas(p,nlancamentos,ncaras,N)

% b)
clear,clc,close
ncaras=20;
N=1e4;
for m=0:ncaras
    p(m+1)=moedas(0.5,ncaras,m,N);
end
plot(0:ncaras,p)
title([num2str(ncaras) "moedas"])
xlabel("num caras")
ylabel("p")

%% 6
clear,clc

p=0.5;
k=2;
n=3;
prob=nchoosek(n,k)*p^k*(1-p)^(n-k) %nchoosek(n,k)=n!/(n-k)!*k!

%% 7 a)
clear,clc

%analitico
p=0.3;
pecasdef=3;
npecas=5;
prob=nchoosek(npecas,pecasdef)*p^pecasdef*(1-p)^(npecas-pecasdef)

%simulacao
p=0.3;
pecasdef=3;
npecas=5;
N=1e4;
rpecas=rand(npecas,N)>p;
def=sum(rpecas)==pecasdef;
prob=sum(def)/N

%% 7 b)
clear,clc

%analitico
p=0.3;
pecasdef1=1;
pecasdef2=2;
npecas=5;
prob1=nchoosek(npecas,pecasdef1)*p^pecasdef1*(1-p)^(npecas-pecasdef1)+nchoosek(npecas,pecasdef2)*p^pecasdef2*(1-p)^(npecas-pecasdef2)

%simulacao

p=0.3;
pecasdef=2;
npecas=5;
N=1e4;
rpecas=rand(npecas,N)>p;
def=sum(rpecas)<=pecasdef;
prob=sum(def)/N

%% 7 c) ?????????
clear,clc,close

p=0.3;
pecasdef=5;
npecas=5;
N=1e4;
for m=0:npecas
    pm(m+1)=pecasdeft(0.3,5,m,N);
end

histogram(pm) %??????????

%% R1
clear,close,clc

seq=2^10

seq=2^n

%% R2
clear,close,clc

n=10
nseq=4^n

%% R3
clear,close,clc

nmaneiras=2^n
% tem 50% de probabilidade de acertar todo

%% R4
clear,close,clc

totoloto=nchoosek(49,5)
euro=nchoosek(50,5)*nchoosek(11,2)

%% R5 a)
clear,close,clc

nmaneiras=factorial(20)

%% R5 b)
clear,close,clc

nmaneiras=factorial(20)
fav=factorial(10)^2
pb=fav/nmaneiras

%% R6 a)
clear, close,clc

ea=2:1:18;
nlancamento=6^2
cf=4 %3+6,4+5,5+4,6+3
pb=cf/nlancamento

%% R7
clear,close,clc

p=8/50;
n=10;
pd=3;
N=1e4;

nt=rand(n,N)>p;
f=sum(nt)==pd;
pb=sum(f)/N;

%% R8
clear,close,clc

%a)
n=10^5;

%b)
m=26^5;

%c)
pn=1/n;
pm=1/m;

%d)se sao acontecimentos independentes P(a&b)=P(a)*P(b) 
pn3=3/n
pm3=3/m






