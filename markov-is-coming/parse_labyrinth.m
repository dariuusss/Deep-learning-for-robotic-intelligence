function [Labyrinth] = parse_labyrinth(file_path)

fisier_de_citit = fopen(file_path,'r');
  m = 0;
  n = 0;
  m = fscanf(fisier_de_citit,'%d',1);
  n = fscanf(fisier_de_citit,'%d',1);
  Labyrinth = sparse(m,n);
  for i = 1:m
    for j = 1:n
      Labyrinth(i,j) = fscanf(fisier_de_citit,'%d',1);
    endfor
  endfor
  fclose(fisier_de_citit);

endfunction
