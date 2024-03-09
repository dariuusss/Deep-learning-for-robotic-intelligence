function [Error] = lasso_regression_cost_function(Theta, Y, FeatureMatrix, lambda)
   Error = 0;
 suma = 0;
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

  Error = Error / m;

  suma = 0;

  for i=1:n
    suma = suma + abs(Theta(i+1,1));
  endfor
  Error = Error + lambda*suma;
endfunction