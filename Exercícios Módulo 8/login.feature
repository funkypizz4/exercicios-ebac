            #language: pt

            Funcionalidade: Login na Plataforma
            Como cliente da EBAC-SHOP
            Quero fazer a autenticação na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação da EBAC-SHOP

            Esquema do Cenário: Múltiplos usuários válidos
            Quando eu digitar o <usuario>
            E digitar a <senha>
            Então eu devo ser direcionado para a tela de checkout

            Exemplos:
            | usuario                     | senha          |
            | "clienteEBAC@teste.com.br"  | "123456"       |
            | "ValidUsername"             | "aBcDeF"       |
            | "cliente.ebac@teste.com.br" | "!@#$%&""      |
            | "joao_silva@gmail.com"      | "H1r#`%]`Tr.(" |
            | "Carlos_Almeida"            | "nO1(?P,nT-xY" |

            Esquema do Cenário: Múltiplos usuários inválidos
            Quando eu digitar o <usuario>
            E digitar a <senha>
            Então a <mensagem> de erro deve ser exibida

            Exemplos:
            | usuario                     | senha          | mensagem                     |
            | "email_errado@teste.com.br" | "123456"       | "Usuário ou senha inválidos" |
            | "cliente_ebac@teste.com.br" | "senhaerrada"  | "Usuário ou senha inválidos" |
            | ""                          | "aBcDeF"       | "Usuário ou senha inválidos" |
            | "ValidUsername"             | ""             | "Usuário ou senha inválidos" |
            | "Invalid_Username"          | "nO1(?P,nT-xY" | "Usuário ou senha inválidos" |
            | "Carlos_Almeida"            | "senhaerrada"  | "Usuário ou senha inválidos" |