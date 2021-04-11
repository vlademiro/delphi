# Como gerar um código genérico para um componente 

## 🚀 Introdução

Quando queremos referenciar um componente através do código usamos uma nomenclatura semelhante ao exemplo a seguir:

``
NomeDoComponente.Propriedade := Valor
``

Mas as vezes queremos tornar o código genérico e evitar a digitação do nome do componente em questão. Como fazer ?


## 🔧 Procedimento

Use o prefixo Sender, que é enviado como parâmetro. Por exemplo: suponha que você deseja tornar genérico um método que utiliza um componente TEdit chamado "MeuEdit"

Em vez de :

`` 
MeuEdit.Text := 'Valor';
`` 

Faça assim :

`` 
TEdit(Sender).Text := 'Valor';
`` 

Onde TEdit é o tipo de componente e Sender é o parâmetro passado pelo método.

## :warning: Atenção

Esse procedimento é válido quando o método foi chamado pelo objeto em questão. 

Exemplo: ao clicar no botão btnGravar, o método correspondente onClick irá passar o Sender correspondente ao botão btnGravar.
