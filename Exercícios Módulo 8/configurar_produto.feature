            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de qualquer produto a venda

            Esquema do Cenário: Adicionar ao carrinho
            Quando eu selecionar o <tamanho>, a <cor> e a <quantidade>
            E adicionar o produto ao carrinho
            Então o produto é adicionado ao carrinho com sucesso
            E o <tamanho>, a <cor> e a <quantidade> são os mesmos escolhidos por mim anteriormente

            Exemplos:
            | tamanho | cor        | quantidade |
            | "XS"    | "Azul"     | 1          |
            | "S"     | "Laranja"  | 5          |
            | "M"     | "Vermelho" | 7          |
            | "X"     | "Branco"   | 9          |
            | "XL"    | "Preto"    | 10         |

            Esquema do Cenário: Quantidade inválida
            Quando eu selecionar qualquer tamanho e cor
            E escolher a <quantidade_invalida>
            E adicionar o produto ao carrinho
            Então o produto não deve ser adicionado ao carrinho
            E uma mensagem de erro deve aparecer, informando para selecionar 10 produtos ou menos

            Exemplos:
            | quantidade_invalida |
            | 11                  |
            | 100                 |
            | 1000                |

            Cenário: Produto sem quantidade
            Quando eu selecionar qualquer tamanho e cor
            E tentar adicionar o produto no carrinho
            Então o produto não deve ser adicionado ao carrinho
            E uma mensagem de erro deve aparecer, informando para selecionar a quantidade

            Cenário: Produto sem tamanho
            Quando eu selecionar qualquer cor e uma quantidade válida
            E tentar adicionar o produto no carrinho
            Então o produto não deve ser adicionado ao carrinho
            E uma mensagem de erro deve aparecer, informando para selecionar um tamanho

            Cenário: Produto sem cor
            Quando eu selecionar qualquer tamanho e uma quantidade válida
            E tentar adicionar o produto no carrinho
            Então o produto não deve ser adicionado ao carrinho
            E uma mensagem de erro deve aparecer, informando para selecionar uma cor

            Cenário: Limpar
            Quando eu selecionar o tamanho, a cor e a quantidade
            E pressionar o botão de Limpar
            Então a seleção de tamanho, cor e quantidade devem retornar ao estado original