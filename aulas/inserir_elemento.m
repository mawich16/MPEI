function BF=inserir_elemento(elem,BF,k)
    % inserir elem no BF, usando k funções de hash
    n=length(BF);
    %REPETIR para K funçoes do hash (diferentes)
    key=elem;
    for i=1:k
        % passar elem para função hash_i, obtendo hash code
        key=[key num2str(i)];
        hc=hf(key,length(BF),'sdbm')+1;
    
       % colocar a 1 a posição hash de array : BF[hash code]=1
        BF(hc)=1;
    end
end
