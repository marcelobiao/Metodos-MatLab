%Metodo Iterativo Linear
function raiz = metodoIterativoLinear()
    %Definição Das Equacoes
    syms x;
    fx=(x^2)*sin(x)+cos(x);
    hx=asin(-cos(x)/(x^2));
            
    %Estimativa inicial
    x0=-1;
    
    %Criterio de parada
    precisao=0.001;
    Nmax=12;    
    i=0;        
    raiz=[];
    
    while(true)
        x=subs(hx,x0);
        E=abs(x-x0);
        x0=x;
        i=i+1;
       
        raiz=[raiz,x];
        fprintf('E: %f - x0: %.5f - I: %f\n',E, x0,i);
        if((E<=precisao) || (i>=Nmax))
            break;
        end
    end
end