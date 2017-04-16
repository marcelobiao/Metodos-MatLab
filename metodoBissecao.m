%Encontra um zero da funcao fx dentro do intervalo [a,b].
function raiz = metodoBissecao()
    syms x;
    fx=(x^2)*sin(x)+cos(x);
    a = -2;
    b = 2;
    precisao = 0.01;
    
    raiz=[];
    while(true)
        c = (a+b)/2;
        
        if(subs(fx,c)*subs(fx,a)>0)
            a = c;
        else
            b = c;
        end   
        
        raiz=[raiz,c];
        if((abs(subs(fx,c))<=precisao))
            break;
        end
    end
end