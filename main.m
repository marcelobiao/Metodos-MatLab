fprintf('IterativoLinear\n');
raizIterativoLinear = metodoIterativoLinear();
fprintf('Bissecao\n');
raizBissecao = metodoBissecao();
fprintf('NewtonRaphson\n');
raizNewtonRaphson = metodoNewtonRaphson();

fprintf('new\n');
fprintf('RaizLi: %f\n',raizIterativoLinear);
fprintf('new\n');
fprintf('RaizBi: %f\n',raizBissecao);
fprintf('new\n');
fprintf('RaizNewtonRaphson: %f\n',raizNewtonRaphson);