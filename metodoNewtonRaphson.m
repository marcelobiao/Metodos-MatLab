%f
function raiz = metodoNewtonRaphson()
    fx=@(x)(x^2)*sin(x)+cos(x);
    %dfx=Calcular derivada de fx;
    
    %x0=Definir;
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