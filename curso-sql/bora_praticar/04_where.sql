SELECT IdProduto, DescNomeProduto, DescCategoriaProduto

FROM produtos

WHERE DescNomeProduto IN ('Churn_10pp', 'Churn_2pp', 'Churn_5pp')

-- WHERE DescNomeProduto LIKE 'Churn%'

