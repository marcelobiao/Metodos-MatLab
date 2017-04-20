%f(x)= d(x)-x=0
%d(x)=x
function raiz = metodoIterativoLinear()
    syms x;
    fx=(x^2)*sin(x)+cos(x);
    
    %hx=sqrt(-cot(x));
    %(csc^2(x))/(2 sqrt(-cot(x)))
    
    hx=asin(-cos(x)/(x^2));
    %-(-(2 cos(x))/x^3 - (sin(x))/x^2)/sqrt(1 - (cos^2(x))/x^4)
    %TODO:Checar 

    %hx=acos((-(x^2)*sin(x)));
    %-(-x^2 cos(x) - 2 x sin(x))/sqrt(1 - x^4 sin^2(x))
    
    %hx=(-cot(x)/x);
    %(cot(x) + x csc^2(x))/x^2
    
    x0=-6;
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