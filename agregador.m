%Agrega os tres Metodos
function [raizBissecao, raizIteracao, raizNewton] = agregador()
    raizIteracao = metodoIterativoLinear();
    raizBissecao = metodoBissecao();
    raizNewton = metodoNewtonRapshon();
end