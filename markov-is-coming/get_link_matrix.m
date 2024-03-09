function [Link] = get_link_matrix (Labyrinth)
	Link = get_adjacency_matrix(Labyrinth)
[m,n]=size(Link)


nr = 0;

    for i=1:m
      nr = 0;
      for j=1:n
        if Link(i,j) == 1
          nr++;
        endif
      endfor
      for j=1:n
          if nr!=0
            Link(i,j)=Link(i,j)/nr;
          endif
          if nr== 0
            Link(i,j) = 0;
          endif
      endfor
    endfor

    Link(m-1,m-1)=1
    Link(m,m) = 1
  
endfunction
