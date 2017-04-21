function raiz = metodoNewtonRaphson()
    %Definição Das Equações
    syms x;
    fx=(x^2)*sin(x)+cos(x);
    dfx=diff(fx,x);
    
    %Estimativa inicial
    x0=-1;
    
    %Critério de parada
    precisao=0.001;
    Nmax=15;
    i=0;
    raiz=[];
    
    while(true)
        x=x0-(subs(fx,x0)/subs(dfx,x0));
        E=abs(x-x0);
        x0=x;
        i=i+1;
        
        raiz=[raiz,x];
        fprintf('E: %f - x0: %f - I: %f\n',E, x0,i);
        if((E<=precisao) || (i>=Nmax))
            break;
        end
    end
end