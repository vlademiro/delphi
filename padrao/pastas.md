# Configuração de pastas do seu sistema

## Criação de pastas

1. Crie uma pasta chamada projeto no diretório raiz do sistema : `C:\projetos`
2. Dentro dessa pasta crie uma pasta para cada sistema. Por exemplo `C:\projetos\estoque`
3. Dentro da pasta do seu sistema (no nosso exemplo é a pasta `estoque`) crie a seguinte estrutura de sub-pastas :

````
Banco
   |
   +----- Dados   (se for firebird, ms-access ou qualquer banco que você tenha controle sobre o arquivo)
   +----- Script  (os scripts SQL)
Doc  (Documentação do sistema)
Executavel  (Onde ficará o executável)
Fonte   (Onde ficarão os fontes)
   |
   +----- Controller   (MVC)
   +----- DAO  (Data access objects)
   +----- Model   (MVC)
   +----- View  (MVC)

Imagem  (Imagens do sistema)
Projeto   (Onde ficarão os arquivos de projeto)
Temporario
````
*Lembre-se:* as pastas não tem acentos e nem espaços.

## No Delphi ou C++ Builder 

1. Crie o projeto novo.
2. Pressione Ctrl+Shift+F11 ou Vá no menu `Project -> Options` e selecione a opção `Delphi Compiler -> Compiling`.
3. Selecione , no combobox "Target", a opção "All configurations - All platforms".
4. Em "Output directory" selecione a pasta "Executavel".
5. Local onde os arquivos intermediários ficarão (os objs)
5.1. C++ Builder : Em "Intermediate output" selecione a pasta "Temporario" 
5.2. Delphi : Em "DCU output directory" selecione a pasta "Temporario"
6. Pronto, pode salvar as configurações

## Quando for salvar seus arquivos

1. Quando for salvar o seu projeto pela primeira vez selecione a pasta "Projeto"
2. Sempre que for salvar uma nova Unit salve-a na pasta "Fonte". Se estiver seguindo o padrão MVC crie as sub-pastas.

## Padrões de nomes

1. Para o seu projeto coloque o nome que você quer que saia no executável. Caso ache necessário, coloque o sufixo Prj (de projeto) e envie para o setor de testes assim. Quando validado o sufixo Prj pode ser retirado do nome do executável.
2. Para as Units sempre crie com o prefixo "U_", por exemplo "U_BaixaEstoque" (o sistema se encarregará das extensões). 

Ex: Se você tiver criado um formulário chamado FrmPrincipal você pode salvar como U_FrmPrincipal


## Fonte 

Organização das pastas : https://www.youtube.com/watch?v=yXu8-nFestw&list=PLr5fNRPNxagxdDomz-V5oVy9NQuDIGSLr&index=2
Configurando a ferramenta para salvar no local : https://www.youtube.com/watch?v=qvbfxUHqn1E&list=PLr5fNRPNxagxdDomz-V5oVy9NQuDIGSLr&index=3

