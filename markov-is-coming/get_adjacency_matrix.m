function [Adj] = get_adjacency_matrix (Labyrinth)
[m,n] = size(Labyrinth);

 Adj = sparse(m*n+2,m*n+2);
 Adj(m*n+1,m*n+1)=1;
 Adj(m*n+2,m*n+2)=1;




 for j=2:n-1
      a = floor(Labyrinth(1,j)/8)
      b = floor(Labyrinth(1,j)/4)
      c = floor(Labyrinth(1,j)/2)
      d = floor(Labyrinth(1,j)/1)
      if mod(a,2) == 0
        Adj(j,m*n+1) = 1
      endif

      if mod(b,2) == 0
        Adj(j,n+j) =1
      endif

      if mod(c,2) == 0
        Adj(j,j+1) = 1
      endif

      if mod(d,2) == 0
        Adj(j,j-1) = 1
      endif

endfor



for j=2:n-1
      a = floor(Labyrinth(m,j)/8)
      b = floor(Labyrinth(m,j)/4)
      c = floor(Labyrinth(m,j)/2)
      d = floor(Labyrinth(m,j)/1)

      if mod(a,2) == 0
        Adj((m-1)*n+j,(m-2)*n+j) = 1
      endif

      if mod(b,2) == 0
        Adj( (m-1)*n+j,m*n+1) = 1
      endif

      if mod(c,2) == 0
        Adj( (m-1)*n+j,(m-1)*n+j+1) = 1
      endif

      if mod(d,2) == 0
        Adj( (m-1)*n+j,(m-1)*n+j-1) = 1
      endif

 endfor



for i=2:m-1
  a = floor(Labyrinth(i,1)/8)
  b = floor(Labyrinth(i,1)/4)
  c = floor(Labyrinth(i,1)/2)
  d = floor(Labyrinth(i,1)/1)


  if mod(a,2) == 0
    Adj( (i-1)*n+1, (i-2)*n+1) = 1
  endif

  if mod(b,2) == 0
    Adj( (i-1)*n+1, i*n+1) = 1
  endif

  if mod(c,2) == 0
    Adj( (i-1)*n+1, (i-1)*n+2) = 1
  endif

  if mod(d,2) == 0
    Adj( (i-1)*n+1, m*n+2) = 1
  endif

 endfor



  for i=2:m-1
  a = floor(Labyrinth(i,n)/8)
  b = floor(Labyrinth(i,n)/4)
  c = floor(Labyrinth(i,n)/2)
  d = floor(Labyrinth(i,n)/1)

  if mod(a,2) == 0
    Adj( (i-1)*n+n,(i-2)*n+n) = 1
  endif

  if mod(b,2) == 0
    Adj( (i-1)*n+n,i*n+n) = 1
  endif

  if mod(c,2) == 0
    Adj( (i-1)*n+n,m*n+2) = 1
  endif

  if mod(d,2) == 0
    Adj(  (i-1)*n+n,(i-1)*n+n-1) = 1
  endif

endfor


  a = floor(Labyrinth(1,1)/8)
  b = floor(Labyrinth(1,1)/4)
  c = floor(Labyrinth(1,1)/2)
  d = floor(Labyrinth(1,1)/1)

  if mod(a,2) == 0
    Adj(1,m*n+1) = 1
  endif

  if mod(b,2) == 0
    Adj(1,n+1) = 1
  endif

  if mod(c,2) == 0
    Adj(1,2) = 1
  endif

  if mod(d,2) == 0
    Adj(1,m*n+2) = 1
  endif



  a = floor(Labyrinth(1,n)/8)
  b = floor(Labyrinth(1,n)/4)
  c = floor(Labyrinth(1,n)/2)
  d = floor(Labyrinth(1,n)/1)

  if mod(a,2) == 0
    Adj(n,m*n+1) = 1
  endif

  if mod(b,2) == 0
    Adj(n,n+n) = 1
  endif

  if mod(c,2) == 0
    Adj(n,m*n+2) = 1
  endif

  if mod(d,2) == 0
    Adj(n,n-1) = 1
  endif



  a = floor(Labyrinth(m,1)/8)
  b = floor(Labyrinth(m,1)/4)
  c = floor(Labyrinth(m,1)/2)
  d = floor(Labyrinth(m,1)/1)

  if mod(a,2) == 0
    Adj( (m-1)*n+1,(m-2)*n+1) = 1
  endif

  if mod(b,2) == 0
    Adj( (m-1)*n+1,m*n+1) = 1
  endif

  if mod(c,2) == 0
    Adj( (m-1)*n+1,(m-1)*n+2) = 1
  endif

  if mod(d,2) == 0
    Adj( (m-1)*n+1,m*n+2) = 1
  endif


  a = floor(Labyrinth(m,n)/8)
  b = floor(Labyrinth(m,n)/4)
  c = floor(Labyrinth(m,n)/2)
  d = floor(Labyrinth(m,n)/1)

  if mod(a,2) == 0
    Adj( (m-1)*n+n,(m-2)*n+n) = 1
  endif

  if mod(b,2) == 0
    Adj( (m-1)*n+n,m*n+1) = 1
  endif

  if mod(c,2) == 0
    Adj( (m-1)*n+n,m*n+2) = 1
  endif

  if mod(d,2) == 0
    Adj( (m-1)*n+n,(m-1)*n+n-1) = 1
  endif



  for i=2:m-1
    for j=2:n-1
    a = floor(Labyrinth(i,j)/8)
    b = floor(Labyrinth(i,j)/4)
    c = floor(Labyrinth(i,j)/2)
    d = floor(Labyrinth(i,j)/1)

    if mod(a,2) == 0
      Adj( (i-1)*n+j,(i-2)*n+j) = 1
    endif

    if mod(b,2) == 0
      Adj( (i-1)*n+j,i*n+j) = 1
    endif

    if mod(c,2) == 0
      Adj( (i-1)*n+j,(i-1)*n+j+1) = 1
    endif

    if mod(d,2) == 0
      Adj( (i-1)*n+j,(i-1)*n+j-1) = 1
    endif



    endfor
  endfor
  
endfunction
