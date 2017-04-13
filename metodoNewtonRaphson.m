%
function raiz = metodoNewtonRaphson()
    syms x;
    fx=(x^2)*sin(x)+cos(x);
    dfx=diff(fx,x);

    %TODO: Arrumar derivada
    
    x0=-1;
    precisao=0.001;
    Nmax=20;
    
    i=0;
    raiz=[];
    while(true)
        x=x0-(subs(fx,x0)/subs(dfx,x0));
        E=abs(x-x0);
        x0=x;
        i=i+1;
        
        raiz=[raiz,x];
        if((E<=precisao) || (i>=Nmax))
            break;
        end
    end
end