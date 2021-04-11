# Como gerar um código genérico para um componente 

## 🚀 Introdução

## 🔧 Procedimento

Use o prefixo Sender, que é enviado como parâmetro.

Em vez de :

`` 
MeuEdit.Text := 'Valor';
`` 

Faça assim ;
`` 
TEdit(Sender).Text := 'Valor';
`` 

