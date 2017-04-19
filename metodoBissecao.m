%Encontra um zero da funcao fx dentro do intervalo [a,b].
function raiz = metodoBissecao()
    syms x;
    fx=(x^2)*sin(x)+cos(x);
    a = -2;
    b = 2;
    
    precisao = 0.01;
    Nmax=15;
    
    raiz=[];
    i=0;
    while(true)
        c = (a+b)/2;
        
        if(subs(fx,c)*subs(fx,a)>0)
            a = c;
        else
            b = c;
        end   
        
        raiz=[raiz,c];
        i=i+1;
        if((abs(subs(fx,c))<=precisao) || (i>=Nmax))
            break;
        end
    end
end