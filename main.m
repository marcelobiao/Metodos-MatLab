fx = (x^5) + (x^3) - 3*(x^2);
a = -3;
b = 4;
precisao = 0.00001;
raiz = metodoBissecao(fx,a,b,precisao);
fprintf('Raiz: %f\n',raiz);