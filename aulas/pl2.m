%% 1 a)
clear,clc

p=0.5;
n=2;
N=1e4;
k=1;
fm=rand(n,N)>p;
cf=sum(fm)>=k;
p=sum(cf)/N

%% 1 b)
clear,clc

cf=["MM","MF","FM"];
cp=4;
p=length(cf)/4

%% 1 c)
clear,clc

%espaço de amostragem ["MF","FM","MM"];
p=0.5;
n=2;
N=1e4;
fm=rand(n,N)>p;
cp=sum(fm)>=1;
cf=sum(fm)==2;
p=cf/cp

% valor teorico
cp=["MF","FM","MM"];
cf=1;
p=length(cp)/cf

%% 1 d)
clear, clc

%s=["MF","MM"];

p=0.5;
n=2;
N=1e4;
fm=rand(n,N)>p;
cp=sum(fm(1,:)==1);
cf=sum(sum(fm)==2);
p=cf/cp

%valor teorico
cp=2; %==s
cf=1;
p=cp/cf

%% 1 e)
clear,clc

n=5;
N=1e4;
p=0.5;
fm=rand(n,N)>p;
cp=sum(fm)>=1;
cf=sum(fm)==2;
p=cf/cp

%% 1 f)
clear,clc

n=5;
N=1e4;
p=0.5;
fm=rand(n,N)>p;
cp=sum(fm)>=1;
cf=sum(fm)>=2;
p=cf/cp

%% 2 a)
clear,clc

n=20;
m=100;
N=1e4;
jg=randi(m,n,N);
cf=0;
for col=1:N;
    coluna=jg(:,col);
    if length(unique(coluna))==n
        cf=cf+1;
    end
end
p=cf/N

% 2 b)

p2=1-p

%% 2 c) acabar o 2, 3 e 4 em casa
clear,clc

%% 5 a) A
clear,clc

N=1e4;
n=6;
lancamentos=randi(n,2,N);
casosfav=sum(lancamentos)==9;
fav=sum(casosfav);
prob=fav/N

%% 5 a) B
clear,clc

N=1e4;
n=6;
lancamentos=randi(n,2,N);
casosfav=sum(mod(lancamentos(2,:),2)==0);
fav=sum(casosfav);
prob=fav/N

%% 5 a) C
clear,clc

N=1e4;
n=6;
lancamentos=randi(n,2,N);
casos1=sum(lancamentos(1,:)==5);
casos2=sum(lancamentos(2,:)==5);
casos3=sum(lancamentos(1,:)==5 & lancamentos(2,:)==5);
fav=casos1+casos2-casos3;
prob=fav/N

%% 5 a) D
clear,clc

N=1e4;
n=6;
lancamentos=randi(n,2,N);
casos=sum(lancamentos(1,:)~=1 & lancamentos(2,:)~=1);
prob=casos/N

%% 5 b)
clear,clc

%s=[(5,4);(3,6)]
cf=2;
cp=6*6;
pab=cf/cp
Pab=0.1098*0.5060
%sao independentes

%% 5 c)
clear,clc

%s=[(5,2)(5,3)(5,4)(5,5)(5,6)(2,5)(3,5)(4,5)(5,5)(5,6)]
cf=10;
cp=36;
pcd=cf/cp
Pcd=0.3077*0.6901
%nao sao independentes

%%  6 a)
clear,clc

cp=3^2;
cf=1;
p=cf/cp

%% 6 b)
clear,clc

cp=3^2;
cf=5;
p=cf/cp

%% 6 c)
clear,clc

%s= 13 31 23 32
cp=3^2;
cf=4;
p=cf/cp

%% 6 d)
clear,clc

%s= 21 12
cp=3^2;
cf=2;
p=cf/cp

%% 7 a)
clear,clc

pec=0.001;
pc=0.5;
ne=0.001*50+0.01*20+0.05*30;
pe=ne/100;
pce=(0.001*0.5)/pe

%% 7 b) algo de errado nao esta certo pa=0.11429 pb=0.85714 pc=0.02057
clear,clc

cp=100;
cfc=0.001*50;
pc=cfc/cp
cfb=0.05*30;
pb=cfb/cp
cfa=0.01*20;
pa=cfa/cp
%pb é maior logo é mais provavel que o codigo seja do bruno

