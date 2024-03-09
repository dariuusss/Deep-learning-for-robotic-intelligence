function [Theta] = normal_equation(FeatureMatrix, Y, tol, iter)
 
  [m,n] = size(FeatureMatrix);
  Theta = zeros(n,1);
  if (!(isdefinite(FeatureMatrix'*FeatureMatrix)))
    Theta = [0;Theta];
    return;
  endif
  r = ((FeatureMatrix')*Y) - ((FeatureMatrix')*FeatureMatrix) * Theta;
  v = r;
  tol_squared = tol*tol;
  k=1;
  r_ant = r;
  s = 0;
  t = 0;
  while k < iter && (r')*r > tol_squared 

  t = ((r')*r)/((v')*((FeatureMatrix')*FeatureMatrix)*v);
  Theta = Theta + t*v;
  r = r_ant - t*((FeatureMatrix')*FeatureMatrix)*v;
  s = (  (r')*r )/(  (r_ant')*r_ant   );
  r_ant = r;
  v = r + s*v;
  k++;
  endwhile
  Theta = resize(Theta,[n+1,1]);
    Theta(2 :n+1,1) = Theta(1:n,1);
  Theta(1,1) = 0;

endfunction