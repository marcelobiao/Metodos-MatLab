%Agrega os três métodos
function [raizBissecao, raizIteracao, raizNewton] = agregador()
    
    
    i=0;
    while(true)
        x=subs(hx,x0);
        E=abs(x-x0);
        x0=x;
        i=i+1;
        
        fprintf('X: %f - E: %f - Iterações:%d \n',x,E,i);
        if((E<=precisao) || (i>=Nmax))
            break;
        end
    end
    raiz = x;
end