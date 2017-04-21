%Agrega os tres Metodos
function [raizBissecao, raizIteracao, raizNewton] = agregador()
    %Executando metodos
    fprintf('IterativoLinear\n');
    raizIteracao = metodoIterativoLinear();
    fprintf('Bissecao\n');
    raizBissecao = metodoBissecao();
    fprintf('NewtonRaphson\n');
    raizNewton = metodoNewtonRaphson();
    
    %Tabela das raizes
    %TODO: Arrumar raizes na tabela
    fprintf('new\n');
    fprintf('RaizLi: %f\n',raizIteracao);
    fprintf('new\n');
    fprintf('RaizBi: %f\n',raizBissecao);
    fprintf('new\n');
    fprintf('RaizNewtonRaphson: %f\n',raizNewton);
end