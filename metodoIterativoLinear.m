function raiz = metodoIterativoLinear()
    %Definição Das Equações
    syms x;
    fx=(x^2)*sin(x)+cos(x);
    hx=sqrt(-cot(x));
    
    %Estimativa inicial
    x0=-1;
    
    %Critério de parada
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
        fprintf('E: %f - x0: %f - I: %f\n',E, x0,i);
        if((E<=precisao) || (i>=Nmax))
            break;
        end
    end
end