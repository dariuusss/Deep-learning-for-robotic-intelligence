function [G, c] = get_Jacobi_parameters (Link)
	[m,n] = size(Link);
G = sparse(m-2,n-2);
c = sparse(1,n-2);

G = Link(1:m-2,1:n-2);
c = Link(1:m-2,n-1);

endfunction
