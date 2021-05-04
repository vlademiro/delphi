unit U_FormBaseCRUD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmBaseCRUD = class(TForm)
    pnlBase: TPanel;
    pgcPrincipal: TPageControl;
    TabLista: TTabSheet;
    TabForm: TTabSheet;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnGravar: TBitBtn;
    btnSair: TBitBtn;
    dtsPrincipal: TDataSource;
    grdPrincipal: TDBGrid;
    pnlBusca: TPanel;
    qryPrincipal: TFDQuery;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSairClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    bCarregouComSucesso:boolean;
    sMensagemDeErro:string;
    procedure AtivarModoForm;
    procedure AtivarModoLista;
  end;

var
  frmBaseCRUD: TfrmBaseCRUD;

implementation

{$R *.dfm}

uses U_DM;


{ TfrmBaseCRUD }

procedure TfrmBaseCRUD.AtivarModoForm;
begin
  TabLista.TabVisible := false;
  TabForm.TabVisible := true;
  pgcPrincipal.ActivePage := (TabForm);

  btnIncluir.Visible := false;
  btnAlterar.Visible := false;
  btnExcluir.Visible := false;
  btnGravar.Visible := true;
  btnCancelar.Visible := true;
end;

procedure TfrmBaseCRUD.AtivarModoLista;
begin
  TabLista.TabVisible := true;
  TabForm.TabVisible := false;
  pgcPrincipal.ActivePage := (TabLista);

  btnIncluir.Visible := true;
  btnAlterar.Visible := true;
  btnExcluir.Visible := true;
  btnGravar.Visible := false;
  btnCancelar.Visible := false;

end;

procedure TfrmBaseCRUD.btnAlterarClick(Sender: TObject);
begin
  try
    qryPrincipal.Edit;
    AtivarModoForm;
  except
    on E: exception do
      messagedlg( E.Message , mtError, [mbOk] , 0 );
  end;
end;

procedure TfrmBaseCRUD.btnCancelarClick(Sender: TObject);
begin

  try
    qryPrincipal.Cancel;
    AtivarModoLista;
  except
    on E: exception do
      messagedlg( E.Message , mtError, [mbOk] , 0 );
  end;

end;

procedure TfrmBaseCRUD.btnExcluirClick(Sender: TObject);
begin

  try
    qryPrincipal.Delete;
  except
    on E: exception do
      messagedlg( E.Message , mtError, [mbOk] , 0 );
  end;

end;

procedure TfrmBaseCRUD.btnGravarClick(Sender: TObject);
begin

  try
    qryPrincipal.Refresh;
    AtivarModoLista;
  except
    on E: exception do
      messagedlg( E.Message , mtError, [mbOk] , 0 );
  end;

end;

procedure TfrmBaseCRUD.btnIncluirClick(Sender: TObject);
begin

  try
    qryPrincipal.Insert;
    AtivarModoForm;
  except
    on E: exception do
      messagedlg( E.Message , mtError, [mbOk] , 0 );
  end;

end;

procedure TfrmBaseCRUD.btnSairClick(Sender: TObject);
begin

  try
    qryPrincipal.Close;
  except
    on E: exception do
      messagedlg( E.Message , mtError, [mbOk] , 0 );
  end;
  Close;

end;

procedure TfrmBaseCRUD.FormCreate(Sender: TObject);
begin
{
Tive que criar esses atributos
        sMensagemDeErro
        bCarregouComSucesso
Para poder retornar a rotina chamadora porque aqui ele nao permite fechar
o formulario.
}
  try
    try
      bCarregouComSucesso := true;
      sMensagemDeErro := 're';
      qryPrincipal.Open;
      AtivarModoLista;
    except
      on E: exception do
      begin
        sMensagemDeErro := E.Message;
        bCarregouComSucesso := false;
      end;
    end;
  finally
    // Não consigo fechar o formulario
  end;

{
  try
    try
      qryPrincipal.Open;
      AtivarModoLista;
    except
      on E: exception do
      begin
        messagedlg( E.Message , mtError, [mbOk] , 0 );
        abort;
      end;
    end;
  finally
    // Não consigo fechar o formulario
  end;
 }
end;

procedure TfrmBaseCRUD.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then begin
    Key := #0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

end.
