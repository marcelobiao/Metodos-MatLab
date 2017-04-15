# Métodos Numéricos

Elabore um script em MATLAB para realizar a comparação dos seguintes métodos
iterativos para obtenção de raízes de uma equação:
- Método da Bisseção
- Método Iterativo Linear (MIL)
- Método de Newton-Raphson (Tangente)

A equação é a seguinte:

[Imagem]

Para o Método da Bisseção, realize iterações até que a amplitude do intervalo de separação seja menor que (10^-2). Para os demais métodos faça iterações até que o erro absoluto seja menor que (10^-3), ou seja, o critério de parada é |x_(i+1) − x_i | ≤ (10^-3).

Trabalhe com arredondamento padrão de 5 casas decimais. Esboce o gráfico da função e mostre no console ou na tela uma tabela comparativa dos três métodos e os valores a cada iteração até a parada de cada método.