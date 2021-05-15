
````
procedure TFrmProcesso.btnAlterarClick(Sender: TObject);
var
  FrmClass : TFormClass;
  Frm : TForm;
begin

  {Finalidade : Criar o Formulário pelo Nome}

  try
    RegisterClass(TFrmColeta);
    FrmClass := TFormClass(FindClass('TFrmColeta'));
    Frm      := FrmClass.Create(Application);
    Frm.ShowModal;

  except

    on E: EClassNotFound do
    begin
      ShowMessage('Classe não encontrada. ' +#13+
                  E.Message +#13+
                  '- Possivelmente a mesma não foi registrada.'+#13+
                  '- Possivelmente a mesma não existe no projeto');
    end;

  end;
end;
````

Fonte : https://www.devmedia.com.br/quick-tip-criar-form-a-partir-de-uma-string-parte-2/15722
