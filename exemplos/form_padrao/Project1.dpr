program Project1;

uses
  Vcl.Forms,
  U_DM in 'U_DM.pas' {DM: TDataModule},
  U_Principal in 'U_Principal.pas' {frmPrincipal},
  U_FormBaseCRUD in 'U_FormBaseCRUD.pas' {frmBaseCRUD},
  U_FormEmployee in 'U_FormEmployee.pas' {frmEmployee};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
