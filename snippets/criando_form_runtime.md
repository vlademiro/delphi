````
uses StdCtrls, Buttons;

 

function ObterNome(var Nome: string): boolean;

var

  Form: TForm; // Variável para o Form

  Edt : TEdit; // Variável para o Edit

begin

  Result := false; // Por padrão retorna false 

  // Cria o form

  Form := TForm.Create(Application);

  try

    // Altera algumas propriedades do Form

    Form.BorderStyle := bsDialog;

    Form.Caption  := 'Atenção';

    Form.Position := poScreenCenter;

    Form.Width    := 200;

    Form.Height   := 150;

    // Coloca um Label

    with TLabel.Create(Form) do

    begin

      Parent  := Form;

      Caption := 'Digite seu nome:';

      Left    := 10;

      Top     := 10;

    end;

    // Coloca o Edit

    Edt := TEdit.Create(Form);

    with Edt do

    begin

      Parent := Form;

      Left   := 10;

      Top    := 25;

      Width  := Form.ClientWidth - 20; // Ajusta o comprimento do Edit de acordo com a largura do form

    end;

    // Coloca o botão OK

    with TBitBtn.Create(Form) do

    begin

      Parent := Form;

      Left   := Form.ClientWidth - (Width * 2) - 20; // Posiciona de acordo com a largura do form

      Top    := 80;

      Kind   := bkOK;

    end;

    // Coloca o botão Cancel

    with TBitBtn.Create(Form) do

    begin

      Parent := Form;

      Left   := Form.ClientWidth - Width - 10;

      Top    := 80;

      Kind   := bkCancel;

    end;

    // Exibe o form e aguarda a ação do usuário. Se for OK...

    if Form.ShowModal = mrOK then

    begin

      Nome   := Edt.Text;

      Result := true;

    end;

  finally

    Form.Free;

  end;

end;

 

procedure TForm1.mlABtn1Click(Sender: TObject);

var

  S: string;

begin

  if ObterNome(S) then Caption := S;

end;
````

Observações

 

Os componentes Label, Edit (var Edt) e BitBtn's (botões) não são destruídos explicitamente 

(Componente.Free). Isto não é necessário, pois ao criá-los informei como proprietário o Form 

(ex: TLabel.Create(Form)). Neste caso, estes componentes são destruídos automaticamente ao 

destruir o Form (Form.Free). 

Fonte : http://www.help.market.com.br/delphi/form_-_criando_um_com_edit_e_b.htm
