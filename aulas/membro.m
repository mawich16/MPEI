function r=membro(valor,BF,k)
%devove true se valor é provavelmente membro de BF

    %ciclo
    key=valor;
    r=true;
    %REPETIR para K funçoes do hash (diferentes)
    for i=1:k
        % passar elem para função hash_i, obtendo hash code
        key=[key,num2str(i)];
        hc=string2hash(key);
    
       % garantir que está dentro da "tabela"/array BF
        hc=mod(hc,n)+1;
    
       % colocar a 1 a posição hash de array : BF[hash code]=1
        BF(hc)=1;
        %obter hc
    
        %se for igual a 1 continuamos
        %caso contrario termina e nao pertence
        if BF(hc) ~= 1
            r=false;
            break
        end
    
end