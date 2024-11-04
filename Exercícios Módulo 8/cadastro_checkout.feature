            #language: pt

            Funcionalidade: Tela de Cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de autenticação da EBAC-SHOP

            Esquema do Cenário: Cadastro Válido
            Quando eu preencher os campos <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <email>
            E pressionar o botão de finalizar a compra
            Então os dados do faturamento são cadastrados com sucesso e a compra é finalizada

            Exemplos:
            | nome       | sobrenome   | pais     | endereco                                      | cidade       | cep         | telefone          | email                         |
            | "Carlos"   | "Silva"     | "Brasil" | "Rua Francisco Jacinto, 7"                    | "São Paulo"  | "03616-120" | "55 11 996638855" | "carlos_silva@gmail.com"      |
            | "Amanda"   | "Pereira"   | "Brasil" | "Rua Equador, 188"                            | "Campinas"   | "13040-098" | "55 11 988774455" | "amanda.pereira@yahoo.com.br" |
            | "Bernardo" | "O'Higgins" | "Chile"  | "Monseñor Nuncio Sótero Sanz de Villalba 115" | "Santiago"   | "N/A"       | "56 2 22708000"   | "higgins_bern@outlook.com"    |
            | "John"     | "Fynn"      | "EUA"    | "Forest Avenue, 1000"                         | "Birmingham" | "828-1098"  | "1 248 258 9400"  | "johnythefynn@hotmail.com"    |


            Esquema do Cenário: E-mail Inválido
            Quando eu preencher os campos <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <email>
            E pressionar o botão de finalizar a compra
            Então uma mensagem de erro informando que o e-mail é inválido deve ser exibida

            Exemplos:
            | nome       | sobrenome   | pais     | endereco                                      | cidade       | cep         | telefone          | email                |
            | "Carlos"   | "Silva"     | "Brasil" | "Rua Francisco Jacinto, 7"                    | "São Paulo"  | "03616-120" | "55 11 996638855" | ""                   |
            | "Amanda"   | "Pereira"   | "Brasil" | "Rua Equador, 188"                            | "Campinas"   | "13040-098" | "55 11 988774455" | "amanda.pereira"     |
            | "Bernardo" | "O'Higgins" | "Chile"  | "Monseñor Nuncio Sótero Sanz de Villalba 115" | "Santiago"   | "N/A"       | "56 2 22708000"   | "123456@outlook.com" |
            | "John"     | "Fynn"      | "EUA"    | "Forest Avenue, 1000"                         | "Birmingham" | "828-1098"  | "1 248 258 9400"  | "!@#$%@hotmail.com"  |

            Esquema do Cenário: Campos Vazios
            Quando eu preencher os campos <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <email>
            E pressionar o botão de finalizar a compra
            Então uma mensagem de erro informando que os campos obrigatórios devem ser preenchidos deve ser exibida

            Exemplos:
            | nome     | sobrenome | pais     | endereco                   | cidade      | cep         | telefone          | email                    |
            | ""       | "Silva"   | "Brasil" | "Rua Francisco Jacinto, 7" | "São Paulo" | "03616-120" | "55 11 996638855" | "carlos_silva@gmail.com" |
            | "Carlos" | ""        | "Brasil" | "Rua Francisco Jacinto, 7" | "São Paulo" | "03616-120" | "55 11 996638855" | "carlos_silva@gmail.com" |
            | "Carlos" | "Silva"   | ""       | "Rua Francisco Jacinto, 7" | "São Paulo" | "03616-120" | "55 11 996638855" | "carlos_silva@gmail.com" |
            | "Carlos" | "Silva"   | "Brasil" | ""                         | "São Paulo" | "03616-120" | "55 11 996638855" | "carlos_silva@gmail.com" |
            | "Carlos" | "Silva"   | "Brasil" | "Rua Francisco Jacinto, 7" | ""          | "03616-120" | "55 11 996638855" | "carlos_silva@gmail.com" |
            | "Carlos" | "Silva"   | "Brasil" | "Rua Francisco Jacinto, 7" | "São Paulo" | ""          | "55 11 996638855" | "carlos_silva@gmail.com" |
            | "Carlos" | "Silva"   | "Brasil" | "Rua Francisco Jacinto, 7" | "São Paulo" | "03616-120" | ""                | "carlos_silva@gmail.com" |
            | "Carlos" | "Silva"   | "Brasil" | "Rua Francisco Jacinto, 7" | "São Paulo" | "03616-120" | "55 11 996638855" | ""                       |