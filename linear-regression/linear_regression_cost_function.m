function [Error] = linear_regression_cost_function(Theta, Y, FeatureMatrix)
   Error = 0;
  [m,n] = size(FeatureMatrix);
  for i=1:m
    suma = 0;
    for j = 1:n
      suma = suma + Theta(j+1,1) * FeatureMatrix(i,j);
    endfor
      suma = suma - Y(i,1);
      suma = suma * suma;
      Error = Error + suma;
  endfor

  Error = Error / (2*m);
endfunction