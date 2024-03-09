function [FeatureMatrix] = prepare_for_regression(InitialMatrix)
  [m,n] = size(InitialMatrix);

  nr = 0;
  for j = 1:n
    if strcmp(InitialMatrix(1,j),"semi-furnished") || strcmp(InitialMatrix(1,j),"unfurnished") || strcmp(InitialMatrix(1,j),"furnished")
      nr = nr + 2;
    else
      nr = nr + 1;
    end
  endfor


  FeatureMatrix = rand(m,nr);
  for i=1:m

    j = 1;
    col = 1;
    while j<= n

      if strcmp(InitialMatrix(i,j),"yes")
        FeatureMatrix(i,col) = 1;
      elseif strcmp(InitialMatrix(i,j),"no")
        FeatureMatrix(i,col) = 0;
      elseif strcmp(InitialMatrix(i,j),"semi-furnished")
        FeatureMatrix(i,col) = 1;
        col++;
        FeatureMatrix(i,col) = 0;
      elseif strcmp(InitialMatrix(i,j),"unfurnished")
        FeatureMatrix(i,col) = 0;
        col++;
        FeatureMatrix(i,col) = 1;
      elseif strcmp(InitialMatrix(i,j),"furnished")
        FeatureMatrix(i,col) = 0;
        col++;
        FeatureMatrix(i,col) = 0;
      else
        x = 0;
        poz = 1;
        sir = cell2mat(InitialMatrix(i,j));
        distanta = 0;
        while poz <= length(sir)
        if(sir(poz) !='.')
           x = x * 10 + sir(poz) - 48 ;
           else
          distanta = length(sir)-poz;
          endif
           poz = poz + 1;
        endwhile
        FeatureMatrix(i,col) = x / (10**distanta);
      endif
      j++;
      col++;
    endwhile


  endfor
endfunction