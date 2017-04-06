%Encontra um zero da funcao fx dentro do intervalo [a,b].
function raiz = metodoBissecao(fx,a,b,precisao)
    c = (a+b)/2;
    while(abs(subs(fx,c)) > precisao)
        if(subs(fx,c)*subs(fx,a)>0)
            a = c;
        else
            b = c;
        end
        c = (a+b)/2;
    end
    raiz = c;
end