function [x, err, steps] = perform_iterative (G, c, x0, tol, max_steps)
	steps = 1;
  ultim = x0;
  curent = G*ultim+c;
  eroare_curenta = norm(curent-ultim,2);
  while steps <= max_steps && eroare_curenta >= tol
    ultim = curent;
    curent = G*ultim+c;
    steps++;
    eroare_curenta = norm(curent-ultim,2);
  endwhile

  x = curent;
  err = eroare_curenta;
   
endfunction
