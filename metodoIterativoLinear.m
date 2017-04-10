%f(x)= d(x)-x=0
%d(x)=x
function raiz = metodoIterativoLinear()
    fx=@(x)(x^2)*sin(x)+cos(x);
    hx=@(x)sqrt(-cot(x));
    
    x0=0.5;
    precisao=0.001;
    Nmax=20;
    
    i=0;
    while(true)
        x=subs(hx,x0);
        E=abs(x-x0);
        x0=x;
        i=i+1;
        
        fprintf('X: %f - E: %f - Itera��es:%d \n',x,E,i);
        if((E<=precisao) || (i>=Nmax))
            break;
        end
    end
    raiz = x;
end