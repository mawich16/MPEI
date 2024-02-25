function hc = hf(key, n, type)
    switch type
        case 'sdbm'
            hc = mod(string2hash(key, 'sdbm') ,n);
        case 'djb2'
            hc = mod( string2hash(key, 'djb2'), n);
        case ' DJB31MA'
            hc = mod(DJB31MA(key, 0), n);
        otherwise
            hc = hashstring(key, n);
    end
end