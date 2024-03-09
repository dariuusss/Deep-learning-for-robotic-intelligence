function [Y, InitialMatrix] = parse_data_set_file(file_path)
  fisier_de_citit = fopen(file_path,'r');
  m = fscanf(fisier_de_citit,'%d',1);
  n = fscanf(fisier_de_citit,'%d',1);
  InitialMatrix = cell(m,n);
  Y = rand(1,m);
  for i=1:m
    Y(1,i) = fscanf(fisier_de_citit,'%f',1);
    for j=1:n
      InitialMatrix(i,j) = fscanf(fisier_de_citit,'%s',1);
    endfor
  endfor
endfunction