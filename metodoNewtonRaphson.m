%Metodo Newton Raphson
function raiz = metodoNewtonRaphson()
    %Definição Das Equacoes
    syms x;
    fx=(x^2)*sin(x)+cos(x);
    dfx=diff(fx,x);
    
    %Estimativa inicial
    x0=-1;
    
    %Criterio de parada
    precisao=0.001;
    Nmax=12;
    i=0;
    
    %Saida
    raiz=[];
    
    while(true)
        x=x0-(subs(fx,x0)/subs(dfx,x0));
        E=abs(x-x0);
        x0=x;
        i=i+1;
        
        raiz=[raiz,x];
        fprintf('I: %d; \tx0: %.5f; \tE: %.5f\n',i,x0,E);
        if((E<=precisao) || (i>=Nmax))
            break;
        end
    end
end