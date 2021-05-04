unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    mnuPrincipal: TMainMenu;
    Cadastro1: TMenuItem;
    Employee1: TMenuItem;
    procedure Employee1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses U_FormEmployee;

procedure TfrmPrincipal.Employee1Click(Sender: TObject);
begin

  try
    frmEmployee := TFrmEmployee.create ( application );
    if frmEmployee.bCarregouComSucesso then
       frmEmployee.Showmodal
    else
       messagedlg( frmEmployee.sMensagemDeErro , mtError, [mbOk] , 0 );

  finally
    frmEmployee.Release;
    frmEmployee := nil;
  end;

end;

end.