%% 2.2. 1
clear,close,clc

sx=1:6; %espaço de amostragem
px=ones(1,6)/6;

subplot(1,2,1)
stem(sx,px) %função massa probabilidade
title("função massa de probabilidade")
xlabel("x_i")
ylabel("px(x_i)")
%ax=axis
%ax(1)=0.5
%ax(2)=6.5
%ax(3)=-0.005
%axis(ax)
%axis([0.5 6.5 -0.005 0.2])

subplot(1,2,2)
x=-2:9 %eixo do x
px2=[0 0 0 px 0 0 0]
fx=cumsum(px2)
stairs(x,fx)
axis([-2.5 9.5 -0.005 1.1])

%% 2
clear,close,clc

sx=1:100; %espaço de amostragem
px1=90/100; %sair nota de 5
px2=9/100; %sair nota de 50
px3=1/100; %sair nota de 100

subplot(1,2,1)
px=ones(1,100)/100;
stem(sx,px)
title("função de massa de probabilidade")
xlabel("x_i")
ylabel("px(x_i)")


subplot(1,2,2)
x=[0 0 0 sx 0 0 0]
px2=[0 0 0 px 0 0 0]
fx=cumsum(px2)
stairs(x,fx)



%% 3 a)??????
clear,close,clc

s=[0 1 2 3 4]; 

p=0.5;
n=4;
N=1e5;
i=1;

for ncoroas=s
    P(i)=moedas(p,n,ncoroas,N);
    i=i+1;
end

figure(2)
stem(1:5,P)

%% 3 b)

ex=sum(s.*p)

%% 3 c)

ex2=s.^2*p'
var=ex2-ex^2

%% 3 d)

dp=sqrt(var)

%% 3 e)?????

%% 3 f)

%i
cond=s>=2
sum(p(cond))

%ii
cond=s<=1
sum(p(cond))

%iii
cond=1<=s<=3
sum(p(cond))

%% 4
clear,close,clc

p=0.3;
n=5;
s=0:n;
N=1e5;

for pdf=s
    p(i)=moedas(p,n,pdf,N);
    i=i+1
end

figure(2)
stem(5,p)

%% 6 a)
clear,close,clc

pDef=1/1000;
n=8000;
k=7;

d_bin=nchoosek(n,k) * pDef^k * (1-pDef)^(n-k)

%% 6 b)
clear,close,clc

k=7;
lambda=8000/1000;

ap=(lambda^k/factorial(k)) * exp(-lambda)

%% 7 a)
clear,close,clc

% 15 mensagens por  segundo
lambda=15;
k=0;

ap=(lambda^k/factorial(k)) * exp(-lambda)

%% 7 b)
clear,close,clc

lambda=15;
pnotb=0;

for k=0:10
    pnotb= pnotb + (lambda^k/factorial(k)) * exp(-lambda);
end

pb=1-pnotb

%% 8 
clear,close,clc

lambda= 0.02;
n=100;

p8=0;
for k=0:1
    p8= p8 + (lambda^k/factorial(k)) * exp(-lambda)
end

%% 9 a)
clear,close,clc


%media=14
%desvio=2
%randn(N,1) distribuicao normal de media 0 e desvio 1

N=1e4;

X= 2 * randn(N,1) + 14;

cf=sum(12<X & X<16);

p=cf/N


%% 9 b)
clear,close,clc

N=1e4;

X= 2 * randn(N,1) + 14;

cf=sum(10<X & X<18);

p=cf/N


%% 9 c)
clear,close,clc

N=1e4;

X= 2 * randn(N,1) + 14;

cf=sum(X>=10);

p=cf/N

%% 9 d)
clear,close,clc

%normcdf-funçao de detribuiçao normal acumulada
miu=14; %media
sigma=2; %variancia

f16=normcdf(16,miu,sigma); %prob de ser menor de 16
f12=normcdf(12,miu,sigma); %prob de ser menor de 12
pa=f16-f12

f18=normcdf(18,miu,sigma); %prob de ser menor de 18
f10=normcdf(10,miu,sigma); %prob de ser menor de 10
pb=f18-f10

f10=normcdf(10,miu,sigma); %prob de ser menor de 10
pc=1-f10 %prob de passarem
