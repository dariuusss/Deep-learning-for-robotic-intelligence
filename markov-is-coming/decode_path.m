function [decoded_path] = decode_path(path, lines, cols)
	
    [m,n] = size(path);
    m--;
    decoded_path = zeros(m,2);
    for i=1:m
        element = path(i,1);
        coloana = mod(element,cols);
        if coloana == 0
        coloana = cols;
        endif 
    linie = (element-coloana)/cols+1;
    decoded_path(i,1) = linie;
    decoded_path(i,2) = coloana;
    endfor


endfunction