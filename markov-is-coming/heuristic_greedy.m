function [path] = heuristic_greedy(start_position, probabilities, Adj)
    [m,n] = size(Adj);
    path = zeros(m,1);
    vizitat = zeros(1,m);
    path(1,1) = start_position;
    k = 1;
    vizitat(1,start_position) = 1;
    pozitie = -1;
    
    while k > 0
        pozitie = path(k,1);
        if pozitie == m-1
            break;
        end
        vecin_maxim = -1;
        prob_maxima = -1;
        for i=1:n
            if Adj(pozitie,i) == 1 && vizitat(1,i) == 0
                if probabilities(i,1) > prob_maxima
                    vecin_maxim = i;
                    prob_maxima = probabilities(i,1);
                endif
            endif
        endfor
        if vecin_maxim == -1
            k--;
        else
            vecin = vecin_maxim;
            vizitat(1,vecin) = 1;
            k++;
            path(k,1) = vecin;
        endif
    endwhile
    path = resize(path,[k,1]);
endfunction