function [Theta] = gradient_descent(FeatureMatrix, Y, n, m, alpha, iter)
   Error = 0;
  [m,n] = size(FeatureMatrix);
  delta  = zeros(n,1);
  Theta = zeros(n+1,1);
  for k=1:n



    for i=1:m
    suma = 0;
    for j = 1:n
      suma = suma + Theta(j+1,1) * FeatureMatrix(i,j);
    endfor
      delta(k,1) = delta(k,1) + (suma - Y(i,1))*FeatureMatrix(i,k);
  endfor

    delta(k,1) = delta(k,1)/m;



  endfor

  steps = 1;
  while steps <= iter
    for i=1:n
      Theta(i+1,1) = Theta(i+1,1) - alpha*delta(i,1);
    endfor
    steps++;
  endwhile
endfunction