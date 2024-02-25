%% 1 a)
clear, close, clc

T=[0.7 0.8; 0.3 0.2]

nfaltar=1;
faltar=2;
v0=[0 0]';
v0(nfaltar)=1;

v2=(T^2)*v0;
prob=v2(nfaltar)

%% 1 b)
clear, close, clc

T=[0.7 0.8; 0.3 0.2]

nfaltar=1;
faltar=2;
v0=[0 0]';
v0(faltar)=1

v2=(T^2)*v0;
prob=v2(nfaltar)

%% 1 c)
clear, close, clc

T=[0.7 0.8; 0.3 0.2]

nfaltar=1;
faltar=2;
v0=[0 0]';
v0(nfaltar)=1;

v29=(T^29)*v0;
prob=v29(nfaltar)

%% 1 d)
clear, close, clc

T=[0.7 0.8; 0.3 0.2]

nfaltar=1;
faltar=2;
v0=[0 0]';
v0(nfaltar)=0.85;
v0(faltar)=0.15;

for aula = 1:30
    vaula=(T^(aula-1))*v0;
    prob(aula)=vaula(faltar);
end

plot(1:30,prob)

%% 2
clear, close, clc

% a)

T=[ 1/3 1/4 0; 1/3 1-(1/4+1/5) 1/2; 1/3 1/5 1/2]
all(sum(T)==1)
all(sum(T>=0 & T<=1)/3)
% é uma matriz estocrástica pois a soma das colunas dá 1 e todas as
% entradas são nao negativas

% b)

v0=[60/90; 15/90; 15/90]

% c)

v30=(T^30)*v0;
nalunos=round(v30*90)

% d)

v0d=[1/3; 1/3; 1/3];
v30d=(T^30)*v0d;
nalunosd=round(90*v30d)

%% 3
clear, close, clc

% a)

T=zeros(20,20)

for i=1:20
    v=rand(20,1)
    v=v/sum(v)
    T(:,i)=v
end

abs(sum(T-1))<1e5
% assim a matriz é estocrástica

% b)

v0=zeros(20,1);
v0(1)=1;

v2=(T^2)*v0;
prob2=v2(20)*100

v5=(T^5)*v0;
prob5=v5(20)*100

v10=(T^10)*v0;
prob10=v10(20)*100

v100=(T^100)*v0;
prob100=v100(20)*100

%% 4
clear, close, clc

T=[0.4^2 0 0 0.6^2; (1-0.4)^2 0 0 0.6*(1-0.6); 0.4*(1-0.4) 0 0 0.6*(1-0.6);0.4*(1-0.4) 1 1 (1-0.6)^2];

x0=[1; 0; 0; 0];
x5=(T^5)*x0
x10=(T^10)*x0
x100=(T^100)*x0
x200=(T^200)*x0

M=[T-eye(4); ones(1,4)];
x=[zeros(4,1);1];
v=M\x

%% 6
clear, close, clc

%a)
num_estados=5;
T=zeros(num_estados);

%estados transitarios:1,2,4 estados absorventes:3,5
%T=[estados transitarios,estados absorventes; estados transitarios,estados
%absorventes]
%ordem 1, 2, 4, 3, 5

T(1,1)=0.8;
T(2,1)=0.2;

T(2,2)=0.6;
T(4,2)=0.3;
T(3,2)=0.1;

T(1,3)=0.3;
T(2,3)=0.2;
T(3,3)=0.4;
T(5,3)=0.1;

T(4,4)=1;

T(5,5)=1

%b)
x0=[1; 0; 0; 0; 0];
n=5;
N=100;
prob_estado2=zeros(N,1);

for iter=1:N
    vn=T^iter*x0;
    prob_estado2(iter)=vn(2);
end
plot(1:N, prob_estado2);
hold off
%c)
x0=[1; 0; 0; 0; 0];
n=5;
N=100;
prob_estado3=zeros(N,1);
prob_estado5=zeros(N,1);

for iter=1:N
    vn=T^iter*x0;
    prob_estado3(iter)=vn(4);
    prob_estado5(iter)=vn(5);
end
plot(1:N, prob_estado2);
hold on;
plot(1:N, prob_estado5);
hold off;

%d)
%matriz Q referente aos estados de transição
num_estados_trans=3;
Q=T(1:num_estados_trans,1:num_estados_trans)

%e)
%F=(I-Q)^-1
F=inv(eye(size(Q))-Q)

%f)
E=sum(F)
fprintf('nº de passos começando no estado 1: %f\n',E(1))
fprintf('nº de passos começando no estado 2: %f\n',E(2))
fprintf('nº de passos começando no estado 4: %f\n',E(3))

%g)
R=T(num_estados_trans+1:end,1:num_estados_trans);
B=R*F
%R representa dos estados 1 2 4 para 3 5, B é o mesmo
fprintf('prod de 1 para 3: %f\n',B(1,1))
fprintf('prob de 1 para 5: %f\n',B(2,1))

%% 7
clear,close,clc

%a)
H=[0 0 0 0 1/3 0; 
   1 0 0 0 1/3 0;
   0 1/2 0 1 0 0;
   0 0 1 0 0 0;
   0 1/2 0 0 0 0;
   0 0 0 0 1/3 0]

r=(ones(6,1)/6)

for i = 1:10
    r=H*r
end

%b)
%F é o dead-end e C<->D é uma spider trap


%c)
H(:,6)=ones(6,1)/6;

r=(ones(6,1)/6);

for i=1:10
    r=H*r;
end


%d)
b=0.8;
A=H*b + (1-b)*ones(length(H),length(H))/6;
r=(ones(6,1)/6);

for i=1:10
    r=A*r
end

%% e)
epsi=1e-4;
inter=0;
r=(ones(6,1)/6);
H=[0 0 0 0 1/3 0; 
   1 0 0 0 1/3 0;
   0 1/2 0 1 0 0;
   0 0 1 0 0 0;
   0 1/2 0 0 0 0;
   0 0 0 0 1/3 0];
H(:,6)=ones(6,1)/6;
b=0.8;
A=H*b + (1-b)*ones(length(H),length(H))/6;

while 1
    inter=inter+1;
    rold=r;
    r=A*r;
    if max(abs(r-rold))<epsi
        break;
    end
end

inter;

%% 1
clear, close, clc

H=[0.8 0 0.3 0 0;
   0.2 0.6 0.2 0 0;
   0 0.1 0.4 0 0;
   0 0.3 0 1 0;
   0 0 0.1 0 1];

N=1e5;
cf = zeros(1,5);

for i = 1:N
    state = crawl(H, 1, [4 5]);
    cf(state(end)) = cf(state(end))+1;
end

cf([4 5])

stem(cf)

p=cf([4 5])/N








