unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids;

type
  TForm1 = class(TForm)
    grdNumeros: TStringGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lblNegativos: TLabel;
    Button1: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  l,c,n:integer;
  x: Integer;
  nContador:integer;
  nSorteio:integer;
begin

  grdNumeros.RowCount := 100;
  grdNumeros.ColCount := 1;
  nContador:=0;
  for x := 1 to 100 do
  begin
    nSorteio := random( 100 ) - 50;
    grdNumeros.Cells[  0 , x-1 ] := inttostr( nSorteio );
    if nSorteio < 0 then inc( nContador );
  end;

  lblNegativos.Caption := inttostr( nContador );

end;

end.
