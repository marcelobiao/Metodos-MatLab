%Encontra um zero da funcao fx dentro do intervalo [a,b].
%f(x)= d(x)-x=0
%d(x)=x
%disp
function raiz = metodoIterativoLinear()
    fx=@(x)(x^2)*sin(x)+cos(x);
    dx=@(x)sqrt(-cot(x));
    
    
    x0=0.5;
    precisao=0.001;
    Nmax=6;
    
    i=0;
    while(true)
        x=subs(dx,x0);
        E=abs(x-x0);
        x0=x;
        i=i+1;
        
        fprintf('X: %f - E: %f - Iterações:%d \n',x,E,i);
        if((E<=precisao) || (i>=Nmax))
            break;
        end
    end
    fprintf('Raiz: %f - Iterações:%d \n',x,i);
    raiz = x;
end