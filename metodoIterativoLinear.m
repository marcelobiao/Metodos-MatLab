%f(x)= d(x)-x=0
%d(x)=x
function raiz = metodoIterativoLinear()
    syms x;
    fx=(x^2)*sin(x)+cos(x);
    %hx=sqrt(-cot(x));
    %hx=asin(-cos(x)/(x^2));
    %hx=-cos(x)/(x*sin(x));
    %hx=acos(-(x^2)*sin(x));
    
    x0=3;
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
        fprintf('E: %f - x0: %f - I: %f\n',E, x0,i);
        if((E<=precisao) || (i>=Nmax))
            break;
        end
    end
end