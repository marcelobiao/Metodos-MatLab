%Metodo Bissecao
function raiz = metodoBissecao()
    %Definição Das Equacoes
    syms x;
    fx=(x^2)*sin(x)+cos(x);
    
    %Estimativa inicial
    a=-1;
    b=1;
    
    %Criterio de parada
    precisao=0.01;
    Nmax=15;    
    raiz=[];
    i=0;
    
    while(true)
        c=(a+b)/2;
        
        if(subs(fx,c)*subs(fx,a)>0)
            a=c;
        else
            b=c;
        end   
        
        raiz=[raiz,c];
        i=i+1;
        fprintf('E: %f - c: %f - I: %f\n',abs(subs(fx,c)), c,i);
        if((abs(subs(fx,c))<=precisao) || (i>=Nmax))
            break;
        end
    end
end