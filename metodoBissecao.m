%Metodo Bissecao
function raiz = metodoBissecao()
    %Defini��o Das Equacoes
    syms x;
    fx=(x^2)*sin(x)+cos(x);
    
    %Estimativa inicial
    a=-1;
    b=1;
    
    %Criterio de parada
    precisao=0.01;
    Nmax=12;    
    i=0;
    
    %Saida
    raiz=[];
    
    while(true)
        c=(a+b)/2;
        
        if(subs(fx,c)*subs(fx,a)>0)
            a=c;
        else
            b=c;
        end   
        
        raiz=[raiz,c];
        i=i+1;
        fprintf('I: %d; \tx0: %.5f; \tSepara��o: %.5f\n',i,c,abs(a-b));
        if((abs(a-b)<=precisao) || (i>=Nmax))
            break;
        end
    end
end