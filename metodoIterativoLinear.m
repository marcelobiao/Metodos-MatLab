%Metodo Iterativo Linear
function raiz = metodoIterativoLinear()
    %Definição Das Equacoes
    syms x;
    fx=(x^2)*sin(x)+cos(x);
    hx=sqrt(-cot(x));
    
    %Estimativa inicial
    x0=-2;
    
    %Criterio de parada
    precisao=0.001;
    Nmax=15;    
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