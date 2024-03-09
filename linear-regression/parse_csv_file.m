function [Y, InitialMatrix] = parse_csv_file(file_path)
  fisier_de_deschis = fopen(file_path,'r');
  tabel = textscan(fisier_de_deschis,'%s','Delimiter',',','HeaderLines',1);
  nr_elem = length(tabel{1});
  n = 12;
  m = nr_elem/13;
  InitialMatrix = cell(m,n);
  Y = zeros(m,1);
  for i=1:nr_elem
      linie = floor(i/13)+1;
      if mod(i,13) == 0
        linie--;
      endif
      if mod(i,13) == 1
        x = 0;
        poz = 1;
        sir = cell2mat(tabel{1}(i,1));
        distanta = 0;
        while poz <= length(sir)
        if(sir(poz) !='.')
           x = x * 10 + sir(poz) - 48 ;
           else
          distanta = length(sir)-poz;
          endif
           poz = poz + 1;
        endwhile
        Y(linie,1) = x / (10**distanta);
    else
        coloana = mod(i,13)-1;
        if mod(i,13) == 0
        coloana = 12;
      endif
      InitialMatrix(linie,coloana) = tabel{1}(i,1);
      endif
  endfor


  InitialMatrix = InitialMatrix(1:m, 1:n);
endfunction