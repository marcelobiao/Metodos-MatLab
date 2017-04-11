%
function raiz = metodoNewtonRaphson()
    syms x(y);
    fx=(x^2)*sin(x)+cos(x);
    dfx=functionalDerivative(fx,x);
    %TODO: Arrumar derivada
    
    x0=0.5;
    precisao=0.001;
    Nmax=20;
    
    i=0;
    while(true)
        x=x0 - (subs(fx,x0)/subs(dfx,x0));
        E=abs(x-x0);
        x0=x;
        i=i+1;
        
        if((E<=precisao) || (subs(fx,x)<=precisao) || (i>=Nmax))
            break;
        end
    end
    raiz = x;
end