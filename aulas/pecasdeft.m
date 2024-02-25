function [prob] = pecasdeft(p,npecas,pecasdef,N)

rpecas=rand(npecas,N)>p;
def=sum(rpecas)==pecasdef;
prob=sum(def)/N
end