function cellarray = randomStrings(N,minchar,maxchar,char)
    cellarray = cell(N,1);

    for i=1:N
        
        size = randi([minchar,maxchar]);

        str = string(char(randi([1 length(char)], 1, size)));

        cellarray{i} = str; 

    end

end