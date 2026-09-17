# Resultados da Análise de Vendas

## Visão geral

A análise utiliza um banco de dados simulado com informações sobre clientes, produtos, pedidos e itens vendidos.

As consultas foram desenvolvidas para identificar o desempenho das categorias, o valor gasto pelos clientes e a distribuição mensal dos pedidos.

## Faturamento por categoria

| Categoria | Faturamento | Participação |
|---|---:|---:|
| Eletrônicos | R$ 6.000,00 | 75,95% |
| Acessórios | R$ 1.000,00 | 12,66% |
| Móveis | R$ 900,00 | 11,39% |
| **Total** | **R$ 7.900,00** | **100,00%** |

O faturamento total da base foi de **R$ 7.900,00**. A categoria de Eletrônicos respondeu por aproximadamente **75,95% desse valor**, representando a principal categoria de receita no período analisado.

## Total gasto por cliente

| Cliente | Total gasto | Participação |
|---|---:|---:|
| Ana Silva | R$ 4.800,00 | 60,76% |
| Bruno Costa | R$ 2.500,00 | 31,65% |
| Carla Mendes | R$ 600,00 | 7,59% |
| **Total** | **R$ 7.900,00** | **100,00%** |

Ana Silva apresentou o maior valor acumulado e foi a única cliente com mais de um pedido registrado.

Ana Silva e Bruno Costa concentraram juntos aproximadamente **92,41% do valor vendido**, indicando forte concentração da receita em poucos clientes dentro da base simulada.

Daniel Souza não aparece no resultado de compras porque não possui pedidos registrados.

## Pedidos por mês

| Mês | Pedidos |
|---|---:|
| Janeiro de 2023 | 2 |
| Fevereiro de 2023 | 2 |

O volume de pedidos permaneceu estável nos dois meses disponíveis. Entretanto, o período reduzido não permite identificar tendências ou sazonalidade.

## Implicações de negócio

- Eletrônicos representam a maior parcela do faturamento.
- A receita está concentrada principalmente em dois clientes.
- Clientes sem pedidos podem ser considerados em campanhas de ativação.
- A recorrência ainda é limitada, com apenas uma cliente realizando mais de uma compra.
- O curto período e o tamanho reduzido da base impedem conclusões sobre sazonalidade.

## Limitações

- A base é simulada e contém poucos registros.
- O período analisado compreende apenas dois meses.
- Não há informações sobre custos, descontos ou margem de lucro.
- Os resultados demonstram fundamentos de SQL e não representam um mercado real.