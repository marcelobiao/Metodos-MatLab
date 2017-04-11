%f(x)= d(x)-x=0
%d(x)=x
function raiz = metodoIterativoLinear()
    syms x;
    fx=(x^2)*sin(x)+cos(x);
    hx=sqrt(-cot(x));
    
    x0=0.5;
    precisao=0.001;
    Nmax=20;
    
    i=0;        
    raiz=[];
    while(true)
        x=subs(hx,x0);
        E=abs(x-x0);
        x0=x;
        i=i+1;
       
        raiz=[raiz,x];
        if((E<=precisao) || (i>=Nmax))
            break;
        end
    end
end