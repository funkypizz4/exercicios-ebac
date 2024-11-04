            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de qualquer produto a venda

            Esquema do Cenário: Adicionar ao carrinho
            Quando eu selecionar o <tamanho>, <cor>, <quantidade> e adicionar o produto ao carrinho
            Então o produto é adicionado ao carrinho com sucesso

            Exemplos:
            | tamanho | cor        | quantidade |
            | "XS"    | "Azul"     | 1          |
            | "S"     | "Laranja"  | 5          |
            | "M"     | "Vermelho" | 7          |
            | "X"     | "Branco"   | 9          |
            | "XL"    | "Preto"    | 10         |

            Esquema do Cenário: Quantidade inválida
            Quando eu preencher uma <quantidade_invalida> e adicionar o produto ao carrinho
            Então uma mensagem de erro deve aparecer, informando para selecionar 10 produtos ou menos

            Exemplos:
            | quantidade_invalida |
            | 11                  |
            | 100                 |
            | 1000                |

            Cenário: Produto sem quantidade
            Quando eu preencher todos os campos menos quantidade e adicionar o produto no carrinho
            Então uma mensagem de erro deve aparecer, informando para selecionar a quantidade

            Cenário: Produto sem tamanho
            Quando eu preencher todos os campos menos tamanho e adicionar o produto no carrinho
            Então uma mensagem de erro deve aparecer, informando para selecionar um tamanho

            Cenário: Produto sem cor
            Quando eu preencher todos os campos menos cor e adicionar o produto no carrinho
            Então uma mensagem de erro deve aparecer, informando para selecionar uma cor

            Cenário: Limpar
            Quando eu preencher todos os campos e pressionar o botão de Limpar
            Então todos os campos devem retornar ao estado original