# Como gerar um código genérico para um componente 

## 🚀 Introdução

## 🔧 Procedimento

Use o prefixo Sender, que é enviado como parâmetro. Por exemplo: suponha que você deseja tornar genérico um método que utiliza um componente TEdit chamado "MeuEdit"

Em vez de :

`` 
MeuEdit.Text := 'Valor';
`` 

Faça assim ;
`` 
TEdit(Sender).Text := 'Valor';
`` 

Onde TEdit é o tipo de componente e Sender é o parâmetro passado pelo método.

