# Como gerar um código genérico para um componente 

## 🚀 Introdução

## 🔧 Procedimento

Use o prefixo Sender, que é enviado como parâmetro.

Em vez de :

``delphi
MeuEdit.Text := 'Valor';
```

Faça assim ;
``delphi
TEdit(Sender).Text := 'Valor';
```

 
